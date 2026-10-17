# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1320/4224 | 主题内编号: b040/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·崩裂远古符文石碑 (desert_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 smooth_sandstone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 spider_eye 7
replaceitem block ~3 ~-3 ~2 slot.container 1 arrow 18
replaceitem block ~3 ~-3 ~2 slot.container 2 gold_nugget 15
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~-3 ~2 slot.container 5 bone 18
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 6
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 5
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond 4
replaceitem block ~3 ~-3 ~2 slot.container 12 tnt 7
replaceitem block ~3 ~-3 ~2 slot.container 13 saddle 1
replaceitem block ~3 ~-3 ~2 slot.container 14 water_bucket 1
loot insert ~3 ~-3 ~2 loot "rsf/desert"
loot insert ~3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cut_sandstone []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 smooth_sandstone []
fill ~-3 ~5 ~-2 ~3 ~9 ~2 smooth_sandstone []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 smooth_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cut_sandstone_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-5 ~8 ~-1 ~-5 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 chiseled_sandstone []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 chiseled_sandstone []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 chiseled_sandstone []
fill ~6 ~0 ~2 ~6 ~8 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-8 ~0 ~-5 ~-9 ~5 ~-6 chiseled_sandstone []
fill ~7 ~0 ~-5 ~8 ~5 ~-6 chiseled_sandstone []
setblock ~-8 ~6 ~-5 gold_block []
setblock ~8 ~6 ~-5 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 10 enchanted_golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 11 bread 16
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 6
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 6
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
