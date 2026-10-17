# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3398/4224 | 主题内编号: b070/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·风化坍塌阶梯祭台 (deep_dark_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 19
replaceitem block ~4 ~-3 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~-3 ~3 slot.container 4 string 15
replaceitem block ~4 ~-3 ~3 slot.container 5 spider_eye 10
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond_leggings 1
replaceitem block ~4 ~-3 ~3 slot.container 10 soul_lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 11 enchanted_golden_apple 2
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 5
replaceitem block ~4 ~-3 ~3 slot.container 13 experience_bottle 15
replaceitem block ~4 ~-3 ~3 slot.container 14 diamond 8
loot insert ~4 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobbled_deepslate []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 deepslate_tiles []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 deepslate_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_deepslate []
setblock ~0 ~4 ~-7 sculk_catalyst []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_deepslate []
setblock ~0 ~4 ~7 sculk_catalyst []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_deepslate []
setblock ~-8 ~4 ~0 sculk_catalyst []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_deepslate []
setblock ~8 ~4 ~0 sculk_catalyst []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-3 ~0 ~7 ~-1 ~6 ~7 chiseled_deepslate []
setblock ~-2 ~1 ~7 sculk_catalyst []
setblock ~-2 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 18
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 2 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 amethyst_shard 11
replaceitem block ~-5 ~1 ~3 slot.container 10 sculk_catalyst 6
replaceitem block ~-5 ~1 ~3 slot.container 11 sculk_sensor 7
replaceitem block ~-5 ~1 ~3 slot.container 12 recovery_compass 1
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 7
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0
