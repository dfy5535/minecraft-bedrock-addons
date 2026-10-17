# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3382/4224 | 主题内编号: b054/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·切石与伐木工匠棚屋 (deep_dark_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-5 ~7 ~7 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~6 ~4 cobbled_deepslate []
fill ~2 ~1 ~-4 ~6 ~6 ~4 cobbled_deepslate []
fill ~-5 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 deepslate_tiles []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-5 ~-7 ~6 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-5 ~7 ~6 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~-6 ~7 ~4 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-4 ~6 ~7 ~4 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-4 ~5 ~7 ~4 deepslate_brick_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 deepslate_tiles []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~3 ~-7 polished_deepslate []
setblock ~-9 ~4 ~-7 soul_lantern []
fill ~-9 ~0 ~7 ~-9 ~3 ~7 polished_deepslate []
setblock ~-9 ~4 ~7 soul_lantern []
fill ~9 ~0 ~-7 ~9 ~3 ~-7 polished_deepslate []
setblock ~9 ~4 ~-7 soul_lantern []
fill ~9 ~0 ~7 ~9 ~3 ~7 polished_deepslate []
setblock ~9 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-1 ~0 ~5 ~1 ~5 ~5 chiseled_deepslate []
setblock ~0 ~1 ~5 sculk_catalyst []
setblock ~0 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 string 18
replaceitem block ~-5 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~2 slot.container 2 echo_shard 6
replaceitem block ~-5 ~1 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 sculk_sensor 3
replaceitem block ~-5 ~1 ~2 slot.container 10 recovery_compass 1
replaceitem block ~-5 ~1 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~-5 ~1 ~2 slot.container 12 soul_lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 13 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 9
loot insert ~-5 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
