# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1293/4224 | 主题内编号: b013/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·地底熔炉苦工地牢 (desert_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 smooth_sandstone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 smooth_sandstone [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 sandstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cut_sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 smooth_sandstone []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 18
replaceitem block ~4 ~-3 ~4 slot.container 1 gunpowder 17
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 spider_eye 7
replaceitem block ~4 ~-3 ~4 slot.container 4 arrow 18
replaceitem block ~4 ~-3 ~4 slot.container 5 gold_nugget 15
replaceitem block ~4 ~-3 ~4 slot.container 9 emerald 8
replaceitem block ~4 ~-3 ~4 slot.container 10 diamond 7
replaceitem block ~4 ~-3 ~4 slot.container 11 tnt 10
replaceitem block ~4 ~-3 ~4 slot.container 12 saddle 1
replaceitem block ~4 ~-3 ~4 slot.container 13 water_bucket 1
replaceitem block ~4 ~-3 ~4 slot.container 14 golden_apple 4
loot insert ~4 ~-3 ~4 loot "rsf/desert"
loot insert ~4 ~-3 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~7 ~6 smooth_sandstone []
fill ~-5 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~7 ~-6 sandstone []
fill ~-6 ~1 ~6 ~-6 ~7 ~6 sandstone []
fill ~6 ~1 ~-6 ~6 ~7 ~-6 sandstone []
fill ~6 ~1 ~6 ~6 ~7 ~6 sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 orange_terracotta []
fill ~-6 ~8 ~-6 ~6 ~8 ~6 cobblestone_wall []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 air []
setblock ~-6 ~8 ~-6 sandstone []
setblock ~-6 ~9 ~-6 torch []
setblock ~-6 ~8 ~6 sandstone []
setblock ~-6 ~9 ~6 torch []
setblock ~6 ~8 ~-6 sandstone []
setblock ~6 ~9 ~-6 torch []
setblock ~6 ~8 ~6 sandstone []
setblock ~6 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 sandstone []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-7 ~-10 ~8 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~8 ~-8 chiseled_sandstone []
setblock ~-9 ~9 ~-7 gold_block []
setblock ~9 ~9 ~-7 gold_block []
setblock ~1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~4 slot.container 4 bone 13
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~5 ~1 ~4 slot.container 11 enchanted_golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 12 bread 11
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~4 loot "rsf/desert"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~5 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~5 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 11 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 12 bread 16
replaceitem block ~-5 ~1 ~5 slot.container 13 gold_ingot 6
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_ingot 7
loot insert ~-5 ~1 ~5 loot "rsf/desert"
loot insert ~-5 ~1 ~5 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
