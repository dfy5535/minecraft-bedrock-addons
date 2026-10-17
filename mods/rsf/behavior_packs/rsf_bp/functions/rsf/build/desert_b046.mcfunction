# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1326/4224 | 主题内编号: b046/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·要塞校场比武演武台 (desert_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 sandstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 smooth_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 gunpowder 17
replaceitem block ~5 ~-3 ~4 slot.container 1 string 8
replaceitem block ~5 ~-3 ~4 slot.container 2 spider_eye 7
replaceitem block ~5 ~-3 ~4 slot.container 3 arrow 18
replaceitem block ~5 ~-3 ~4 slot.container 4 gold_nugget 15
replaceitem block ~5 ~-3 ~4 slot.container 5 ender_pearl 7
replaceitem block ~5 ~-3 ~4 slot.container 9 bread 16
replaceitem block ~5 ~-3 ~4 slot.container 10 gold_ingot 6
replaceitem block ~5 ~-3 ~4 slot.container 11 iron_ingot 7
replaceitem block ~5 ~-3 ~4 slot.container 12 emerald 6
replaceitem block ~5 ~-3 ~4 slot.container 13 diamond 5
replaceitem block ~5 ~-3 ~4 slot.container 14 tnt 8
loot insert ~5 ~-3 ~4 loot "rsf/desert"
loot insert ~5 ~-3 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 sandstone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 yellow_terracotta []
setblock ~-7 ~10 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 yellow_terracotta []
setblock ~-7 ~10 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 yellow_terracotta []
setblock ~6 ~10 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~9 ~6 yellow_terracotta []
setblock ~6 ~10 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 yellow_terracotta []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 birch_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 chiseled_sandstone []
setblock ~-7 ~9 ~-6 campfire []
setblock ~-7 ~8 ~6 chiseled_sandstone []
setblock ~-7 ~9 ~6 campfire []
setblock ~7 ~8 ~-6 chiseled_sandstone []
setblock ~7 ~9 ~-6 campfire []
setblock ~7 ~8 ~6 chiseled_sandstone []
setblock ~7 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~9 ~2 sandstone []
fill ~8 ~1 ~-1 ~9 ~8 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~10 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-10 ~0 ~-7 ~-11 ~6 ~-8 chiseled_sandstone []
fill ~9 ~0 ~-7 ~10 ~6 ~-8 chiseled_sandstone []
setblock ~-10 ~7 ~-7 gold_block []
setblock ~10 ~7 ~-7 gold_block []
setblock ~-1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gold_nugget 18
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 string 11
replaceitem block ~-6 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-6 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 12 enchanted_golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 13 bread 10
replaceitem block ~-6 ~1 ~4 slot.container 14 gold_ingot 7
loot insert ~-6 ~1 ~4 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
