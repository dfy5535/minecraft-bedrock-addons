# 更新日志 · 深层矿脉 · 纪元锻造

> 本文件记录每一次发布。以后更新只需在顶部追加一节。

[← 返回 MOD 页](./README.md)

## v2.2.3 — 2026-10-17

- 🐛 **修复** — **修复：挖矿不掉经验球**（真机交互测试发现）。`playerBreakBlock` 是 after 事件，此时 `ev.block` 已是 `minecraft:air`，原实现用 `block.typeId` 查经验表永远查不到。改用 `brokenBlockPermutation.type.id`。
- 🐛 **修复** — 真机验证：挖掘 `titanium_ore` 后生成 `minecraft:xp_orb` ×5 与 `minecraft:item` 掉落。

## v2.2.2 — 2026-10-17

- 🔧 **变更** — `min_engine_version` `[1,26,50]` → **`[1,21,60]`**。
- 🔧 **变更** — 脚本依赖 `@minecraft/server` `2.10.0` → **`1.17.0`**（= 1.21.60 官方对应版本）。
- 🔧 **变更** — 202 个 JSON 的 `format_version` 从 `1.26.0` / `1.26.50` 降到 `1.21.60`（只动超出目标版本的，其余未改）。
- 🔧 **变更** — 24 个矿石方块的自定义组件 `deepvein:ore_mining` 改为纯 1.x 事件实现 —— 该组件在 1.x 语义下注册晚于方块 JSON 解析，会导致 24 个方块「Block definition parsing failed」而完全不存在。

## v2.2.0 — 2026-10-16

- 🎉 **新增** — 首个公开版本：19 种矿脉 + 冶炼链 + 55 武器工具 + 11 套防具。
