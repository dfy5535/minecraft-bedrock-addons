# 更新日志 · 万象天平 · 幸运方块

> 本文件记录每一次发布。以后更新只需在顶部追加一节。

[← 返回 MOD 页](./README.md)

## v1.3.2 — 2026-10-17

- 🐛 **修复** — **修复模块加载崩溃**：`main.js` 顶层裸调 `system.beforeEvents.startup`，在 1.x 语义下 `system.beforeEvents` 为 undefined，整个脚本加载期抛错。改为存在性判定 + 回退 `world.beforeEvents.worldInitialize`。
- 🐛 **修复** — `applyKnockback({x,z}, n)` 是 v2 二参签名，v1 是四参 —— 新增 `knockback()` 垫片按运行时形态分派。
- 🐛 **修复** — `entity.isValid` 当属性用（v1 是方法，属性恒为真值）—— 新增 `isValidEntity()` 垫片。
- 🐛 **修复** — `world.getDifficulty()` / `world.afterEvents.soundCompleted` 在 1.17.0 不存在 —— 加存在性判定。
- 🔧 **变更** — 幸运方块改为走作者预留的**兜底交互路径**（移除方块对自定义组件的引用，组件在 1.x 下注册晚于方块解析会导致方块不存在）。
- 🔧 **变更** — `min_engine_version` → `[1,21,60]`；`@minecraft/server` `2.10.0` → `1.17.0`、`@minecraft/server-ui` `2.2.0` → `1.3.0`。
- 🧪 **验证** — 真机开箱链路实测：`BREAK_HOOK` → `OPENED EVT_0842` → `RESOLVED ok:true`。

## v1.3.0 — 2026-10-15

- 🎉 **新增** — 事件库扩至 1000 种，新增抉择问答与连锁套娃。
