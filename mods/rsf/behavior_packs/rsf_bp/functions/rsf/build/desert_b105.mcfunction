# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1385/4224 | 主题内编号: b105/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·满书架奥术附魔书院 (desert_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 smooth_sandstone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 smooth_sandstone [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cut_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 sandstone []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 arrow 18
replaceitem block ~3 ~-2 ~3 slot.container 1 gold_nugget 15
replaceitem block ~3 ~-2 ~3 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-2 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~3 ~-2 ~3 slot.container 4 bone 18
replaceitem block ~3 ~-2 ~3 slot.container 5 gunpowder 17
replaceitem block ~3 ~-2 ~3 slot.container 9 water_bucket 1
replaceitem block ~3 ~-2 ~3 slot.container 10 golden_apple 5
replaceitem block ~3 ~-2 ~3 slot.container 11 enchanted_golden_apple 5
replaceitem block ~3 ~-2 ~3 slot.container 12 bread 15
replaceitem block ~3 ~-2 ~3 slot.container 13 gold_ingot 12
replaceitem block ~3 ~-2 ~3 slot.container 14 iron_ingot 6
loot insert ~3 ~-2 ~3 loot "rsf/desert"
loot insert ~3 ~-2 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 smooth_sandstone []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~8 ~-5 sandstone []
fill ~-5 ~1 ~5 ~-5 ~8 ~5 sandstone []
fill ~5 ~1 ~-5 ~5 ~8 ~-5 sandstone []
fill ~5 ~1 ~5 ~5 ~8 ~5 sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-6 ~-6 ~9 ~6 sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-6 ~6 ~9 ~6 sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-5 ~-5 ~10 ~5 sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-5 ~5 ~10 ~5 sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~4 ~10 ~5 sandstone_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 orange_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 chiseled_sandstone []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 chiseled_sandstone []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 chiseled_sandstone []
fill ~5 ~0 ~2 ~5 ~9 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-8 ~-9 ~5 ~-9 chiseled_sandstone []
fill ~7 ~0 ~-8 ~8 ~5 ~-9 chiseled_sandstone []
setblock ~-8 ~6 ~-8 gold_block []
setblock ~8 ~6 ~-8 gold_block []
setblock ~1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 13
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 5 gold_nugget 18
replaceitem block ~4 ~1 ~3 slot.container 9 emerald 10
replaceitem block ~4 ~1 ~3 slot.container 10 diamond 2
replaceitem block ~4 ~1 ~3 slot.container 11 tnt 5
replaceitem block ~4 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~3 loot "rsf/desert"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~4 slot.container 2 arrow 16
replaceitem block ~-4 ~1 ~4 slot.container 3 gold_nugget 13
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~-4 ~1 ~4 slot.container 10 diamond 7
replaceitem block ~-4 ~1 ~4 slot.container 11 tnt 10
replaceitem block ~-4 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~4 loot "rsf/desert"
loot insert ~-4 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
