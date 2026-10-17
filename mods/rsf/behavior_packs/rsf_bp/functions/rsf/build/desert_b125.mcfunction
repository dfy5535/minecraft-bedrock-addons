# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1405/4224 | 主题内编号: b125/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·巨型阶梯金字塔神王殿 (desert_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 smooth_sandstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 smooth_sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cut_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 lapis_block []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 arrow 18
replaceitem block ~5 ~-3 ~0 slot.container 1 gold_nugget 15
replaceitem block ~5 ~-3 ~0 slot.container 2 ender_pearl 7
replaceitem block ~5 ~-3 ~0 slot.container 3 rotten_flesh 19
replaceitem block ~5 ~-3 ~0 slot.container 4 bone 18
replaceitem block ~5 ~-3 ~0 slot.container 5 gunpowder 17
replaceitem block ~5 ~-3 ~0 slot.container 9 enchanted_golden_apple 4
replaceitem block ~5 ~-3 ~0 slot.container 10 bread 14
replaceitem block ~5 ~-3 ~0 slot.container 11 gold_ingot 11
replaceitem block ~5 ~-3 ~0 slot.container 12 iron_ingot 12
replaceitem block ~5 ~-3 ~0 slot.container 13 emerald 4
replaceitem block ~5 ~-3 ~0 slot.container 14 diamond 3
loot insert ~5 ~-3 ~0 loot "rsf/desert"
loot insert ~5 ~-3 ~0 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 smooth_sandstone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 orange_terracotta []
fill ~-5 ~5 ~-4 ~5 ~10 ~4 sandstone []
fill ~-5 ~1 ~-4 ~5 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~11 ~-6 ~7 ~11 ~6 orange_terracotta []
fill ~-6 ~12 ~-5 ~6 ~12 ~5 sandstone []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 lapis_block []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 sandstone []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 sandstone []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 torch []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 sandstone []
setblock ~-9 ~4 ~0 emerald_block []
setblock ~-9 ~5 ~0 torch []
fill ~9 ~0 ~0 ~9 ~3 ~0 sandstone []
setblock ~9 ~4 ~0 emerald_block []
setblock ~9 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~-10 ~0 ~-8 ~-11 ~5 ~-9 chiseled_sandstone []
fill ~9 ~0 ~-8 ~10 ~5 ~-9 chiseled_sandstone []
setblock ~-10 ~6 ~-8 gold_block []
setblock ~10 ~6 ~-8 gold_block []
setblock ~1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 1 gold_nugget 18
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~6 ~1 ~4 slot.container 4 bone 13
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~6 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~6 ~1 ~4 slot.container 11 tnt 4
replaceitem block ~6 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~6 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~6 ~1 ~4 loot "rsf/desert"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 4 string 14
replaceitem block ~-6 ~1 ~5 slot.container 5 spider_eye 13
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~-6 ~1 ~5 slot.container 10 diamond 6
replaceitem block ~-6 ~1 ~5 slot.container 11 tnt 9
replaceitem block ~-6 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~-6 ~1 ~5 slot.container 13 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-6 ~1 ~5 loot "rsf/desert"
loot insert ~-6 ~1 ~5 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
