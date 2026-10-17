# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1348/4224 | 主题内编号: b068/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·断裂凯旋高架拱廊 (desert_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
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

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~8 ~4 cut_sandstone []
fill ~-6 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 cut_sandstone_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-7 ~7 ~-1 ~-7 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 smooth_sandstone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x6x6) ---
fill ~-10 ~0 ~-6 ~-11 ~8 ~-7 chiseled_sandstone []
fill ~9 ~0 ~-6 ~10 ~8 ~-7 chiseled_sandstone []
setblock ~-10 ~9 ~-6 gold_block []
setblock ~10 ~9 ~-6 gold_block []
setblock ~0 ~0 ~-5 water []

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
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 10 emerald 9
replaceitem block ~-6 ~1 ~2 slot.container 11 diamond 8
replaceitem block ~-6 ~1 ~2 slot.container 12 tnt 4
replaceitem block ~-6 ~1 ~2 slot.container 13 saddle 1
replaceitem block ~-6 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-6 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
