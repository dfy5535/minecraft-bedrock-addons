# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3338/4224 | 主题内编号: b010/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字交叉深层地牢 (deep_dark_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 4格 | 地下深度 6格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-7 ~8 ~6 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobbled_deepslate []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_lantern []
setblock ~5 ~-7 ~0 soul_lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 echo_shard 11
replaceitem block ~0 ~-5 ~4 slot.container 1 ender_pearl 10
replaceitem block ~0 ~-5 ~4 slot.container 2 bone 19
replaceitem block ~0 ~-5 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~0 ~-5 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~0 ~-5 ~4 slot.container 5 gunpowder 12
replaceitem block ~0 ~-5 ~4 slot.container 9 sculk_sensor 7
replaceitem block ~0 ~-5 ~4 slot.container 10 recovery_compass 1
replaceitem block ~0 ~-5 ~4 slot.container 11 diamond_leggings 1
replaceitem block ~0 ~-5 ~4 slot.container 12 soul_lantern 7
replaceitem block ~0 ~-5 ~4 slot.container 13 enchanted_golden_apple 3
replaceitem block ~0 ~-5 ~4 slot.container 14 golden_apple 6
loot insert ~0 ~-5 ~4 loot "rsf/deep_dark"
loot insert ~0 ~-5 ~4 loot "chests/ancient_city"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 echo_shard 9
replaceitem block ~0 ~-5 ~-4 slot.container 1 ender_pearl 8
replaceitem block ~0 ~-5 ~-4 slot.container 2 bone 17
replaceitem block ~0 ~-5 ~-4 slot.container 3 rotten_flesh 18
replaceitem block ~0 ~-5 ~-4 slot.container 4 phantom_membrane 11
replaceitem block ~0 ~-5 ~-4 slot.container 5 gunpowder 10
replaceitem block ~0 ~-5 ~-4 slot.container 9 sculk_sensor 6
replaceitem block ~0 ~-5 ~-4 slot.container 10 recovery_compass 1
replaceitem block ~0 ~-5 ~-4 slot.container 11 diamond_leggings 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 soul_lantern 6
replaceitem block ~0 ~-5 ~-4 slot.container 13 enchanted_golden_apple 2
replaceitem block ~0 ~-5 ~-4 slot.container 14 golden_apple 5
loot insert ~0 ~-5 ~-4 loot "rsf/deep_dark"
loot insert ~0 ~-5 ~-4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 cobbled_deepslate []
fill ~-7 ~1 ~-2 ~7 ~4 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 deepslate_brick_wall []
setblock ~7 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~4 ~-6 ~7 ~4 ~6 deepslate_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-7 ~3 ~-1 ~-7 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 chiseled_deepslate []
setblock ~-9 ~4 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 chiseled_deepslate []
setblock ~-9 ~4 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 chiseled_deepslate []
setblock ~9 ~4 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 chiseled_deepslate []
setblock ~9 ~4 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-4 ~0 ~8 ~-2 ~6 ~8 chiseled_deepslate []
setblock ~-3 ~1 ~8 sculk_catalyst []
setblock ~-3 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 2 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~4 slot.container 4 string 18
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 13
replaceitem block ~-6 ~1 ~4 slot.container 9 amethyst_shard 14
replaceitem block ~-6 ~1 ~4 slot.container 10 sculk_catalyst 2
replaceitem block ~-6 ~1 ~4 slot.container 11 sculk_sensor 3
replaceitem block ~-6 ~1 ~4 slot.container 12 recovery_compass 1
replaceitem block ~-6 ~1 ~4 slot.container 13 diamond_leggings 1
replaceitem block ~-6 ~1 ~4 slot.container 14 soul_lantern 10
loot insert ~-6 ~1 ~4 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-5 ~0
