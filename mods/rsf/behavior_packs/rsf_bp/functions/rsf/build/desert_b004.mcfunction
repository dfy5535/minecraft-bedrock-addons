# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1284/4224 | 主题内编号: b004/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子火盆高台神坛 (desert_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cut_sandstone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cut_sandstone [] replace water
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sandstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 smooth_sandstone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 cut_sandstone []
fill ~2 ~1 ~-4 ~7 ~9 ~4 cut_sandstone []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 smooth_sandstone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-4 ~-7 ~10 ~-4 chiseled_sandstone []
setblock ~-7 ~11 ~-4 lantern []
fill ~-7 ~8 ~4 ~-7 ~10 ~4 chiseled_sandstone []
setblock ~-7 ~11 ~4 lantern []
fill ~7 ~8 ~-4 ~7 ~10 ~-4 chiseled_sandstone []
setblock ~7 ~11 ~-4 lantern []
fill ~7 ~8 ~4 ~7 ~10 ~4 chiseled_sandstone []
setblock ~7 ~11 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 smooth_sandstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cut_sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x5x2) ---
fill ~-10 ~0 ~-5 ~-11 ~4 ~-6 chiseled_sandstone []
fill ~9 ~0 ~-5 ~10 ~4 ~-6 chiseled_sandstone []
setblock ~-10 ~5 ~-5 gold_block []
setblock ~10 ~5 ~-5 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 spider_eye 10
replaceitem block ~-6 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 2 gold_nugget 18
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 10
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-6 ~1 ~2 slot.container 9 bread 13
replaceitem block ~-6 ~1 ~2 slot.container 10 gold_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~-6 ~1 ~2 slot.container 12 emerald 10
replaceitem block ~-6 ~1 ~2 slot.container 13 diamond 2
replaceitem block ~-6 ~1 ~2 slot.container 14 tnt 5
loot insert ~-6 ~1 ~2 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
