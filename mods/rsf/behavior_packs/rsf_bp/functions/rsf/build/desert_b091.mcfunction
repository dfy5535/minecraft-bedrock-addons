# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1371/4224 | 主题内编号: b091/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·跨水拱桥水神小祠 (desert_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 sandstone [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 sandstone [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sandstone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 cut_sandstone []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 arrow 18
replaceitem block ~-4 ~-2 ~1 slot.container 1 gold_nugget 15
replaceitem block ~-4 ~-2 ~1 slot.container 2 ender_pearl 7
replaceitem block ~-4 ~-2 ~1 slot.container 3 rotten_flesh 19
replaceitem block ~-4 ~-2 ~1 slot.container 4 bone 18
replaceitem block ~-4 ~-2 ~1 slot.container 5 gunpowder 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 water_bucket 1
replaceitem block ~-4 ~-2 ~1 slot.container 10 golden_apple 3
replaceitem block ~-4 ~-2 ~1 slot.container 11 enchanted_golden_apple 3
replaceitem block ~-4 ~-2 ~1 slot.container 12 bread 13
replaceitem block ~-4 ~-2 ~1 slot.container 13 gold_ingot 10
replaceitem block ~-4 ~-2 ~1 slot.container 14 iron_ingot 11
loot insert ~-4 ~-2 ~1 loot "rsf/desert"
loot insert ~-4 ~-2 ~1 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~8 ~3 sandstone []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 sandstone_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 cut_sandstone []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 cut_sandstone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 cut_sandstone []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 torch []
setblock ~2 ~4 ~-6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x4x4) ---
fill ~-9 ~0 ~-4 ~-10 ~6 ~-5 chiseled_sandstone []
fill ~8 ~0 ~-4 ~9 ~6 ~-5 chiseled_sandstone []
setblock ~-9 ~7 ~-4 gold_block []
setblock ~9 ~7 ~-4 gold_block []
setblock ~1 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~1 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~1 slot.container 3 gold_nugget 18
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 10
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~1 slot.container 9 gold_ingot 12
replaceitem block ~5 ~1 ~1 slot.container 10 iron_ingot 6
replaceitem block ~5 ~1 ~1 slot.container 11 emerald 5
replaceitem block ~5 ~1 ~1 slot.container 12 diamond 4
replaceitem block ~5 ~1 ~1 slot.container 13 tnt 7
replaceitem block ~5 ~1 ~1 slot.container 14 saddle 1
loot insert ~5 ~1 ~1 loot "rsf/desert"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 arrow 16
replaceitem block ~-5 ~1 ~2 slot.container 1 gold_nugget 13
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 5
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 11 emerald 10
replaceitem block ~-5 ~1 ~2 slot.container 12 diamond 2
replaceitem block ~-5 ~1 ~2 slot.container 13 tnt 5
replaceitem block ~-5 ~1 ~2 slot.container 14 saddle 1
loot insert ~-5 ~1 ~2 loot "rsf/desert"
loot insert ~-5 ~1 ~2 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
