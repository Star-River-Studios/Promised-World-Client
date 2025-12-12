# 应许之世 - 客户端更新日志

## 版本号说明

本版本号专指 **「应许之世」客户端整合包** 的版本，采用 **语义化版本（SemVer 2.0.0）** 格式，并附加项目与构建信息：
版本号结构：`MAJOR.MINOR.PATCH(-PRERELEASE)+pw.YYYYMMDD`
其中：

- **`MAJOR`**：主版本号
  → 当发生**地图数据重置**或**模组加载器升级**时递增。
  → 此类变更会导致**旧客户端无法连接或加载存档**。

- **`MINOR`**：次版本号
  → 当**新增需客户端同步更新的内容**时递增，例如：
    - 新增或更新模组列表
    - 新增或更新 TACZ 枪械包
  → **此类变更将导致旧客户端无法连接服务器**，必须更新整合包。

- **`PATCH`**：修补版本号
  → 仅用于以下情况：
    - 修复或调整纯客户端内容（如光影包、材质包、配置）
  → 玩家**可选择性更新**，不影响连接。

- **`-PRERELEASE`**（可选）：预发布标识（如 `beta.1`）；无此后缀即为正式版。
- **`+pw.YYYYMMDD`**：构建元数据，标识项目（Promised World）与发布日期，**不影响版本排序**。

> 🔄 **版本号归零规则（SemVer 标准）**
> - 当 `MAJOR` 递增时（如世界重置、NeoForge 升级）→ `MINOR = 0`，`PATCH = 0`
> - 当 `MINOR` 递增时（如新增模组、新数据包功能）→ `PATCH = 0`
> - `PATCH` 递增时（如修复、优化、资源更新）→ 不重置任何字段
>
> 这确保每个新功能版本都从“干净的修补计数”开始。

### 示例
- `1.0.0-beta.1+pw.20251108` 表示：
  - 主版本号：1
  - 次版本号：0
  - 修补版本号：0
  - 预发布类型：Beta 第 1 版
  - 项目：Promised World（应许之世）
  - 构建日期：2025 年 11 月 08 日

- `2.1.3+pw.20260315` 表示：
  - 主版本号：2
  - 次版本号：1
  - 修补版本号：3
  - 预发布类型：正式版（无 `-xxx` 后缀）
  - 项目：Promised World（应许之世）
  - 构建日期：2026 年 3 月 15 日

## 更新模板
```markdown
# 🌍 应许之世 vMAJOR.MINOR.PATCH(-PRERELEASE)+pw.YYYYMMDD

> 📅 发布日期：YYYY-MM-DD
> ⚠️ Beta 版警告

## 🛠️ 更新介绍
（占位）

## 🔧 分发标准

- 采用 **Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划（Project Many Stars）」** 下属服务器客户端的统一规范

## 📋 变更说明

### 🌐 服务器线路变更
- ➕ **新增**
  - （占位）
- 🗑️ **删除**
  - （占位）
- 🔄 **更新**
  - （占位）

### ⚙️ 技术栈变更
- ➕ **新增**
  - （占位）
- 🗑️ **删除**
  - （占位）
- 🔄 **更新**
  - （占位）

### 📦 模组变更
- ➕ **新增**
  - （占位）
  - **前置模组**
    - （占位）
- 🗑️ **删除**
  - （占位）
  - **前置模组**
    - （占位）
- 🔄 **更新**
  - （占位）
  - **前置模组**
    - （占位）

### 🎨 资源变更
- ➕ **新增**
  - （占位）
- 🗑️ **删除**
  - （占位）
- 🔄 **更新**
  - （占位）

### 📃 配置变更
- ➕ **新增**
  - （占位）
- 🗑️ **删除**
  - （占位）
- 🔄 **更新**
  - （占位）

## 📚 使用指南
详细系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
（占位）
```

---

## 更新记录

# 🌍 应许之世 v1.0.0-beta.1+pw.20251103

> 📅 发布日期：2025-11-03
> ⚠️ 此为 **Beta** 测试版本，可能存在兼容性问题，欢迎反馈！

## 🛠️ 更新介绍
这是「应许之世」服务器的**首个客户端版本**，同时也是「繁星计划（Project Many Stars）」下属服务器的**标准化客户端起点**。

## 🔧 分发标准

- 采用**Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划」** 下属服务器客户端的统一规范，未来所有服务器客户端将遵循此标准

## 📋 变更说明
此为初始版本，无历史变更记录。

## 📚 使用指南

详细的系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区

- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎来到本服务器，你的探索与反馈将塑造它的未来！

---

# 🌍 应许之世 v1.0.0-beta.2+pw.20251104

