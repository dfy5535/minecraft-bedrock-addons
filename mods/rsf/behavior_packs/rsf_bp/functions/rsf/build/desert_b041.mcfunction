# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1321/4224 | 主题内编号: b041/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·八角看台古罗马斗技场 (desert_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 smooth_sandstone [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 smooth_sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cut_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 smooth_sandstone []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 lapis_block []
setblock ~-5 ~-4 ~-4 torch []
setblock ~5 ~-4 ~4 torch []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 bone 18
replaceitem block ~0 ~-2 ~4 slot.container 1 gunpowder 17
replaceitem block ~0 ~-2 ~4 slot.container 2 string 8
replaceitem block ~0 ~-2 ~4 slot.container 3 spider_eye 7
replaceitem block ~0 ~-2 ~4 slot.container 4 arrow 18
replaceitem block ~0 ~-2 ~4 slot.container 5 gold_nugget 15
replaceitem block ~0 ~-2 ~4 slot.container 9 emerald 6
replaceitem block ~0 ~-2 ~4 slot.container 10 diamond 5
replaceitem block ~0 ~-2 ~4 slot.container 11 tnt 8
replaceitem block ~0 ~-2 ~4 slot.container 12 saddle 1
replaceitem block ~0 ~-2 ~4 slot.container 13 water_bucket 1
replaceitem block ~0 ~-2 ~4 slot.container 14 golden_apple 2
loot insert ~0 ~-2 ~4 loot "rsf/desert"
loot insert ~0 ~-2 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 smooth_sandstone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 air []
fill ~7 ~1 ~6 ~7 ~8 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 sandstone []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 sandstone []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 sandstone []
fill ~6 ~1 ~5 ~6 ~7 ~5 sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 sandstone []
setblock ~-7 ~10 ~-6 torch []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 sandstone []
setblock ~-7 ~10 ~6 torch []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 sandstone []
setblock ~7 ~10 ~-6 torch []
fill ~7 ~7 ~6 ~7 ~9 ~6 sandstone []
setblock ~7 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 sandstone []
setblock ~-9 ~6 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 sandstone []
setblock ~-9 ~6 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 sandstone []
setblock ~9 ~6 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~5 ~8 sandstone []
setblock ~9 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x8x4) ---
fill ~-10 ~0 ~-8 ~-11 ~6 ~-9 chiseled_sandstone []
fill ~9 ~0 ~-8 ~10 ~6 ~-9 chiseled_sandstone []
setblock ~-10 ~7 ~-8 gold_block []
setblock ~10 ~7 ~-8 gold_block []
setblock ~1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 13
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~6 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 5 gold_nugget 18
replaceitem block ~6 ~1 ~4 slot.container 9 gold_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 11 emerald 4
replaceitem block ~6 ~1 ~4 slot.container 12 diamond 3
replaceitem block ~6 ~1 ~4 slot.container 13 tnt 6
replaceitem block ~6 ~1 ~4 slot.container 14 saddle 1
loot insert ~6 ~1 ~4 loot "rsf/desert"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 spider_eye 13
replaceitem block ~-6 ~1 ~5 slot.container 2 arrow 16
replaceitem block ~-6 ~1 ~5 slot.container 3 gold_nugget 13
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-6 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~-6 ~1 ~5 slot.container 12 diamond 8
replaceitem block ~-6 ~1 ~5 slot.container 13 tnt 4
replaceitem block ~-6 ~1 ~5 slot.container 14 saddle 1
loot insert ~-6 ~1 ~5 loot "rsf/desert"
loot insert ~-6 ~1 ~5 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
