# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1373/4224 | 主题内编号: b093/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·U型庭院神道祈福祠 (desert_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 smooth_sandstone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 smooth_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 sandstone_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 sandstone []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 sandstone_slab []
setblock ~0 ~11 ~0 lapis_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 orange_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-10 ~8 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~8 ~-9 chiseled_sandstone []
setblock ~-9 ~9 ~-8 gold_block []
setblock ~9 ~9 ~-8 gold_block []
setblock ~-3 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 11 enchanted_golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 12 bread 14
replaceitem block ~5 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 11 enchanted_golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 12 bread 12
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
