# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1401/4224 | 主题内编号: b121/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·卫城廊柱王座大殿与地宫 (desert_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 smooth_sandstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 smooth_sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cut_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 torch []
setblock ~5 ~-5 ~0 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 7
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 19
replaceitem block ~0 ~-3 ~4 slot.container 2 bone 18
replaceitem block ~0 ~-3 ~4 slot.container 3 gunpowder 17
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 spider_eye 7
replaceitem block ~0 ~-3 ~4 slot.container 9 emerald 4
replaceitem block ~0 ~-3 ~4 slot.container 10 diamond 3
replaceitem block ~0 ~-3 ~4 slot.container 11 tnt 6
replaceitem block ~0 ~-3 ~4 slot.container 12 saddle 1
replaceitem block ~0 ~-3 ~4 slot.container 13 water_bucket 1
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~4 loot "rsf/desert"
loot insert ~0 ~-3 ~4 loot "chests/desert_pyramid"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 spider_eye 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 emerald 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 diamond 2
replaceitem block ~0 ~-3 ~-4 slot.container 11 tnt 5
replaceitem block ~0 ~-3 ~-4 slot.container 12 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 water_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 6
loot insert ~0 ~-3 ~-4 loot "rsf/desert"
loot insert ~0 ~-3 ~-4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~9 ~6 smooth_sandstone []
fill ~-6 ~1 ~0 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~9 ~-6 sandstone []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 sandstone []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 sandstone []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 sandstone []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 sandstone []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 sandstone []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 sandstone []
fill ~7 ~1 ~-6 ~7 ~9 ~-6 sandstone []
fill ~-7 ~9 ~-6 ~7 ~9 ~-1 orange_terracotta []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~10 ~-7 ~-8 ~10 ~7 sandstone_stairs ["weirdo_direction"=0]
fill ~8 ~10 ~-7 ~8 ~10 ~7 sandstone_stairs ["weirdo_direction"=1]
fill ~-7 ~11 ~-6 ~-7 ~11 ~6 sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~11 ~-6 ~7 ~11 ~6 sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-6 ~6 ~11 ~6 sandstone_slab []
fill ~0 ~12 ~-7 ~0 ~12 ~7 orange_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 sandstone []
setblock ~-9 ~6 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 sandstone []
setblock ~-9 ~6 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 sandstone []
setblock ~9 ~6 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~5 ~8 sandstone []
setblock ~9 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-10 ~0 ~-7 ~-11 ~6 ~-8 chiseled_sandstone []
fill ~9 ~0 ~-7 ~10 ~6 ~-8 chiseled_sandstone []
setblock ~-10 ~7 ~-7 gold_block []
setblock ~10 ~7 ~-7 gold_block []
setblock ~-3 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 13
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~6 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 5 gold_nugget 18
replaceitem block ~6 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~6 ~1 ~4 slot.container 12 diamond 6
replaceitem block ~6 ~1 ~4 slot.container 13 tnt 9
replaceitem block ~6 ~1 ~4 slot.container 14 saddle 1
loot insert ~6 ~1 ~4 loot "rsf/desert"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 spider_eye 13
replaceitem block ~-6 ~1 ~5 slot.container 2 arrow 16
replaceitem block ~-6 ~1 ~5 slot.container 3 gold_nugget 13
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-6 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~-6 ~1 ~5 slot.container 11 emerald 5
replaceitem block ~-6 ~1 ~5 slot.container 12 diamond 4
replaceitem block ~-6 ~1 ~5 slot.container 13 tnt 7
replaceitem block ~-6 ~1 ~5 slot.container 14 saddle 1
loot insert ~-6 ~1 ~5 loot "rsf/desert"
loot insert ~-6 ~1 ~5 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
