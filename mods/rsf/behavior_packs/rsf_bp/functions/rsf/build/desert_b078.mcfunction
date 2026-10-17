# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1358/4224 | 主题内编号: b078/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·下沉祭池图腾柱群 (desert_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 yellow_terracotta []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 rotten_flesh 19
replaceitem block ~-4 ~-4 ~3 slot.container 1 bone 18
replaceitem block ~-4 ~-4 ~3 slot.container 2 gunpowder 17
replaceitem block ~-4 ~-4 ~3 slot.container 3 string 8
replaceitem block ~-4 ~-4 ~3 slot.container 4 spider_eye 7
replaceitem block ~-4 ~-4 ~3 slot.container 5 arrow 18
replaceitem block ~-4 ~-4 ~3 slot.container 9 golden_apple 3
replaceitem block ~-4 ~-4 ~3 slot.container 10 enchanted_golden_apple 3
replaceitem block ~-4 ~-4 ~3 slot.container 11 bread 13
replaceitem block ~-4 ~-4 ~3 slot.container 12 gold_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~-4 ~3 slot.container 14 emerald 10
loot insert ~-4 ~-4 ~3 loot "rsf/desert"
loot insert ~-4 ~-4 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 yellow_terracotta []
fill ~0 ~1 ~-5 ~0 ~2 ~5 yellow_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_sandstone []
setblock ~-6 ~10 ~-5 campfire []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_sandstone []
setblock ~-6 ~10 ~5 campfire []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_sandstone []
setblock ~6 ~10 ~-5 campfire []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_sandstone []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 chiseled_sandstone []
setblock ~-8 ~6 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 chiseled_sandstone []
setblock ~-8 ~6 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 chiseled_sandstone []
setblock ~8 ~6 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~5 ~7 chiseled_sandstone []
setblock ~8 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-10 ~8 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~8 ~-9 chiseled_sandstone []
setblock ~-9 ~9 ~-8 gold_block []
setblock ~9 ~9 ~-8 gold_block []
setblock ~0 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 5
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 12 tnt 7
replaceitem block ~-5 ~1 ~3 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-4 ~0
