# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3420/4224 | 主题内编号: b092/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双层重檐供奉宝塔 (deep_dark_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 polished_deepslate []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 echo_shard 11
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 10
replaceitem block ~3 ~-3 ~2 slot.container 2 bone 19
replaceitem block ~3 ~-3 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 4 phantom_membrane 5
replaceitem block ~3 ~-3 ~2 slot.container 5 gunpowder 12
replaceitem block ~3 ~-3 ~2 slot.container 9 amethyst_shard 8
replaceitem block ~3 ~-3 ~2 slot.container 10 sculk_catalyst 3
replaceitem block ~3 ~-3 ~2 slot.container 11 sculk_sensor 4
replaceitem block ~3 ~-3 ~2 slot.container 12 recovery_compass 1
replaceitem block ~3 ~-3 ~2 slot.container 13 diamond_leggings 1
replaceitem block ~3 ~-3 ~2 slot.container 14 soul_lantern 11
loot insert ~3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 deepslate_tile_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 polished_deepslate []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_tile_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 polished_deepslate []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_deepslate_slab []
setblock ~0 ~12 ~0 amethyst_block []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_deepslate []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~0 ~0 ~7 ~2 ~8 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~2 slot.container 2 string 18
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 13
replaceitem block ~-4 ~1 ~2 slot.container 4 echo_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-4 ~1 ~2 slot.container 9 enchanted_golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~2 slot.container 11 experience_bottle 18
replaceitem block ~-4 ~1 ~2 slot.container 12 diamond 4
replaceitem block ~-4 ~1 ~2 slot.container 13 amethyst_shard 9
replaceitem block ~-4 ~1 ~2 slot.container 14 sculk_catalyst 4
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
