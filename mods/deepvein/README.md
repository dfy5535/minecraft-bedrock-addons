# ⛏️ 深层矿脉 · 纪元锻造 · DeepVein Odyssey

> 19 种自然生成矿脉 + 完整冶炼链 + 全 3D 装备
>
> **当前版本** `v2.2.3` ｜ **最低版本** `1.21.60` ｜ **实测运行** `1.26.52.3`

[← 返回总目录](../../README.md)

---

## 简介

19 种自然生成矿脉 + 完整冶炼链 + 全 3D 装备。

**内容规模**

- 矿石 19 种（主世界 12 / 下界 4 / 末地 3）
- 方块 46 · 物品 131 · 配方 181
- 3D 模型 149（128×128 贴图）· 骨骼动画 451

## 版本与兼容性

| 项 | 值 |
|---|---|
| 当前版本 | v2.2.3 |
| 最低引擎版本 | 1.21.60 |
| 脚本 API | @minecraft/server 1.17.0 |
| 实测运行版本 | 1.26.52.3 |
| BP UUID | `1d9d594d-83c9-4711-9c33-6eaaf1b82abd` |
| RP UUID | `ed5f3f1a-3e13-4d6e-9582-6308c9f14317` |

## 下载

- `dist/DeepVein_Odyssey_v2.2.3_1.21.60-compat.mcaddon` — v2.2.3 · 1.21.60 兼容版

也可以在 [Releases](../../releases) 里按版本下载。

## 安装

1. 下载上面的 `.mcaddon` 文件
2. 双击导入（或在游戏内「设置 → 存储 → 资源包/行为包」导入）
3. 新建世界或进入已有世界，**同时启用行为包与资源包**
4. 若提示缺少依赖，请确认两个包都启用了

## 更新日志

完整历史见 [CHANGELOG.md](./CHANGELOG.md)。最新一版：

### v2.2.3 — 2026-10-17

- 🐛 **修复** — **修复：挖矿不掉经验球**（真机交互测试发现）。`playerBreakBlock` 是 after 事件，此时 `ev.block` 已是 `minecraft:air`，原实现用 `block.typeId` 查经验表永远查不到。改用 `brokenBlockPermutation.type.id`。
- 🐛 **修复** — 真机验证：挖掘 `titanium_ore` 后生成 `minecraft:xp_orb` ×5 与 `minecraft:item` 掉落。

## 已知限制

- `minecraft:piercing_weapon`（1.21.130 新增）在 1.21.60 上被引擎忽略 —— 长矛本体正常，仅无穿刺效果。
- 旧存档已探索区块不会补矿（基岩版世界生成固有行为）。

## 源码结构

```
deepvein/
├── README.md            ← 本页
├── CHANGELOG.md         ← 更新日志
├── behavior_packs/      ← 行为包源码
├── resource_packs/      ← 资源包源码
└── dist/                ← 构建产物 .mcaddon
```

## 许可证

代码与 JSON：**MIT**（见 [LICENSE](../../LICENSE)）  
贴图与 3D 模型：**CC-BY-4.0**（见 [LICENSE-ASSETS](../../LICENSE-ASSETS.md)）
