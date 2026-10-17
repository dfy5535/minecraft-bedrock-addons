# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1399/4224 | 主题内编号: b119/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·半地下恒温洞穴苗圃 (desert_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 sandstone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 sandstone [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 cut_sandstone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 bone 18
replaceitem block ~-3 ~-3 ~3 slot.container 1 gunpowder 17
replaceitem block ~-3 ~-3 ~3 slot.container 2 string 8
replaceitem block ~-3 ~-3 ~3 slot.container 3 spider_eye 7
replaceitem block ~-3 ~-3 ~3 slot.container 4 arrow 18
replaceitem block ~-3 ~-3 ~3 slot.container 5 gold_nugget 15
replaceitem block ~-3 ~-3 ~3 slot.container 9 gold_ingot 6
replaceitem block ~-3 ~-3 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-3 ~-3 ~3 slot.container 11 emerald 6
replaceitem block ~-3 ~-3 ~3 slot.container 12 diamond 5
replaceitem block ~-3 ~-3 ~3 slot.container 13 tnt 8
replaceitem block ~-3 ~-3 ~3 slot.container 14 saddle 1
loot insert ~-3 ~-3 ~3 loot "rsf/desert"
loot insert ~-3 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 sandstone []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cut_sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 cut_sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 cut_sandstone []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 cobblestone_wall []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-9 ~4 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~4 ~-8 chiseled_sandstone []
setblock ~-8 ~5 ~-7 gold_block []
setblock ~8 ~5 ~-7 gold_block []
setblock ~0 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 10
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~4 ~1 ~3 slot.container 2 bone 13
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 9 tnt 10
replaceitem block ~4 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 13 enchanted_golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 14 bread 14
loot insert ~4 ~1 ~3 loot "rsf/desert"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 16
replaceitem block ~-4 ~1 ~4 slot.container 5 gold_nugget 13
replaceitem block ~-4 ~1 ~4 slot.container 9 tnt 8
replaceitem block ~-4 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 13 enchanted_golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 14 bread 12
loot insert ~-4 ~1 ~4 loot "rsf/desert"
loot insert ~-4 ~1 ~4 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
