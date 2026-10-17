# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1374/4224 | 主题内编号: b094/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·圆形圣泉祈祷亭 (desert_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 yellow_terracotta []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 rotten_flesh 19
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 18
replaceitem block ~-3 ~-3 ~2 slot.container 2 gunpowder 17
replaceitem block ~-3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 spider_eye 7
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 18
replaceitem block ~-3 ~-3 ~2 slot.container 9 saddle 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 water_bucket 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 7
replaceitem block ~-3 ~-3 ~2 slot.container 12 enchanted_golden_apple 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 bread 10
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 7
loot insert ~-3 ~-3 ~2 loot "rsf/desert"
loot insert ~-3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 yellow_terracotta []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 chiseled_sandstone []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 chiseled_sandstone []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 chiseled_sandstone []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 chiseled_sandstone []
fill ~-1 ~1 ~-4 ~-1 ~7 ~-4 chiseled_sandstone []
fill ~-1 ~1 ~4 ~-1 ~7 ~4 chiseled_sandstone []
fill ~1 ~1 ~-4 ~1 ~7 ~-4 chiseled_sandstone []
fill ~1 ~1 ~4 ~1 ~7 ~4 chiseled_sandstone []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 chiseled_sandstone []
fill ~3 ~1 ~4 ~3 ~7 ~4 chiseled_sandstone []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 chiseled_sandstone []
fill ~5 ~1 ~4 ~5 ~7 ~4 chiseled_sandstone []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 chiseled_sandstone []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 chiseled_sandstone []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 chiseled_sandstone []
fill ~5 ~1 ~0 ~5 ~7 ~0 chiseled_sandstone []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 chiseled_sandstone []
fill ~5 ~1 ~2 ~5 ~7 ~2 chiseled_sandstone []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 yellow_terracotta []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_sandstone []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_sandstone []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_sandstone []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_sandstone []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-8 ~0 ~-5 ~-9 ~4 ~-6 chiseled_sandstone []
fill ~7 ~0 ~-5 ~8 ~4 ~-6 chiseled_sandstone []
setblock ~-8 ~5 ~-5 gold_block []
setblock ~8 ~5 ~-5 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 10
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 bread 12
replaceitem block ~-4 ~1 ~2 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 9
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond 8
replaceitem block ~-4 ~1 ~2 slot.container 14 tnt 4
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