> 📅 发布日期：2025-11-04
> ⚠️ 此为 **Beta** 测试版本，可能存在兼容性问题，欢迎反馈！

## 🛠️ 更新介绍
在本次更新中，我们删除了部分负面反馈较多的模组，并添加了一些新的玩法扩展方面的模组。
除此之外，我们还对模组进行了一次更新。
详细变更见下方**变更说明**。

## 🔧 分发标准
- 采用**Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划」** 下属服务器客户端的统一规范，未来所有服务器客户端将遵循此标准

## 📋 变更说明

### 📦 模组变更
- ➕ **新增**
  - WorldEdit CUI（创世神范围显示）（客户端）
  - Magic From The East（中亚魔法）
  - General Feedback（通用意见反馈）（客户端）
  - Better Than Mending（更好的经验修补）
  - StarbuncleMania（魔艺科技）
  - Ars Additions（魔艺扩展）
  - Ars Elemental（元素魔艺）
  - Beltborne Lanterns（腰间灯笼）
  - OMNI Cells（OMNI 存储元件）
  - Extreme Reactors（极限反应堆）
  - **前置模组**
    - ZeroCore
- 🗑️ **删除**
  - Tough As Nails（意志坚定）
  - Serene Seasons（静谧四季）
  - Everything is Copper（万物皆铜）
  - **前置模组**
    - Rhino
- 🔄 **更新**
  - Just Enough Items（物品管理器）
  - Little Big Redstone（集成红石电路）

## 📚 使用指南
详细的系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v1.0.0-beta.3+pw.20251105

> 📅 发布日期：2025-11-05
> ⚠️ 此为 **Beta** 测试版本，可能存在兼容性问题，欢迎反馈！

## 🛠️ 更新介绍
在本次更新中，我们发现了`Cutting Delight（高级砧板）`模组存在恶性BUG，因此在本次更新中删除了这个模组，并添加了一些新的玩法扩展方面的模组。
除此之外，我们还对模组进行了一次更新。
详细变更见下方**变更说明**。

## 🔧 分发标准

- 采用**Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划」** 下属服务器客户端的统一规范，未来所有服务器客户端将遵循此标准

## 📋 变更说明

### 📦 模组变更
- ➕ **新增**
  - Labelling Containers（标签打印机）
  - Bedspreads（床单）
  - Status Effect Bars Reforged（药水状态条）（客户端）
  - **前置模组**
    - Fast Config API
    - Void Lib
- 🗑️ **删除**
  - Cutting Delight（高级砧板）
- 🔄 **更新**
  - Ars Elemental（元素魔艺）
  - Enchantment Level Language Patch（附魔等级语言补丁）（客户端）

## 📚 使用指南
详细的系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v1.0.0+pw.20251108

> 📅 发布日期：2025-11-08

## 🛠️ 更新介绍
从本次更新起，「应许之世」结束内部测试阶段，**正式对外开放**！
感谢以下测试人员的积极参与和宝贵反馈：

- North_Sensei
- CleMooling | 木之清泠
- D4C_000 | 淺野瞳
- Jump_fish | 跳跳鱼
- awuguai | 啊呜乖
- free_cat_eating | 傻猫只会吃

本次更新引入了 **Create（机械动力）及其大量附属模组**，并新增若干 TACZ 枪械扩展包。至此，服务器核心模组体系已基本定型，**预计在相当长一段时间内将不再进行大规模模组增删**。
此外，我们对现有模组与资源文件进行了全面更新，并移除了部分过时内容。详细变更见下方 **变更说明**。

## 🔧 分发标准
- 采用**Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划」** 下属服务器客户端的统一规范，未来所有服务器客户端将遵循此标准

## 📋 变更说明
### 🌐 服务器线路变更
- ➕ **新增**
  - 中国香港线路

