# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1338/4224 | 主题内编号: b058/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·十字拱顶家族陵墓 (desert_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
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

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 19
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 18
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 17
replaceitem block ~0 ~-4 ~3 slot.container 3 string 8
replaceitem block ~0 ~-4 ~3 slot.container 4 spider_eye 7
replaceitem block ~0 ~-4 ~3 slot.container 5 arrow 18
replaceitem block ~0 ~-4 ~3 slot.container 9 diamond 2
replaceitem block ~0 ~-4 ~3 slot.container 10 tnt 5
replaceitem block ~0 ~-4 ~3 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~3 slot.container 12 water_bucket 1
replaceitem block ~0 ~-4 ~3 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~3 slot.container 14 enchanted_golden_apple 6
loot insert ~0 ~-4 ~3 loot "rsf/desert"
loot insert ~0 ~-4 ~3 loot "chests/desert_pyramid"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 arrow 16
replaceitem block ~0 ~-4 ~-3 slot.container 9 diamond 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 tnt 4
replaceitem block ~0 ~-4 ~-3 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 water_bucket 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 5
replaceitem block ~0 ~-4 ~-3 slot.container 14 enchanted_golden_apple 5
loot insert ~0 ~-4 ~-3 loot "rsf/desert"
loot insert ~0 ~-4 ~-3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 sandstone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 sandstone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 birch_fence []
setblock ~6 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 sandstone_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 yellow_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 chiseled_sandstone []
setblock ~-8 ~6 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 chiseled_sandstone []
setblock ~-8 ~6 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 chiseled_sandstone []
setblock ~8 ~6 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~5 ~7 chiseled_sandstone []
setblock ~8 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~-6 ~-10 ~8 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~8 ~-7 chiseled_sandstone []
setblock ~-9 ~9 ~-6 gold_block []
setblock ~9 ~9 ~-6 gold_block []
setblock ~-2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~-5 ~1 ~3 slot.container 12 tnt 8
replaceitem block ~-5 ~1 ~3 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
