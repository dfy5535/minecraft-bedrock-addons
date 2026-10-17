# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1303/4224 | 主题内编号: b023/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双层露台阁楼宝室 (desert_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 sandstone [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 sandstone [] replace water
fill ~-6 ~1 ~-6 ~6 ~11 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 cut_sandstone []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 sandstone []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 sandstone_slab []
fill ~-4 ~5 ~-4 ~4 ~9 ~4 cut_sandstone []
fill ~-3 ~5 ~-3 ~3 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-6 ~6 ~9 ~6 sandstone_slab []
fill ~-4 ~10 ~-4 ~4 ~11 ~4 cut_sandstone []
fill ~-5 ~12 ~-5 ~5 ~12 ~5 cut_sandstone_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~11 ~2 cut_sandstone []
fill ~6 ~1 ~-1 ~7 ~10 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~12 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-9 ~8 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~8 ~-8 chiseled_sandstone []
setblock ~-8 ~9 ~-7 gold_block []
setblock ~8 ~9 ~-7 gold_block []
setblock ~-1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 10
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~4 ~1 ~3 slot.container 2 bone 13
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 11 enchanted_golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 12 bread 14
replaceitem block ~4 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~3 loot "rsf/desert"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 16
replaceitem block ~-4 ~1 ~4 slot.container 5 gold_nugget 13
replaceitem block ~-4 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 11 enchanted_golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 12 bread 12
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-4 ~1 ~4 loot "rsf/desert"
loot insert ~-4 ~1 ~4 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