### 📦 模组变更
- ➕ **新增**
  - Create（机械动力）
  - Create: Diesel Generators（机械动力：柴油动力）
  - Create: Hypertubes（机械动力：超级管道）
  - Create: Central Kitchen（机械动力：中央厨房）
  - Create: Integrated Farming（机械动力：集成农业）
  - More Create Burners（机械动力：更多燃烧室）
  - Create Stock Bridge（机械动力：应用能源2扩展）
  - Create: Delivery Director（包裹地址重写器）
  - Sophisticated Backpacks Create Integration（机械动力：精妙背包扩展）
  - Create: Mobile Packages（机械动力：无人机物流）
  - Create: Cardboarded Conveynience（机械动力：藏藏包）
  - Create: Extra Gauges（机械动力：扩展仪表板）
  - Sophisticated Storage Create Integration（机械动力：精妙存储扩展）
  - Create: Enchantment Industry（机械动力：附魔工业）
  - Create: Garnished（机械动力：装食）
  - Create: Smart Bounds（机械动力：渲染边界优化）（客户端）
  - Applied Schematicannon（应用蓝图炮）
  - Create More: Parallel Pipes（机械动力：平行管道）
  - Create: CC Total Logistics（机械动力：CC全面物流）
  - Create: Northstar - Redux（机械动力：太空）
  - Create Crafts & Additions（机械动力：物品附加）
  - Create: Deep Dark（机械动力：深暗之域）
  - Create: New Age（机械动力：电气时代）
  - Create: Food（机械动力：食物扩展）
  - Create: Schematic Checker（机械动力：蓝图检查器）
  - Create Nuclear（机械动力：原子核动）
  - **前置模组**
    - Create: Dragons Plus
- 🔄 **更新**
  - Applied Experienced（经验存储元件）
  - Fright's Delight（云端之乐）
  - Rustic Delight（乡村乐事）

### 🎨 资源变更
- ➕ **新增**
  - Immersive Armorer（沉浸军械师扩展包）（TACZ扩展包）
  - Create Armorer（机动军械师扩展包）（TACZ扩展包）
- 🗑️ **删除**
  - classics reborn（经典重铸扩展包）（TACZ扩展包）
- 🔄 **更新**
  - Blue Archive super gun pack（碧蓝档案扩展包）（TACZ扩展包）

## 📚 使用指南
详细的系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v1.0.1+pw.20251108

> 📅 发布日期：2025-11-08

## 🛠️ 更新介绍
在本次更新中，我们发现了由`Create: Northstar - Redux（机械动力：太空）`模组引起的恶性BUG，会导致服务器崩溃。因此在本次更新中针对此BUG进行修复。
详细变更见下方 **变更说明**。

## 🔧 分发标准
- 采用**Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划」** 下属服务器客户端的统一规范，未来所有服务器客户端将遵循此标准

## 📋 变更说明

### 📦 模组变更
- 🗑️ **删除**
  - Create: Northstar - Redux（机械动力：太空）

## 📚 使用指南
详细的系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v2.0.0+pw.20251119

> 📅 发布日期：2025-11-19

## 🛠️ 更新介绍
「应许之世」正式迈入 **v2.0 时代**！本次更新标志着项目核心架构与体验标准的全面升级：

- ✅ - ✅ **NeoForge 加载器升级至 `21.1.215`**，提升稳定性与模组兼容性
- 🔒 自本版本起，启用 **新版版本号规则**，确保客户端更新提示更精准

> 💡 **版本机制说明**：自 v2.0 起，任何模组或绑定资源（如 TACZ 枪械包）的变更将触发 `MINOR` 版本递增；仅纯客户端资源调整归为 `PATCH`。

## 🔧 分发标准
- 采用 **Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划（Project Many Stars）」** 下属服务器客户端的统一规范

## 📋 变更说明

### 🌐 服务器线路变更
- ➕ **新增**
  - 新加坡线路
- 🗑️ **删除**
  - 日本线路

### ⚙️ 技术栈变更
- 🔄 **更新**
  - NeoForge 模组加载器

### 📦 模组变更
- ➕ **新增**
  - Ars Creo（魔艺动力）
  - CC:C Bridge（机械动力：CC桥接）
  - Create: Applied Kinetics（机械动力：应用动力学）
  - Create: Fishery Industry（机械动力：渔业）
  - Create: Meta Logistics（机械动力：元物流）
  - Create: More Pipes n' Things（机械动力：更多管道）
  - Create: Ornithopter Glider（机械动力：滑翔机）
  - Create Regex（机械动力：正则表达式）
  - Cutting Delight（高级砧板）
  - EMI（物品管理器）
  - Cursors Extended（光标扩展）（客户端）
  - More Immersive Wires（更多沉浸式线缆）
  - Tofu Create（机械动力：豆腐动力）
  - VersionerReborn（整合包版本检查工具）（客户端）
  - **前置模组**
    - Caelus API
    - Load My F***ing Tags
- 🗑️ **删除**
  - ReForgedPlay [replay mod on (neo)forge]（录像回放）（客户端）
