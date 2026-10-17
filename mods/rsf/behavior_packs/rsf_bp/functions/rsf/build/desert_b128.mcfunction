# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1408/4224 | 主题内编号: b128/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·U型紫禁朝堂大殿与地底金库 (desert_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cut_sandstone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cut_sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cut_sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 spider_eye 7
replaceitem block ~5 ~-4 ~4 slot.container 1 arrow 18
replaceitem block ~5 ~-4 ~4 slot.container 2 gold_nugget 15
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 18
replaceitem block ~5 ~-4 ~4 slot.container 9 golden_apple 2
replaceitem block ~5 ~-4 ~4 slot.container 10 enchanted_golden_apple 2
replaceitem block ~5 ~-4 ~4 slot.container 11 bread 12
replaceitem block ~5 ~-4 ~4 slot.container 12 gold_ingot 9
replaceitem block ~5 ~-4 ~4 slot.container 13 iron_ingot 10
replaceitem block ~5 ~-4 ~4 slot.container 14 emerald 9
loot insert ~5 ~-4 ~4 loot "rsf/desert"
loot insert ~5 ~-4 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 cut_sandstone []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cut_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~9 ~-7 ~8 ~9 ~7 cut_sandstone_slab []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 smooth_sandstone []
fill ~-7 ~12 ~-6 ~7 ~12 ~6 sandstone_slab []
setblock ~0 ~13 ~0 orange_terracotta []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 birch_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x8x6) ---
fill ~-10 ~0 ~-8 ~-11 ~8 ~-9 chiseled_sandstone []
fill ~9 ~0 ~-8 ~10 ~8 ~-9 chiseled_sandstone []
setblock ~-10 ~9 ~-8 gold_block []
setblock ~10 ~9 ~-8 gold_block []
setblock ~-3 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-6 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~-6 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~-6 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~-6 ~1 ~4 slot.container 12 tnt 8
replaceitem block ~-6 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-6 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~-6 ~1 ~4 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
