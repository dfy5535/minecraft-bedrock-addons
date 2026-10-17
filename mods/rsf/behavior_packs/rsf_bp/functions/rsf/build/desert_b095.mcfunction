# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1375/4224 | 主题内编号: b095/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子灯笼守卫神龛 (desert_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 sandstone [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 sandstone [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sandstone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cut_sandstone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 sandstone []
fill ~2 ~1 ~-3 ~6 ~9 ~3 sandstone []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cut_sandstone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 sandstone_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 cut_sandstone []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 cut_sandstone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~5 ~-5 chiseled_sandstone []
setblock ~-8 ~6 ~-5 torch []
fill ~-8 ~0 ~5 ~-8 ~5 ~5 chiseled_sandstone []
setblock ~-8 ~6 ~5 torch []
fill ~8 ~0 ~-5 ~8 ~5 ~-5 chiseled_sandstone []
setblock ~8 ~6 ~-5 torch []
fill ~8 ~0 ~5 ~8 ~5 ~5 chiseled_sandstone []
setblock ~8 ~6 ~5 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x5x3) ---
fill ~-9 ~0 ~-5 ~-10 ~5 ~-6 chiseled_sandstone []
fill ~8 ~0 ~-5 ~9 ~5 ~-6 chiseled_sandstone []
setblock ~-9 ~6 ~-5 gold_block []
setblock ~9 ~6 ~-5 gold_block []
setblock ~-1 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 ender_pearl 10
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~1 slot.container 2 bone 13
replaceitem block ~5 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 4 string 11
replaceitem block ~5 ~1 ~1 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~1 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~1 slot.container 10 diamond 6
replaceitem block ~5 ~1 ~1 slot.container 11 tnt 9
replaceitem block ~5 ~1 ~1 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~1 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~1 loot "rsf/desert"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 2 string 14
replaceitem block ~-5 ~1 ~2 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 16
replaceitem block ~-5 ~1 ~2 slot.container 5 gold_nugget 13
replaceitem block ~-5 ~1 ~2 slot.container 9 emerald 5
replaceitem block ~-5 ~1 ~2 slot.container 10 diamond 4
replaceitem block ~-5 ~1 ~2 slot.container 11 tnt 7
replaceitem block ~-5 ~1 ~2 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~2 loot "rsf/desert"
loot insert ~-5 ~1 ~2 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
