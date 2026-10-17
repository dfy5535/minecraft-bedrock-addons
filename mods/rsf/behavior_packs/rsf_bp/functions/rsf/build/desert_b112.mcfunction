# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1392/4224 | 主题内编号: b112/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·U型回廊学者修道院 (desert_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cut_sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cut_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cut_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 smooth_sandstone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 7
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 18
replaceitem block ~4 ~-3 ~3 slot.container 2 gold_nugget 15
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 7
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 18
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 4
replaceitem block ~4 ~-3 ~3 slot.container 10 enchanted_golden_apple 4
replaceitem block ~4 ~-3 ~3 slot.container 11 bread 14
replaceitem block ~4 ~-3 ~3 slot.container 12 gold_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 14 emerald 4
loot insert ~4 ~-3 ~3 loot "rsf/desert"
loot insert ~4 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 cut_sandstone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 cut_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 cut_sandstone_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 smooth_sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 birch_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-6 ~-10 ~7 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~7 ~-7 chiseled_sandstone []
setblock ~-9 ~8 ~-6 gold_block []
setblock ~9 ~8 ~-6 gold_block []
setblock ~-2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 10 tnt 4
replaceitem block ~-5 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 14 enchanted_golden_apple 5
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
