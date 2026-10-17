# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3333/4224 | 主题内编号: b005/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·下沉圣泉秘宝祭坛 (deep_dark_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_deepslate [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 spider_eye 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 echo_shard 11
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~-3 ~2 slot.container 3 bone 19
replaceitem block ~-3 ~-3 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~-3 ~2 slot.container 5 phantom_membrane 5
replaceitem block ~-3 ~-3 ~2 slot.container 9 sculk_catalyst 4
replaceitem block ~-3 ~-3 ~2 slot.container 10 sculk_sensor 5
replaceitem block ~-3 ~-3 ~2 slot.container 11 recovery_compass 1
replaceitem block ~-3 ~-3 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 soul_lantern 12
replaceitem block ~-3 ~-3 ~2 slot.container 14 enchanted_golden_apple 1
loot insert ~-3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~-3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 polished_deepslate []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-4 ~-5 ~6 ~-4 chiseled_deepslate []
setblock ~-5 ~7 ~-4 soul_lantern []
fill ~-5 ~4 ~4 ~-5 ~6 ~4 chiseled_deepslate []
setblock ~-5 ~7 ~4 soul_lantern []
fill ~5 ~4 ~-4 ~5 ~6 ~-4 chiseled_deepslate []
setblock ~5 ~7 ~-4 soul_lantern []
fill ~5 ~4 ~4 ~5 ~6 ~4 chiseled_deepslate []
setblock ~5 ~7 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 polished_deepslate_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-2 ~0 ~7 ~0 ~6 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~2 slot.container 1 string 18
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 13
replaceitem block ~4 ~1 ~2 slot.container 3 echo_shard 6
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~2 slot.container 5 bone 14
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 7
replaceitem block ~4 ~1 ~2 slot.container 10 enchanted_golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 12 experience_bottle 16
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 9
replaceitem block ~4 ~1 ~2 slot.container 14 amethyst_shard 14
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 1 echo_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~-4 ~1 ~3 slot.container 5 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 12
replaceitem block ~-4 ~1 ~3 slot.container 10 enchanted_golden_apple 1
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 12 experience_bottle 14
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 7
replaceitem block ~-4 ~1 ~3 slot.container 14 amethyst_shard 12
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
