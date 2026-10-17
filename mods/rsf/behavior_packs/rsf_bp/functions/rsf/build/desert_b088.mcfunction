# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1368/4224 | 主题内编号: b088/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·矿车铁轨转运仓库 (desert_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cut_sandstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cut_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cut_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 smooth_sandstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 spider_eye 7
replaceitem block ~3 ~-3 ~4 slot.container 1 arrow 18
replaceitem block ~3 ~-3 ~4 slot.container 2 gold_nugget 15
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 18
replaceitem block ~3 ~-3 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-3 ~4 slot.container 10 water_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 12 enchanted_golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 13 bread 13
replaceitem block ~3 ~-3 ~4 slot.container 14 gold_ingot 10
loot insert ~3 ~-3 ~4 loot "rsf/desert"
loot insert ~3 ~-3 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 cut_sandstone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 chiseled_sandstone []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 chiseled_sandstone []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 chiseled_sandstone []
fill ~5 ~1 ~6 ~5 ~7 ~6 chiseled_sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 birch_fence []
setblock ~5 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 cut_sandstone_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 smooth_sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 smooth_sandstone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-9 ~8 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~8 ~-8 chiseled_sandstone []
setblock ~-8 ~9 ~-7 gold_block []
setblock ~8 ~9 ~-7 gold_block []
setblock ~-1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 8
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 7
replaceitem block ~-4 ~1 ~4 slot.container 12 tnt 10
replaceitem block ~-4 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~4 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
