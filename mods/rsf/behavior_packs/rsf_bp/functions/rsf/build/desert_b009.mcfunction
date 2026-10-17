# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1289/4224 | 主题内编号: b009/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·铁栏双室地下死牢 (desert_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 smooth_sandstone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 torch []
setblock ~4 ~-5 ~-3 torch []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 7
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 18
replaceitem block ~4 ~-3 ~3 slot.container 3 gold_nugget 15
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 7
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~4 ~-3 ~3 slot.container 9 water_bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 11 enchanted_golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 12 bread 16
replaceitem block ~4 ~-3 ~3 slot.container 13 gold_ingot 6
replaceitem block ~4 ~-3 ~3 slot.container 14 iron_ingot 7
loot insert ~4 ~-3 ~3 loot "rsf/desert"
loot insert ~4 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 smooth_sandstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 orange_terracotta []
fill ~0 ~1 ~-5 ~0 ~2 ~5 orange_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 orange_terracotta []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cobblestone_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 sandstone []
setblock ~-6 ~8 ~-5 torch []
setblock ~-6 ~7 ~5 sandstone []
setblock ~-6 ~8 ~5 torch []
setblock ~6 ~7 ~-5 sandstone []
setblock ~6 ~8 ~-5 torch []
setblock ~6 ~7 ~5 sandstone []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 orange_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-8 ~-10 ~4 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~4 ~-9 chiseled_sandstone []
setblock ~-9 ~5 ~-8 gold_block []
setblock ~9 ~5 ~-8 gold_block []
setblock ~-3 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 13
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 5 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 9 tnt 5
replaceitem block ~5 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 13 enchanted_golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 14 bread 16
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 9 tnt 10
replaceitem block ~-5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 13 enchanted_golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 bread 14
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
