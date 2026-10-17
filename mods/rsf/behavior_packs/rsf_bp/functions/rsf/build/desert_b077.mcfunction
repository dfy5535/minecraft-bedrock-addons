# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1357/4224 | 主题内编号: b077/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子鸟居图腾神道 (desert_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 smooth_sandstone [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 smooth_sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cut_sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 smooth_sandstone []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-5 ~7 ~8 ~5 sandstone_slab []
fill ~-5 ~9 ~-3 ~5 ~10 ~3 sandstone []
fill ~-6 ~11 ~-4 ~6 ~11 ~4 sandstone_slab []
setblock ~0 ~12 ~0 lapis_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 orange_terracotta []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-6 ~-10 ~7 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~7 ~-7 chiseled_sandstone []
setblock ~-9 ~8 ~-6 gold_block []
setblock ~9 ~8 ~-6 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~2 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~2 slot.container 4 bone 13
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 9 enchanted_golden_apple 7
replaceitem block ~5 ~1 ~2 slot.container 10 bread 10
replaceitem block ~5 ~1 ~2 slot.container 11 gold_ingot 7
replaceitem block ~5 ~1 ~2 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~2 slot.container 13 emerald 7
replaceitem block ~5 ~1 ~2 slot.container 14 diamond 6
loot insert ~5 ~1 ~2 loot "rsf/desert"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 9 enchanted_golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 10 bread 15
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 5
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 4
loot insert ~-5 ~1 ~3 loot "rsf/desert"
loot insert ~-5 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
