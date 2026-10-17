# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1346/4224 | 主题内编号: b066/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·崩塌角楼古堡残垣 (desert_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 campfire []
setblock ~4 ~-5 ~-3 campfire []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 7
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 18
replaceitem block ~4 ~-3 ~3 slot.container 2 gold_nugget 15
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 7
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 18
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 10 enchanted_golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 11 bread 16
replaceitem block ~4 ~-3 ~3 slot.container 12 gold_ingot 6
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 7
replaceitem block ~4 ~-3 ~3 slot.container 14 emerald 6
loot insert ~4 ~-3 ~3 loot "rsf/desert"
loot insert ~4 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~10 ~-4 yellow_terracotta []
setblock ~-6 ~11 ~-5 campfire []
fill ~-6 ~1 ~4 ~-5 ~10 ~5 yellow_terracotta []
setblock ~-6 ~11 ~4 campfire []
fill ~5 ~1 ~-5 ~6 ~10 ~-4 yellow_terracotta []
setblock ~5 ~11 ~-5 campfire []
fill ~5 ~1 ~4 ~6 ~10 ~5 yellow_terracotta []
setblock ~5 ~11 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 sandstone_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 chiseled_sandstone []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 chiseled_sandstone []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 chiseled_sandstone []
fill ~7 ~0 ~2 ~7 ~7 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~-8 ~-10 ~6 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~6 ~-9 chiseled_sandstone []
setblock ~-9 ~7 ~-8 gold_block []
setblock ~9 ~7 ~-8 gold_block []
setblock ~0 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 9 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 12 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 13 bread 16
replaceitem block ~-5 ~1 ~3 slot.container 14 gold_ingot 6
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0
