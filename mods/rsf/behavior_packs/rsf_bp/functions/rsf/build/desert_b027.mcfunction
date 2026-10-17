# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1307/4224 | 主题内编号: b027/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子连廊警戒塔楼 (desert_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 sandstone [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 sandstone [] replace water
fill ~-7 ~1 ~-4 ~7 ~12 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sandstone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cut_sandstone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 sandstone []
fill ~2 ~1 ~-3 ~6 ~11 ~3 sandstone []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 cut_sandstone []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~10 ~-3 ~6 ~10 ~3 cut_sandstone []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 cobblestone_wall []
fill ~-5 ~11 ~-2 ~5 ~11 ~2 air []
setblock ~-6 ~11 ~-3 chiseled_sandstone []
setblock ~-6 ~12 ~-3 torch []
setblock ~-6 ~11 ~3 chiseled_sandstone []
setblock ~-6 ~12 ~3 torch []
setblock ~6 ~11 ~-3 chiseled_sandstone []
setblock ~6 ~12 ~-3 torch []
setblock ~6 ~11 ~3 chiseled_sandstone []
setblock ~6 ~12 ~3 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-6 ~-10 ~7 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~7 ~-7 chiseled_sandstone []
setblock ~-9 ~8 ~-6 gold_block []
setblock ~9 ~8 ~-6 gold_block []
setblock ~-3 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~1 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~1 slot.container 3 gold_nugget 18
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 10
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~1 slot.container 9 enchanted_golden_apple 6
replaceitem block ~5 ~1 ~1 slot.container 10 bread 16
replaceitem block ~5 ~1 ~1 slot.container 11 gold_ingot 6
replaceitem block ~5 ~1 ~1 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~1 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~1 slot.container 14 diamond 5
loot insert ~5 ~1 ~1 loot "rsf/desert"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 arrow 16
replaceitem block ~-5 ~1 ~2 slot.container 1 gold_nugget 13
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 5
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 9 enchanted_golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 10 bread 14
replaceitem block ~-5 ~1 ~2 slot.container 11 gold_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 13 emerald 4
replaceitem block ~-5 ~1 ~2 slot.container 14 diamond 3
loot insert ~-5 ~1 ~2 loot "rsf/desert"
loot insert ~-5 ~1 ~2 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
