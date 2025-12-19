Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# ==================== 颜色函数 ====================
function InfoMsg($msg)  { Write-Host "[INFO] $msg" -ForegroundColor Blue }
function WarnMsg($msg)  { Write-Host "[WARN] $msg" -ForegroundColor Yellow }
function ErrorMsg($msg) { Write-Host "[ERROR] $msg" -ForegroundColor Red }
function DoneMsg($msg)  { Write-Host "[DONE] $msg" -ForegroundColor Green }

# ==================== 基础路径 ====================
$RootDir  = Split-Path -Parent $MyInvocation.MyCommand.Path
$ToolsDir = Join-Path $RootDir 'tools'
$BuildDir = Join-Path $RootDir 'build'
$FullDir  = Join-Path $RootDir 'full'
$LiteDir  = Join-Path $RootDir 'lite'

# ==================== OS 判断 ====================
if ($IsWindows) { $Packwiz = Join-Path $ToolsDir 'packwiz-windows.exe' }
elseif ($IsLinux) { $Packwiz = Join-Path $ToolsDir 'packwiz-linux' }
elseif ($IsMacOS) { $Packwiz = Join-Path $ToolsDir 'packwiz-macos' }
else { throw (ErrorMsg '不支持的操作系统。') }

if (-not (Test-Path $Packwiz)) { throw (ErrorMsg "Packwiz 不存在。") }

# ==================== 工具函数 ====================
function Get-PackName {
    param([string]$PackToml)
    $Name    = (Select-String '^name\s*=' $PackToml).Line.Split('"')[1]
    $Version = (Select-String '^version\s*=' $PackToml).Line.Split('"')[1]
    "$Name`_$Version"
}

function Prepare-BuildDir {
    param([string]$OutName)

    if (-not (Test-Path $BuildDir)) {
        InfoMsg "检测到目标目录不存在，正在创建。"
        New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null
    }
    else {
        InfoMsg "检测到目标目录已存在，开始构建。"
    }

    $TargetFile = Join-Path $BuildDir "$OutName.mrpack"
    if (Test-Path $TargetFile) {
        $choice = Read-Host (WarnMsg "文件 $OutName.mrpack 已存在，是否删除并继续？[y/N]")
        if ($choice -match '^[Yy]$') { InfoMsg "删除已存在文件"; Remove-Item $TargetFile -Force }
        else { ErrorMsg "目录内有同名文件，请清除后再试！"; exit 1 }
    }
}

function Build-Pack {
    param([string]$Label, [string]$Dir)

    $PackToml = Join-Path $Dir 'pack.toml'
    if (-not (Test-Path $PackToml)) { throw (ErrorMsg "找不到 $PackToml") }

    $OutName = Get-PackName $PackToml
    Prepare-BuildDir $OutName

    InfoMsg "开始构建 $Label 客户端..."
    & $Packwiz --pack-file $PackToml modrinth export --output (Join-Path $BuildDir "$OutName.mrpack")
    DoneMsg "构建完成，文件名: $OutName.mrpack"
}

function Clean-Build {
    InfoMsg '开始清理 build 目录...'
    if (Test-Path $BuildDir) { Remove-Item "$BuildDir\*" -Recurse -Force -ErrorAction SilentlyContinue }
    DoneMsg "build 目录已清理完成"
}

# ==================== 行为映射 ====================
$Actions = @{
    1 = { Build-Pack 'Full' $FullDir }
    2 = { Build-Pack 'Lite' $LiteDir }
    3 = { Build-Pack 'Full' $FullDir; Build-Pack 'Lite' $LiteDir }
    4 = { Clean-Build }
    5 = { exit }
}

# ==================== 菜单 ====================
Write-Host "====== Packwiz 构建脚本 ======"
Write-Host '1) 构建 Full 客户端'
Write-Host '2) 构建 Lite 客户端'
Write-Host '3) 全部构建（Full → Lite）'
Write-Host '4) 清理构建目录'
Write-Host '5) 退出'

$Choice = Read-Host '请选择操作'

if ($Actions.ContainsKey([int]$Choice)) {
    & $Actions[[int]$Choice]
} else {
    WarnMsg '无效选项。'
}
