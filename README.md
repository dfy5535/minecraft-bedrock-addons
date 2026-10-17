# Minecraft Bedrock Add-ons

> 基岩版 Add-on 合集。**最低兼容基线 1.21.60，向上兼容**（已实测至 **1.26.52.3**）。
> 每个 MOD 一个独立页面 + 独立更新日志，更新时只改那一个目录。

[![Minecraft](https://img.shields.io/badge/Minecraft-Bedrock-3fb950?style=flat-square)](https://www.minecraft.net/)
[![Min Version](https://img.shields.io/badge/min%20version-1.21.60-blue?style=flat-square)](#兼容性)
[![Tested](https://img.shields.io/badge/tested-1.26.52.3-brightgreen?style=flat-square)](#兼容性)
[![License](https://img.shields.io/badge/license-MIT%20%2B%20CC--BY--4.0-yellow?style=flat-square)](./LICENSE)

---

## MOD 列表

| MOD | 当前版本 | 最低版本 | 一句话 | 页面 |
|---|---|---|---|---|
| ⛏️ **深层矿脉 · 纪元锻造**<br/>DeepVein Odyssey | `v2.2.3` | 1.21.60 | 19 种自然生成矿脉 + 完整冶炼链 + 全 3D 装备 | [**打开**](./mods/deepvein/README.md) |
| 🧟 **僵尸纪元**<br/>Zombie Evolution | `v4.0.3` 兼容<br/>`v4.1.0` 满血 | 1.21.60<br/>1.26.51 | 智能僵尸生态 + 12 种族群 | [**打开**](./mods/zombie/README.md) |
| 🎲 **万象天平 · 幸运方块**<br/>Balance of Fate | `v1.3.2` | 1.21.60 | 1000 种随机事件 + 幸运值动态调律 | [**打开**](./mods/luckyblock/README.md) |
| 🍀 **幸运四叶草**<br/>Lucky Clover | `v1.1.2` | 1.21.60 | 除草掉落四叶草，祈愿触发 24 种奇遇 | [**打开**](./mods/luckyclover/README.md) |
| 🌳 **矿物果树 3D**<br/>Ore Trees | `v1.0.0` | 1.21.60 | 八大矿物树苗 → 矿石树冠 | [**打开**](./mods/oretrees/README.md) |
| 🏰 **战斗高塔**<br/>Battle Towers | `v2.1.3` | 1.21.60 | 50 变体纯指令高塔 + 10 原型守卫者 | [**打开**](./mods/battletowers/README.md) |
| 🧱 **野外随机生成框架**<br/>RSF | `v2.3.1` | 1.21.60 | 全地形 4,224 座纯指令建筑 | [**打开**](./mods/rsf/README.md) |

> 想直接下东西？→ [**Releases**](../../releases) 里有每个版本打包好的 `.mcaddon`。

---

## 兼容性

| 项 | 说明 |
|---|---|
| **最低目标** | Minecraft Bedrock **1.21.60** |
| **脚本 API 基线** | `@minecraft/server` **1.17.0**（官方 `scripting/versioning.md` 明确 `1.17.0 ↔ 1.21.60`） |
| **实测最高** | **1.26.52.3**（全部 MOD 在该版本真机启动、加载、跑通） |
| **向上兼容原理** | 声明 `1.x.x` 的包会在「最大化 v1 语义」的环境中运行，因此 1.21.60 与 1.26.x 走**同一条代码路径**，无需维护两份实现 |

逐项证据与测试矩阵见 [COMPATIBILITY.md](./COMPATIBILITY.md)。

---

## 目录结构

```
.
├── README.md                 ← 本页（总索引）
├── COMPATIBILITY.md          ← 版本兼容矩阵与测试证据
├── NOTICE.md                 ← 各 MOD 授权状况说明
├── LICENSE                   ← 代码 / JSON：MIT
├── LICENSE-ASSETS            ← 贴图 / 3D 模型：CC-BY-4.0
├── docs/                     ← 兼容修复报告、校验报告
└── mods/
    └── <mod>/
        ├── README.md         ← 该 MOD 的页面
        ├── CHANGELOG.md      ← 该 MOD 的更新日志
        ├── behavior_packs/   ← 行为包源码
        ├── resource_packs/   ← 资源包源码
        └── dist/             ← 打包好的 .mcaddon
```

---

## 如何更新一个 MOD

每个 MOD 是**完全独立**的一页，更新时只动它自己的目录，互不影响：

1. **改源码** — 编辑 `mods/<mod>/behavior_packs/` 或 `resource_packs/`
2. **重新打包** — 产物放进 `mods/<mod>/dist/`（新的 `.mcaddon` 建议带上版本号）
3. **写更新日志** — 在 `mods/<mod>/CHANGELOG.md` **顶部**追加一节：

   ```markdown
   ## v2.2.4 — 2026-11-01

   - 🐛 **修复** — 一句话说清改了什么、为什么
   - 🔧 **变更** — 行为/数值/结构上的变化
   ```

4. **更新版本号** — 改 `mods/<mod>/README.md` 顶部那行 `当前版本`
5. **提交并打标签**

   ```bash
   git add mods/<mod>
   git commit -m "feat(<mod>): v2.2.4 — 简述"
   git tag <mod>/v2.2.4
   git push && git push --tags
   ```

6. 在 Releases 里为这个 tag 附上 `dist/` 里对应的 `.mcaddon`

> **发布纪律**：每次更新都必须同时更换 `header.uuid` 与 `header.version`，
> 并在出包后核对产物哈希确实变了 —— 否则玩家可能装到缓存的旧包。

---

## 相关链接

- [Minecraft Creator 文档](https://learn.microsoft.com/minecraft/creator/)
- [官方脚本版本映射](https://learn.microsoft.com/minecraft/creator/documents/scripting/versioning)
- [bedrock-samples](https://github.com/Mojang/bedrock-samples)

---

## 许可证

- **代码与 JSON**：MIT — 见 [LICENSE](./LICENSE)
- **贴图与 3D 模型**：CC-BY-4.0 — 见 [LICENSE-ASSETS](./LICENSE-ASSETS)
- 各 MOD 原始 manifest 中的授权声明见 [NOTICE.md](./NOTICE.md)

使用/转载美术资源时请保留出处。
