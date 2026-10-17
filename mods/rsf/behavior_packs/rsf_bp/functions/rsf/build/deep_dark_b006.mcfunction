# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3334/4224 | 主题内编号: b006/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·重檐飞角四方神龛 (deep_dark_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 19
replaceitem block ~3 ~-3 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~3 ~-3 ~2 slot.container 3 gunpowder 12
replaceitem block ~3 ~-3 ~2 slot.container 4 string 15
replaceitem block ~3 ~-3 ~2 slot.container 5 spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 9 sculk_sensor 7
replaceitem block ~3 ~-3 ~2 slot.container 10 recovery_compass 1
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~3 ~-3 ~2 slot.container 12 soul_lantern 7
replaceitem block ~3 ~-3 ~2 slot.container 13 enchanted_golden_apple 3
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_apple 6
loot insert ~3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 cobbled_deepslate []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 chiseled_deepslate []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 chiseled_deepslate []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 chiseled_deepslate []
fill ~5 ~1 ~4 ~5 ~7 ~4 chiseled_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_brick_slab []
setblock ~0 ~11 ~0 sculk_sensor []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 polished_deepslate []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 polished_deepslate []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 polished_deepslate []
fill ~5 ~0 ~2 ~5 ~7 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-1 ~0 ~5 ~1 ~7 ~5 chiseled_deepslate []
setblock ~0 ~1 ~5 sculk_catalyst []
setblock ~0 ~8 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 18
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~2 slot.container 2 echo_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 9 experience_bottle 14
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 7
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 12
replaceitem block ~-4 ~1 ~2 slot.container 12 sculk_catalyst 7
replaceitem block ~-4 ~1 ~2 slot.container 13 sculk_sensor 8
replaceitem block ~-4 ~1 ~2 slot.container 14 recovery_compass 1
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
