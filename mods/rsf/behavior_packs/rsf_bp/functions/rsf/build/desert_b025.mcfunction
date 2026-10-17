# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1305/4224 | 主题内编号: b025/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·雉堞女墙四方哨塔 (desert_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 smooth_sandstone [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 smooth_sandstone [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cut_sandstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 smooth_sandstone []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 sandstone []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 sandstone []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 sandstone []
fill ~4 ~1 ~3 ~4 ~11 ~3 sandstone []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~11 ~-3 ~4 ~11 ~3 orange_terracotta []
fill ~-4 ~12 ~-3 ~4 ~12 ~3 cobblestone_wall []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~-4 ~12 ~-3 sandstone []
setblock ~-4 ~13 ~-3 torch []
setblock ~-4 ~12 ~3 sandstone []
setblock ~-4 ~13 ~3 torch []
setblock ~4 ~12 ~-3 sandstone []
setblock ~4 ~13 ~-3 torch []
setblock ~4 ~12 ~3 sandstone []
setblock ~4 ~13 ~3 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 orange_terracotta []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 sandstone []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 sandstone []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 sandstone_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 7x4x3) ---
fill ~-7 ~0 ~-4 ~-8 ~5 ~-5 chiseled_sandstone []
fill ~6 ~0 ~-4 ~7 ~5 ~-5 chiseled_sandstone []
setblock ~-7 ~6 ~-4 gold_block []
setblock ~7 ~6 ~-4 gold_block []
setblock ~0 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 13
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~1 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~1 slot.container 5 gold_nugget 18
replaceitem block ~3 ~1 ~1 slot.container 9 emerald 7
replaceitem block ~3 ~1 ~1 slot.container 10 diamond 6
replaceitem block ~3 ~1 ~1 slot.container 11 tnt 9
replaceitem block ~3 ~1 ~1 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~1 slot.container 13 water_bucket 1
replaceitem block ~3 ~1 ~1 slot.container 14 golden_apple 3
loot insert ~3 ~1 ~1 loot "rsf/desert"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-3 ~1 ~2 slot.container 2 arrow 16
replaceitem block ~-3 ~1 ~2 slot.container 3 gold_nugget 13
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~1 ~2 slot.container 9 emerald 5
replaceitem block ~-3 ~1 ~2 slot.container 10 diamond 4
replaceitem block ~-3 ~1 ~2 slot.container 11 tnt 7
replaceitem block ~-3 ~1 ~2 slot.container 12 saddle 1
replaceitem block ~-3 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~-3 ~1 ~2 loot "rsf/desert"
loot insert ~-3 ~1 ~2 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
