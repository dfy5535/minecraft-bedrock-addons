# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1333/4224 | 主题内编号: b053/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·测绘师观景制图站 (desert_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 smooth_sandstone [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 smooth_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 smooth_sandstone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sandstone []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sandstone []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sandstone []
fill ~4 ~1 ~3 ~4 ~8 ~3 sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 orange_terracotta []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 sandstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 lapis_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 orange_terracotta []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~-6 ~-9 ~8 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~8 ~-7 chiseled_sandstone []
setblock ~-8 ~9 ~-6 gold_block []
setblock ~8 ~9 ~-6 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 1 gold_nugget 18
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 10
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~1 ~2 slot.container 4 bone 13
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 11 enchanted_golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 12 bread 16
replaceitem block ~4 ~1 ~2 slot.container 13 gold_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 7
loot insert ~4 ~1 ~2 loot "rsf/desert"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 11 enchanted_golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 12 bread 14
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-4 ~1 ~3 loot "rsf/desert"
loot insert ~-4 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
