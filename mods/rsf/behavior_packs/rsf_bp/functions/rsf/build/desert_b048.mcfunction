# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1328/4224 | 主题内编号: b048/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·阶梯王座巅峰试炼台 (desert_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cut_sandstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cut_sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cut_sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 smooth_sandstone []
setblock ~0 ~-6 ~0 lapis_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 7
replaceitem block ~0 ~-3 ~-4 slot.container 3 arrow 18
replaceitem block ~0 ~-3 ~-4 slot.container 4 gold_nugget 15
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 7
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 3
replaceitem block ~0 ~-3 ~-4 slot.container 10 enchanted_golden_apple 3
replaceitem block ~0 ~-3 ~-4 slot.container 11 bread 13
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 10
loot insert ~0 ~-3 ~-4 loot "rsf/desert"
loot insert ~0 ~-3 ~-4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cut_sandstone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 smooth_sandstone []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 smooth_sandstone []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 smooth_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 chiseled_sandstone []
setblock ~-7 ~11 ~-6 lantern []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 chiseled_sandstone []
setblock ~-7 ~11 ~6 lantern []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 chiseled_sandstone []
setblock ~7 ~11 ~-6 lantern []
fill ~7 ~8 ~6 ~7 ~10 ~6 chiseled_sandstone []
setblock ~7 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_sandstone []
setblock ~0 ~4 ~-8 lapis_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_sandstone []
setblock ~0 ~4 ~8 lapis_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 chiseled_sandstone []
setblock ~-9 ~4 ~0 lapis_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 chiseled_sandstone []
setblock ~9 ~4 ~0 lapis_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x9x6) ---
fill ~-10 ~0 ~-9 ~-11 ~8 ~-10 chiseled_sandstone []
fill ~9 ~0 ~-9 ~10 ~8 ~-10 chiseled_sandstone []
setblock ~-10 ~9 ~-9 gold_block []
setblock ~10 ~9 ~-9 gold_block []
setblock ~1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-6 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 10 emerald 10
replaceitem block ~-6 ~1 ~4 slot.container 11 diamond 2
replaceitem block ~-6 ~1 ~4 slot.container 12 tnt 5
replaceitem block ~-6 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-6 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~-6 ~1 ~4 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0
