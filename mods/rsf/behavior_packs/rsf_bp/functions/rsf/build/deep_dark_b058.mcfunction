# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3386/4224 | 主题内编号: b058/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字拱顶家族陵墓 (deep_dark_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 echo_shard 11
replaceitem block ~0 ~-4 ~3 slot.container 1 ender_pearl 10
replaceitem block ~0 ~-4 ~3 slot.container 2 bone 19
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~0 ~-4 ~3 slot.container 4 phantom_membrane 5
replaceitem block ~0 ~-4 ~3 slot.container 5 gunpowder 12
replaceitem block ~0 ~-4 ~3 slot.container 9 enchanted_golden_apple 5
replaceitem block ~0 ~-4 ~3 slot.container 10 golden_apple 8
replaceitem block ~0 ~-4 ~3 slot.container 11 experience_bottle 18
replaceitem block ~0 ~-4 ~3 slot.container 12 diamond 4
replaceitem block ~0 ~-4 ~3 slot.container 13 amethyst_shard 9
replaceitem block ~0 ~-4 ~3 slot.container 14 sculk_catalyst 4
loot insert ~0 ~-4 ~3 loot "rsf/deep_dark"
loot insert ~0 ~-4 ~3 loot "chests/ancient_city"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 echo_shard 9
replaceitem block ~0 ~-4 ~-3 slot.container 1 ender_pearl 8
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 18
replaceitem block ~0 ~-4 ~-3 slot.container 4 phantom_membrane 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 10
replaceitem block ~0 ~-4 ~-3 slot.container 9 enchanted_golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_apple 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 experience_bottle 17
replaceitem block ~0 ~-4 ~-3 slot.container 12 diamond 10
replaceitem block ~0 ~-4 ~-3 slot.container 13 amethyst_shard 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 sculk_catalyst 3
loot insert ~0 ~-4 ~-3 loot "rsf/deep_dark"
loot insert ~0 ~-4 ~-3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 cobbled_deepslate []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 deepslate_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 deepslate_tiles []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 chiseled_deepslate []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 chiseled_deepslate []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 chiseled_deepslate []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 chiseled_deepslate []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-3 ~0 ~7 ~-1 ~4 ~7 chiseled_deepslate []
setblock ~-2 ~1 ~7 sculk_catalyst []
setblock ~-2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 18
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 12
replaceitem block ~-5 ~1 ~3 slot.container 11 enchanted_golden_apple 1
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 13 experience_bottle 14
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 7
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-4 ~0
