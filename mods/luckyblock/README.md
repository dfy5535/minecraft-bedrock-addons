# 🎲 万象天平 · 幸运方块 · Balance of Fate

> 1000 种原生随机事件 + -100~+100 幸运值动态调律
>
> **当前版本** `v1.3.2` ｜ **最低版本** `1.21.60` ｜ **实测运行** `1.26.52.3`

[← 返回总目录](../../README.md)

---

## 简介

1000 种原生随机事件 + -100~+100 幸运值动态调律。

**内容规模**

- 1000 种随机事件（权重/幸运区间/防熊）
- 五阶气运贴图 / 模型 / 动画 / 粒子
- 精准采集封存、封存还原、幸运值调律权杖

## 版本与兼容性

| 项 | 值 |
|---|---|
| 当前版本 | v1.3.2 |
| 最低引擎版本 | 1.21.60 |
| 脚本 API | @minecraft/server 1.17.0 / @minecraft/server-ui 1.3.0 |
| 实测运行版本 | 1.26.52.3 |
| BP UUID | `c749bb59-d680-4b73-812d-2054f4804ed6` |
| RP UUID | `df411e8c-4538-49c0-8db1-e322656ba810` |

## 下载

- `dist/LuckyBlock_BalanceOfFate_v1.3.2_1.21.60-compat.mcaddon` — v1.3.2 · 1.21.60 兼容版

也可以在 [Releases](../../releases) 里按版本下载。

## 安装

1. 下载上面的 `.mcaddon` 文件
2. 双击导入（或在游戏内「设置 → 存储 → 资源包/行为包」导入）
3. 新建世界或进入已有世界，**同时启用行为包与资源包**
4. 若提示缺少依赖，请确认两个包都启用了

## 更新日志

完整历史见 [CHANGELOG.md](./CHANGELOG.md)。最新一版：

### v1.3.2 — 2026-10-17

- 🐛 **修复** — **修复模块加载崩溃**：`main.js` 顶层裸调 `system.beforeEvents.startup`，在 1.x 语义下 `system.beforeEvents` 为 undefined，整个脚本加载期抛错。改为存在性判定 + 回退 `world.beforeEvents.worldInitialize`。
- 🐛 **修复** — `applyKnockback({x,z}, n)` 是 v2 二参签名，v1 是四参 —— 新增 `knockback()` 垫片按运行时形态分派。
- 🐛 **修复** — `entity.isValid` 当属性用（v1 是方法，属性恒为真值）—— 新增 `isValidEntity()` 垫片。
- 🐛 **修复** — `world.getDifficulty()` / `world.afterEvents.soundCompleted` 在 1.17.0 不存在 —— 加存在性判定。
- 🔧 **变更** — 幸运方块改为走作者预留的**兜底交互路径**（移除方块对自定义组件的引用，组件在 1.x 下注册晚于方块解析会导致方块不存在）。
- 🔧 **变更** — `min_engine_version` → `[1,21,60]`；`@minecraft/server` `2.10.0` → `1.17.0`、`@minecraft/server-ui` `2.2.0` → `1.3.0`。
- 🧪 **验证** — 真机开箱链路实测：`BREAK_HOOK` → `OPENED EVT_0842` → `RESOLVED ok:true`。

## 已知限制

- 资源包含 PBR 文件（`*_mer.png` + `*_texture_set.json`）但 manifest 未声明 `capabilities:["pbr"]` —— 既存问题，PBR 不生效。
- BP 缺 `pack_icon.png`（既存），游戏内显示默认图标。
- 右键交互路径未做玩家动作级验证（无头 Bot 无法为自定义方块构造合法的 `block_runtime_id`）；**开箱主路径已实测通过**。

## 源码结构

```
luckyblock/
├── README.md            ← 本页
├── CHANGELOG.md         ← 更新日志
├── behavior_packs/      ← 行为包源码
├── resource_packs/      ← 资源包源码
└── dist/                ← 构建产物 .mcaddon
```

## 许可证

代码与 JSON：**MIT**（见 [LICENSE](../../LICENSE)）  
贴图与 3D 模型：**CC-BY-4.0**（见 [LICENSE-ASSETS](../../LICENSE-ASSETS)）
