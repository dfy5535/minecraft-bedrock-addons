# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1330/4224 | 主题内编号: b050/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·L型探险家补给驿站 (desert_outpost_l_waystation)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 orange_terracotta []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 7
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 19
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 18
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 spider_eye 7
replaceitem block ~-3 ~-3 ~2 slot.container 9 enchanted_golden_apple 6
replaceitem block ~-3 ~-3 ~2 slot.container 10 bread 16
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 6
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_ingot 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 6
replaceitem block ~-3 ~-3 ~2 slot.container 14 diamond 5
loot insert ~-3 ~-3 ~2 loot "rsf/desert"
loot insert ~-3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 sandstone []
fill ~-6 ~1 ~0 ~6 ~6 ~5 sandstone []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 sandstone_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 yellow_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 smooth_sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-7 ~-10 ~5 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~5 ~-8 chiseled_sandstone []
setblock ~-9 ~6 ~-7 gold_block []
setblock ~9 ~6 ~-7 gold_block []
setblock ~2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 10 enchanted_golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 11 bread 12
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 9
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
