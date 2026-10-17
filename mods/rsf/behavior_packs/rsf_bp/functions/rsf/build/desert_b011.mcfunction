# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1291/4224 | 主题内编号: b011/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·深渊困兽角斗地牢 (desert_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-4 ~-5 ~-3 torch []
setblock ~4 ~-5 ~3 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 8
replaceitem block ~0 ~-3 ~3 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~3 slot.container 2 arrow 18
replaceitem block ~0 ~-3 ~3 slot.container 3 gold_nugget 15
replaceitem block ~0 ~-3 ~3 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~0 ~-3 ~3 slot.container 9 emerald 4
replaceitem block ~0 ~-3 ~3 slot.container 10 diamond 3
replaceitem block ~0 ~-3 ~3 slot.container 11 tnt 6
replaceitem block ~0 ~-3 ~3 slot.container 12 saddle 1
replaceitem block ~0 ~-3 ~3 slot.container 13 water_bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~3 loot "rsf/desert"
loot insert ~0 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 chiseled_sandstone []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 chiseled_sandstone []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 chiseled_sandstone []
fill ~5 ~1 ~4 ~5 ~7 ~4 chiseled_sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_sandstone []
setblock ~-6 ~10 ~-5 torch []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_sandstone []
setblock ~-6 ~10 ~5 torch []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_sandstone []
setblock ~6 ~10 ~-5 torch []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_sandstone []
setblock ~6 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~-7 ~-10 ~6 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~6 ~-8 chiseled_sandstone []
setblock ~-9 ~7 ~-7 gold_block []
setblock ~9 ~7 ~-7 gold_block []
setblock ~-1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 3 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 8
replaceitem block ~5 ~1 ~3 slot.container 13 tnt 4
replaceitem block ~5 ~1 ~3 slot.container 14 saddle 1
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 6
replaceitem block ~-5 ~1 ~4 slot.container 13 tnt 9
replaceitem block ~-5 ~1 ~4 slot.container 14 saddle 1
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
