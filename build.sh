#!/usr/bin/env bash
set -Eeuo pipefail
shopt -s inherit_errexit 2>/dev/null || true

# ==================== 颜色定义 ====================
BLUE="\033[34m"
YELLOW="\033[33m"
RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"
RESET="\033[0m"

info() {
    echo -e "${BLUE}[INFO] $*${RESET}";
}
warn() {
    echo -e "${YELLOW}[WARN] $*${RESET}";
}
error() {
    echo -e "${RED}[ERROR] $*${RESET}";
}
done_msg() {
    echo -e "${GREEN}[DONE] $*${RESET}";
}
confirm() {
    local reply
    echo -en "${CYAN}[CONFIRM] $1：${RESET}" > /dev/tty
    read -r reply < /dev/tty || true
    echo "$reply"
}

# ==================== 基础路径 ====================
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOOLS_DIR="$ROOT_DIR/tools"
BUILD_DIR="$ROOT_DIR/build"
FULL_DIR="$ROOT_DIR/full"
LITE_DIR="$ROOT_DIR/lite"

# ==================== OS 判断 ====================
case "$(uname -s)" in
  Linux*)  PACKWIZ="$TOOLS_DIR/packwiz-linux" ;;
  Darwin*) PACKWIZ="$TOOLS_DIR/packwiz-macos" ;;
  *) error "不支持的操作系统。"; exit 1 ;;
esac

[[ -x "$PACKWIZ" ]] || { error "Packwiz 不可执行: $PACKWIZ"; exit 1; }

# ==================== 工具函数 ====================
read_pack_name() {
    local pack_toml="$1"
    local name version
    name=$(grep '^name *= *"' "$pack_toml" | sed 's/.*"\(.*\)"/\1/')
    version=$(grep '^version *= *"' "$pack_toml" | sed 's/.*"\(.*\)"/\1/')
    printf "%s_%s" "$name" "$version"
}

prepare_build_dir() {
    local out_file="$1"
    if [[ ! -d "$BUILD_DIR" ]]; then
        info "检测到目标目录不存在，正在创建。"
        mkdir -p "$BUILD_DIR"
    else
        info "检测到目标目录已存在，开始构建。"
    fi

    if [[ -f "$BUILD_DIR/$out_file.mrpack" ]]; then
        local choice
        choice=$(confirm "文件 $out_file.mrpack 已存在，是否删除并继续？[y/N]")
        case "$choice" in
            [Yy]*) info "删除已存在文件"; rm -f "$BUILD_DIR/$out_file.mrpack" ;;
            *) error "目录内有同名文件，构建已取消"; exit 1 ;;
        esac
    fi
}

build_pack() {
    local label="$1"
    local dir="$2"
    local pack_toml="$dir/pack.toml"

    [[ -f "$pack_toml" ]] || { error "找不到 $pack_toml"; return 1; }

    local out
    out=$(read_pack_name "$pack_toml")

    prepare_build_dir "$out"

    info "开始构建 $label 客户端..."
    "$PACKWIZ" --pack-file "$pack_toml" modrinth export --output "$BUILD_DIR/$out.mrpack"
    done_msg "构建完成，文件名: $out.mrpack"
}

clean_build() {
    info "开始清理 build 目录..."
    rm -rf "$BUILD_DIR"/*
    done_msg "build 目录已清理完成"
}

# ==================== 菜单 ====================
echo "====== Packwiz 构建脚本 ======"
echo "1) 构建 Full 客户端"
echo "2) 构建 Lite 客户端"
echo "3) 全部构建（Full → Lite）"
echo "4) 清理构建目录"
echo "5) 退出"

choice=$(confirm "请选择操作" || echo "")

# ==================== 行为映射 ====================
case "$choice" in
    1) build_pack "Full" "$FULL_DIR" ;;
    2) build_pack "Lite" "$LITE_DIR" ;;
    3) build_pack "Full" "$FULL_DIR"; build_pack "Lite" "$LITE_DIR" ;;
    4) clean_build ;;
    5) exit_script ;;
    *) warn "无效选项。" ;;
esac