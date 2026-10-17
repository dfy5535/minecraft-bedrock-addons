# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3359/4224 | 主题内编号: b031/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·阶梯圣火烽火台 (deep_dark_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 1 phantom_membrane 5
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 12
replaceitem block ~4 ~-2 ~3 slot.container 3 string 15
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 10
replaceitem block ~4 ~-2 ~3 slot.container 5 echo_shard 11
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 10 experience_bottle 15
replaceitem block ~4 ~-2 ~3 slot.container 11 diamond 8
replaceitem block ~4 ~-2 ~3 slot.container 12 amethyst_shard 13
replaceitem block ~4 ~-2 ~3 slot.container 13 sculk_catalyst 8
replaceitem block ~4 ~-2 ~3 slot.container 14 sculk_sensor 2
loot insert ~4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 deepslate_tiles []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 chiseled_deepslate []
setblock ~-6 ~11 ~-5 soul_lantern []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 chiseled_deepslate []
setblock ~-6 ~11 ~5 soul_lantern []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 chiseled_deepslate []
setblock ~6 ~11 ~-5 soul_lantern []
fill ~6 ~8 ~5 ~6 ~10 ~5 chiseled_deepslate []
setblock ~6 ~11 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_deepslate []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~0 ~0 ~7 ~2 ~7 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 1 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 3 bone 14
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 9 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 7
replaceitem block ~5 ~1 ~3 slot.container 12 enchanted_golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 14 experience_bottle 16
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond_leggings 1
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 12 enchanted_golden_apple 1
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 experience_bottle 14
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0
