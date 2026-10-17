# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1312/4224 | 主题内编号: b032/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·断顶残垣古哨塔 (desert_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 cut_sandstone [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 cut_sandstone [] replace water
fill ~-5 ~1 ~-5 ~5 ~12 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 sandstone []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 smooth_sandstone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 smooth_sandstone []
setblock ~0 ~-6 ~0 lapis_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gunpowder 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 spider_eye 7
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 18
replaceitem block ~0 ~-3 ~-2 slot.container 4 gold_nugget 15
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 bread 16
replaceitem block ~0 ~-3 ~-2 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 emerald 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 tnt 8
loot insert ~0 ~-3 ~-2 loot "rsf/desert"
loot insert ~0 ~-3 ~-2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~10 ~4 cut_sandstone []
fill ~-3 ~1 ~-3 ~3 ~9 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~10 ~-4 chiseled_sandstone []
fill ~-4 ~1 ~4 ~-4 ~10 ~4 chiseled_sandstone []
fill ~4 ~1 ~-4 ~4 ~10 ~-4 chiseled_sandstone []
fill ~4 ~1 ~4 ~4 ~10 ~4 chiseled_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 birch_fence []
setblock ~4 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~10 ~-4 ~4 ~10 ~4 cut_sandstone_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-4 ~9 ~-1 ~-4 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 chiseled_sandstone []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 chiseled_sandstone []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 chiseled_sandstone []
fill ~5 ~0 ~2 ~5 ~9 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~-6 ~-8 ~7 ~-7 chiseled_sandstone []
fill ~6 ~0 ~-6 ~7 ~7 ~-7 chiseled_sandstone []
setblock ~-7 ~8 ~-6 gold_block []
setblock ~7 ~8 ~-6 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-3 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 spider_eye 10
replaceitem block ~-3 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-3 ~1 ~2 slot.container 9 diamond 5
replaceitem block ~-3 ~1 ~2 slot.container 10 tnt 8
replaceitem block ~-3 ~1 ~2 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~-3 ~1 ~2 slot.container 14 enchanted_golden_apple 2
loot insert ~-3 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
