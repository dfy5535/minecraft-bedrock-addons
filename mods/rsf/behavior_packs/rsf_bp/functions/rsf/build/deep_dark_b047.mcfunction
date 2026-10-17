# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3375/4224 | 主题内编号: b047/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·深渊跨桥决斗长台 (deep_dark_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_deepslate []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 deepslate_tiles []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~-3 ~2 slot.container 1 bone 19
replaceitem block ~-5 ~-3 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~-3 ~2 slot.container 3 phantom_membrane 5
replaceitem block ~-5 ~-3 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~-3 ~2 slot.container 5 string 15
replaceitem block ~-5 ~-3 ~2 slot.container 9 golden_apple 5
replaceitem block ~-5 ~-3 ~2 slot.container 10 experience_bottle 15
replaceitem block ~-5 ~-3 ~2 slot.container 11 diamond 8
replaceitem block ~-5 ~-3 ~2 slot.container 12 amethyst_shard 13
replaceitem block ~-5 ~-3 ~2 slot.container 13 sculk_catalyst 8
replaceitem block ~-5 ~-3 ~2 slot.container 14 sculk_sensor 2
loot insert ~-5 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~-5 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~5 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~6 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-4 ~-7 ~7 ~-4 chiseled_deepslate []
setblock ~-7 ~8 ~-4 soul_lantern []
fill ~-7 ~5 ~4 ~-7 ~7 ~4 chiseled_deepslate []
setblock ~-7 ~8 ~4 soul_lantern []
fill ~7 ~5 ~-4 ~7 ~7 ~-4 chiseled_deepslate []
setblock ~7 ~8 ~-4 soul_lantern []
fill ~7 ~5 ~4 ~7 ~7 ~4 chiseled_deepslate []
setblock ~7 ~8 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~3 ~-6 chiseled_deepslate []
setblock ~-9 ~4 ~-6 soul_lantern []
fill ~-9 ~0 ~6 ~-9 ~3 ~6 chiseled_deepslate []
setblock ~-9 ~4 ~6 soul_lantern []
fill ~9 ~0 ~-6 ~9 ~3 ~-6 chiseled_deepslate []
setblock ~9 ~4 ~-6 soul_lantern []
fill ~9 ~0 ~6 ~9 ~3 ~6 chiseled_deepslate []
setblock ~9 ~4 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-2 ~0 ~7 ~0 ~8 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 spider_eye 13
replaceitem block ~6 ~1 ~2 slot.container 1 echo_shard 6
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 5
replaceitem block ~6 ~1 ~2 slot.container 3 bone 14
replaceitem block ~6 ~1 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~6 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~6 ~1 ~2 slot.container 9 sculk_catalyst 3
replaceitem block ~6 ~1 ~2 slot.container 10 sculk_sensor 4
replaceitem block ~6 ~1 ~2 slot.container 11 recovery_compass 1
replaceitem block ~6 ~1 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~6 ~1 ~2 slot.container 13 soul_lantern 11
replaceitem block ~6 ~1 ~2 slot.container 14 enchanted_golden_apple 7
loot insert ~6 ~1 ~2 loot "rsf/deep_dark"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 1 bone 17
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-6 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~3 slot.container 5 string 13
replaceitem block ~-6 ~1 ~3 slot.container 9 sculk_catalyst 8
replaceitem block ~-6 ~1 ~3 slot.container 10 sculk_sensor 2
replaceitem block ~-6 ~1 ~3 slot.container 11 recovery_compass 1
replaceitem block ~-6 ~1 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~-6 ~1 ~3 slot.container 13 soul_lantern 9
replaceitem block ~-6 ~1 ~3 slot.container 14 enchanted_golden_apple 5
loot insert ~-6 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