- 🔄 **更新**
  - Applied Pneumatics（应用能源2：气动工艺扩展）
  - Ars Elemental（元素魔艺）
  - Create: Central Kitchen（机械动力：中央厨房）
  - Create: Enchantment Industry（机械动力：附魔工业）
  - Create: Garnished（机械动力：装食）
  - Create: Integrated Farming（机械动力：集成农业）
  - Create Stock Bridge（机械动力：存储桥接）
  - Create Nuclear（机械动力：原子核动）
  - Create:Schematic Checker（机械动力：蓝图检查器）
  - Enchantment Level Language Patch（附魔等级语言补丁）（客户端）
  - Eternal Starlight（永恒星光）
  - FancyToasts（更好的成就提示）（客户端）
  - Just Enough Items（物品管理器）
  - Kaleidoscope Cookery（森罗物语：厨房）
  - [Let's Do] Vinery（葡园酒香）
  - Little Big Redstone（集成红石电路）
  - Net Music Mod（网络音乐机）
  - PacketFixer（数据包大小优化）
  - ProjectRed Core（红石计划）
  - ProjectRed Expansion（红石计划：机械）
  - ProjectRed Exploration（红石计划：探索）
  - ProjectRed Fabrication（红石计划：制作）
  - ProjectRed Illumination（红石计划：照明）
  - ProjectRed Integration（红石计划：集成）
  - ProjectRed Transmission（红石计划：传导）
  - Save My Shit Network（禁用模组联网）
  - Starbunclemania（魔艺科技）
  - Timeless & Classics Guns: Zero（永恒枪械工坊：零-非官方版）
  - **前置模组**
    - Bagus Lib
    - Create: Dragons Plus
    - Tesseract API

## 📚 使用指南
详细系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v2.1.0+pw.20251122

> 📅 发布日期：2025-11-22

## 🛠️ 更新介绍
在本次更新中，我们删除了饱受诟病的`Immersive Melodies（沉浸式奏乐）`模组，同时我们还添加了几个新的模组。
除此之外还添加了一个光标资源，并对现有模组进行了一次更新。

## 🔧 分发标准

- 采用 **Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划（Project Many Stars）」** 下属服务器客户端的统一规范

## 📋 变更说明

### 📦 模组变更
- ➕ **新增**
  - Plasmo Voice（等离子语音）（客户端）
  - pv-addon-groups（语音分组）（客户端）
  - Create: Threaded Trains（机械动力：铁路网性能优化）
  - Create: Filters Anywhere（机械动力：过滤器增强）
  - Tom's Simple Storage Mod（汤姆的简易存储）
  - Create Contraption Terminals（机械动力：动态终端）
- 🗑️ **删除**
  - Immersive Melodies（沉浸式奏乐）
- 🔄 **更新**
  - Delight o' Flight（云端之乐）
  - Create Hypertube'（机械动力：超级管道）
  - Super Factory Manager（超级工厂管理器）

### 🎨 资源变更
- ➕ **新增**
  - Bedrock-Style Cursors（材质包-游戏内鼠标光标包）

## 📚 使用指南
详细系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v3.0.0-beta.1+pw.20251208

> 📅 发布日期：2025-12-08
> ⚠️ 此为 **Beta** 测试版本，可能存在兼容性问题，欢迎反馈！

## 🛠️ 更新介绍
在本次更新中，我们对NeoForge加载器进行了升级。并对服务端底层做出了一些改动。
除此之外，我们还对模组列表进行了一次修改。具体内容请查看下面的变更说明。

> 💡通知：从本次更新开始，模组生存服将更换底层为标准NeoForge+SpongeNeo。部分功能（如/tpa等）将会缺失，请耐心等待后续项目组在社区中的通知。

## 🔧 分发标准

- 采用 **Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划（Project Many Stars）」** 下属服务器客户端的统一规范

## 📋 变更说明

### ⚙️ 技术栈变更
- 🔄 **更新**
  - NeoForge 模组加载器

### 📦 模组变更
- ➕ **新增**
  - Create: Additional Logistics（机械动力：物流附加）
  - Enchantment Descriptions（附魔描述）（客户端）
  - ExtendedAE（AE2扩展）
  - ExtendedAE Plus（AE2扩展+）
  - GTBC's Spellbooks - Iron's Spells Addon（GTBC的铁魔法扩展）
  - Lightman's Currency（莱特曼的货币）
  - Lightman's Currency Tech（莱特曼的货币科技）
  - MaidUseHandCrank（女仆摇曲柄）
  - Majo's Spell Enchantment（魔女的魔咒）
  - Man of Many Planes（机械动力主题飞机）
  - More Enchants（更多附魔）
  - Nature's Aura（自然灵气）
  - Create: Numismatics（机械动力：钱币学）
  - Psi（魔法编程）
  - Reactive Alchemy（反应炼金术）
  - Realm RPG: Treasure Balloons（宝箱热气球）
  - Roots Classic（根源魔法经典版）
  - Spell Elemental（元素反应）
  - Touhou Little Maid: Spell（车万女仆：万法皆通）
  - Touhou Little Maid（车万女仆）
  - 前置模组
    - Bookshelf
    - GTBC's SpellLib/API
    - Prickle
- 🗑️ **删除**
  - Ars Additions（魔艺扩展）
  - Ars Creo（魔艺动力）
  - Ars Elemental（元素魔艺）
  - Ars Énergistique（应用能源2：新生魔艺扩展）
  - Ars Nouveau（新生魔艺）
  - Ars Nouveau's Flavors & Delight（新生乐事）
  - Beltborne Lanterns（腰间灯笼）
  - LambDynamicLights（Lambd的动态光源）
  - Starbunclemania（魔艺科技）
  - 前置模组
    - GlitchCore
- 🔄 **更新**
  - Applied Energistics 2 Wireless Terminals（AE2无线终端）
  - Applied Experienced（经验存储元件）
  - Applied Pneumatics（应用能源2：气动工艺扩展）
  - Butchery（沉浸式屠宰）
  - Chunks fade in（区块淡入动画）（客户端）
  - Configured（配置界面）
  - Create: Deep Dark（机械动力：深暗之域）
  - Create: Integrated Farming（机械动力：集成农业）
  - Create: Meta Logistics（机械动力：元物流）
  - Create Crafts & Additions（机械动力：物品附加）
  - Cutting Delight（高级砧板）
  - Eternal Starlight（永恒星光）
  - Fancy Toasts | Better Advancements（更好的成就提示）
  - Iron's Spells 'n Spellbooks（Iron的法术与魔法书）
  - Just Enough Items (JEI)（物品管理器）
  - Just Enough Effect Descriptions (JEED)（JEI药水效果信息）
  - Little Big Redstone（集成红石电路）
  - Net Music: Play List（网络音乐机：播放列表）
  - Net Music（网络音乐机）
  - Project Red Core（红石计划）
  - Project Red Expansion（红石计划：机械）
  - Project Red Exploration（红石计划：探索）
  - Project Red Fabrication（红石计划：制作）
  - Project Red Illumination（红石计划：照明）
  - Project Red Integration（红石计划：集成）
  - Project Red Transmission（红石计划：传导）
  - Scholar（书籍体验增强）
  - Save My Shaky Network（禁用模组联网）
  - Sophisticated Storage（精妙存储）
  - Super Factory Manager（超级工厂管理器）
  - TaCZ 1.21.1 NeoForge Port（永恒枪械工坊：零-非官方版）
  - Tofu Create（机械动力：豆腐动力）
  - TofuCraftReload（豆腐工艺重制版）
  - Tom's Simple Storage Mod（汤姆的简易存储）
  - 前置模组
    - CB Multipart
    - CodeChicken Lib
    - Framework
    - Tesseract API

### 🎨 资源变更
- ➕ **新增**
  - Mellow（光影包）

## 📚 使用指南
详细系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！

---

# 🌍 应许之世 v3.0.0-beta.2+pw.20251212

> 📅 发布日期：2025-12-12
> ⚠️ 此为 **Beta** 测试版本，可能存在兼容性问题，欢迎反馈！

## 🛠️ 更新介绍
在本次更新中，我们删除了残留的新生魔艺的附属资源，并添加了一个新的TACZ扩展包和一个新模组。
由于近期CurseForge API无法正常访问，因此本次更新没有对现有模组进行更新。待CurseForge API恢复正常访问后再进行更新。

## 🔧 分发标准

- 采用 **Modrinth 整合包格式**（后缀为 `.mrpack` 的压缩文件）进行分发
- 所有资源（模组、材质包、光影、枪械包等）由 **Packwiz** 统一管理
- 此为 **「繁星计划（Project Many Stars）」** 下属服务器客户端的统一规范

## 📋 变更说明

### 📦 模组变更
- ➕ **新增**
  - Hamsters（仓鼠）

### 🎨 资源变更
- ➕ **新增**
  - Hell Divers2 Gun Pack（地狱潜兵扩展包）（TACZ扩展包）
- 🗑️ **删除**
  - Ars Armorer（魔艺军械师扩展包）（TACZ扩展包）

## 📚 使用指南
详细系统要求、启动器配置与安装步骤，请参阅项目 README：
- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

## 🙌 加入社区
- QQ 群：[点击加入](https://qm.qq.com/q/qZ2TJ0lZdK)
- Discord：[Join Server](https://discord.gg/j275P4PRzP)

## 💬 更新寄语
欢迎继续体验本服务器，你的反馈是我们前进的动力！