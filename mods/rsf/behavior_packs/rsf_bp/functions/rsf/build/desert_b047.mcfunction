# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1327/4224 | 主题内编号: b047/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·深渊跨桥决斗长台 (desert_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 sandstone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 sandstone [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 sandstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 smooth_sandstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 cut_sandstone []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 bone 18
replaceitem block ~-5 ~-3 ~2 slot.container 1 gunpowder 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 spider_eye 7
replaceitem block ~-5 ~-3 ~2 slot.container 4 arrow 18
replaceitem block ~-5 ~-3 ~2 slot.container 5 gold_nugget 15
replaceitem block ~-5 ~-3 ~2 slot.container 9 tnt 9
replaceitem block ~-5 ~-3 ~2 slot.container 10 saddle 1
replaceitem block ~-5 ~-3 ~2 slot.container 11 water_bucket 1
replaceitem block ~-5 ~-3 ~2 slot.container 12 golden_apple 3
replaceitem block ~-5 ~-3 ~2 slot.container 13 enchanted_golden_apple 3
replaceitem block ~-5 ~-3 ~2 slot.container 14 bread 13
loot insert ~-5 ~-3 ~2 loot "rsf/desert"
loot insert ~-5 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~7 ~4 sandstone []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 chiseled_sandstone []
setblock ~-7 ~10 ~-4 torch []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 chiseled_sandstone []
setblock ~-7 ~10 ~4 torch []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 chiseled_sandstone []
setblock ~7 ~10 ~-4 torch []
fill ~7 ~7 ~4 ~7 ~9 ~4 chiseled_sandstone []
setblock ~7 ~10 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~5 ~-6 chiseled_sandstone []
setblock ~-9 ~6 ~-6 torch []
fill ~-9 ~0 ~6 ~-9 ~5 ~6 chiseled_sandstone []
setblock ~-9 ~6 ~6 torch []
fill ~9 ~0 ~-6 ~9 ~5 ~-6 chiseled_sandstone []
setblock ~9 ~6 ~-6 torch []
fill ~9 ~0 ~6 ~9 ~5 ~6 chiseled_sandstone []
setblock ~9 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x6x5) ---
fill ~-10 ~0 ~-6 ~-11 ~7 ~-7 chiseled_sandstone []
fill ~9 ~0 ~-6 ~10 ~7 ~-7 chiseled_sandstone []
setblock ~-10 ~8 ~-6 gold_block []
setblock ~10 ~8 ~-6 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 10
replaceitem block ~6 ~1 ~2 slot.container 1 rotten_flesh 14
replaceitem block ~6 ~1 ~2 slot.container 2 bone 13
replaceitem block ~6 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~2 slot.container 4 string 11
replaceitem block ~6 ~1 ~2 slot.container 5 spider_eye 10
replaceitem block ~6 ~1 ~2 slot.container 9 enchanted_golden_apple 5
replaceitem block ~6 ~1 ~2 slot.container 10 bread 15
replaceitem block ~6 ~1 ~2 slot.container 11 gold_ingot 12
replaceitem block ~6 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~6 ~1 ~2 slot.container 13 emerald 5
replaceitem block ~6 ~1 ~2 slot.container 14 diamond 4
loot insert ~6 ~1 ~2 loot "rsf/desert"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 2 string 14
replaceitem block ~-6 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-6 ~1 ~3 slot.container 4 arrow 16
replaceitem block ~-6 ~1 ~3 slot.container 5 gold_nugget 13
replaceitem block ~-6 ~1 ~3 slot.container 9 enchanted_golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 10 bread 13
replaceitem block ~-6 ~1 ~3 slot.container 11 gold_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-6 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~-6 ~1 ~3 slot.container 14 diamond 2
loot insert ~-6 ~1 ~3 loot "rsf/desert"
loot insert ~-6 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
