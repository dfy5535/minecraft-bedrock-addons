# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1306/4224 | 主题内编号: b026/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·尖顶信标引航高塔 (desert_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 sandstone [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 sandstone [] replace water
fill ~-5 ~1 ~-4 ~5 ~14 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 sandstone []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 gold_nugget 15
replaceitem block ~2 ~-3 ~1 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~1 slot.container 2 rotten_flesh 19
replaceitem block ~2 ~-3 ~1 slot.container 3 bone 18
replaceitem block ~2 ~-3 ~1 slot.container 4 gunpowder 17
replaceitem block ~2 ~-3 ~1 slot.container 5 string 8
replaceitem block ~2 ~-3 ~1 slot.container 9 bread 10
replaceitem block ~2 ~-3 ~1 slot.container 10 gold_ingot 7
replaceitem block ~2 ~-3 ~1 slot.container 11 iron_ingot 8
replaceitem block ~2 ~-3 ~1 slot.container 12 emerald 7
replaceitem block ~2 ~-3 ~1 slot.container 13 diamond 6
replaceitem block ~2 ~-3 ~1 slot.container 14 tnt 9
loot insert ~2 ~-3 ~1 loot "rsf/desert"
loot insert ~2 ~-3 ~1 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~12 ~3 sandstone []
fill ~-3 ~1 ~-2 ~3 ~11 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~13 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~13 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~13 ~3 air []
fill ~4 ~1 ~3 ~4 ~13 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~12 ~-2 chiseled_sandstone []
fill ~3 ~1 ~-2 ~3 ~12 ~-2 chiseled_sandstone []
fill ~-3 ~1 ~2 ~-3 ~12 ~2 chiseled_sandstone []
fill ~3 ~1 ~2 ~3 ~12 ~2 chiseled_sandstone []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 yellow_terracotta []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 sandstone []
fill ~0 ~18 ~0 ~0 ~21 ~0 emerald_block []
setblock ~0 ~22 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~11 ~-2 chiseled_sandstone []
fill ~-5 ~0 ~2 ~-5 ~11 ~2 chiseled_sandstone []
fill ~5 ~0 ~-2 ~5 ~11 ~-2 chiseled_sandstone []
fill ~5 ~0 ~2 ~5 ~11 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-7 ~0 ~-5 ~-8 ~6 ~-6 chiseled_sandstone []
fill ~6 ~0 ~-5 ~7 ~6 ~-6 chiseled_sandstone []
setblock ~-7 ~7 ~-5 gold_block []
setblock ~7 ~7 ~-5 gold_block []
setblock ~1 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~1 slot.container 1 string 11
replaceitem block ~-3 ~1 ~1 slot.container 2 spider_eye 10
replaceitem block ~-3 ~1 ~1 slot.container 3 arrow 21
replaceitem block ~-3 ~1 ~1 slot.container 4 gold_nugget 18
replaceitem block ~-3 ~1 ~1 slot.container 5 ender_pearl 10
replaceitem block ~-3 ~1 ~1 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~1 slot.container 10 water_bucket 1
replaceitem block ~-3 ~1 ~1 slot.container 11 golden_apple 8
replaceitem block ~-3 ~1 ~1 slot.container 12 enchanted_golden_apple 1
replaceitem block ~-3 ~1 ~1 slot.container 13 bread 11
replaceitem block ~-3 ~1 ~1 slot.container 14 gold_ingot 8
loot insert ~-3 ~1 ~1 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
