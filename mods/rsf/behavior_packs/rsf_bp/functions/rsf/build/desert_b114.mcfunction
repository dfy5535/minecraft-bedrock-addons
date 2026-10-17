# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1394/4224 | 主题内编号: b114/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双联拱顶植物培育馆 (desert_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 sandstone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 sandstone [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 sandstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 smooth_sandstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 yellow_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 sandstone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 sandstone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 yellow_terracotta []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 yellow_terracotta []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 glass []
fill ~-5 ~8 ~-2 ~5 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 smooth_sandstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~-10 ~0 ~-7 ~-11 ~4 ~-8 chiseled_sandstone []
fill ~9 ~0 ~-7 ~10 ~4 ~-8 chiseled_sandstone []
setblock ~-10 ~5 ~-7 gold_block []
setblock ~10 ~5 ~-7 gold_block []
setblock ~-3 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 string 11
replaceitem block ~-6 ~1 ~2 slot.container 2 spider_eye 10
replaceitem block ~-6 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 4 gold_nugget 18
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 10
replaceitem block ~-6 ~1 ~2 slot.container 9 bread 11
replaceitem block ~-6 ~1 ~2 slot.container 10 gold_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~-6 ~1 ~2 slot.container 13 diamond 7
replaceitem block ~-6 ~1 ~2 slot.container 14 tnt 10
loot insert ~-6 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~2 ~0
