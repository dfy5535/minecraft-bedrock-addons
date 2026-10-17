# 🏰 战斗高塔 · Battle Towers

> 50 变体纯指令高塔 + 10 原型 3D 守卫者
>
> **当前版本** `v2.1.3` ｜ **最低版本** `1.21.60` ｜ **实测运行** `1.26.52.3`

[← 返回总目录](../../README.md)

---

## 简介

50 变体纯指令高塔 + 10 原型 3D 守卫者。

**内容规模**

- 50 变体高塔
- 10 原型守卫者 3D 模型 / 动画
- 纯 mcfunction 引擎（78 个函数文件）

## 版本与兼容性

| 项 | 值 |
|---|---|
| 当前版本 | v2.1.3 |
| 最低引擎版本 | 1.21.60 |
| 脚本 API | 无脚本 |
| 实测运行版本 | 1.26.52.3 |
| BP UUID | `1785c0ca-f2db-4cea-a4f2-6e9da38f0cb9` |
| RP UUID | `42b1b9e9-13ea-4017-a5b9-a189681384a4` |

## 下载

- `dist/kira-towerworks-v2.1.3.mcaddon` — v2.1.3

也可以在 [Releases](../../releases) 里按版本下载。

## 安装

1. 下载上面的 `.mcaddon` 文件
2. 双击导入（或在游戏内「设置 → 存储 → 资源包/行为包」导入）
3. 新建世界或进入已有世界，**同时启用行为包与资源包**
4. 若提示缺少依赖，请确认两个包都启用了

## 更新日志

完整历史见 [CHANGELOG.md](./CHANGELOG.md)。最新一版：

### v2.1.3 — 2026-10-15

- 🎉 **新增** — 50 变体高塔 + 10 原型守卫者。
- 📌 **说明** — **审计结论：本来就已经满足 1.21.60 基线**，本次兼容工作**未做任何改动**。

## 已知限制

- 内含的 `kira_rsf_bp` 缺 `pack_icon.png`（既存），游戏内显示默认图标。
- manifest 声明 `license: internal` —— **发布前请确认授权**（见 NOTICE.md）。

## 源码结构

```
battletowers/
├── README.md            ← 本页
├── CHANGELOG.md         ← 更新日志
├── behavior_packs/      ← 行为包源码
├── resource_packs/      ← 资源包源码
└── dist/                ← 构建产物 .mcaddon
```

## 许可证

代码与 JSON：**MIT**（见 [LICENSE](../../LICENSE)）  
贴图与 3D 模型：**CC-BY-4.0**（见 [LICENSE-ASSETS](../../LICENSE-ASSETS)）
