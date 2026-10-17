# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1403/4224 | 主题内编号: b123/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·四角塔楼领主城堡复合体 (desert_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 sandstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 smooth_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 torch []
setblock ~5 ~-5 ~-4 torch []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 arrow 18
replaceitem block ~5 ~-3 ~4 slot.container 1 gold_nugget 15
replaceitem block ~5 ~-3 ~4 slot.container 2 ender_pearl 7
replaceitem block ~5 ~-3 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~5 ~-3 ~4 slot.container 4 bone 18
replaceitem block ~5 ~-3 ~4 slot.container 5 gunpowder 17
replaceitem block ~5 ~-3 ~4 slot.container 9 enchanted_golden_apple 6
replaceitem block ~5 ~-3 ~4 slot.container 10 bread 16
replaceitem block ~5 ~-3 ~4 slot.container 11 gold_ingot 6
replaceitem block ~5 ~-3 ~4 slot.container 12 iron_ingot 7
replaceitem block ~5 ~-3 ~4 slot.container 13 emerald 6
replaceitem block ~5 ~-3 ~4 slot.container 14 diamond 5
loot insert ~5 ~-3 ~4 loot "rsf/desert"
loot insert ~5 ~-3 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 sandstone []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~11 ~-5 cut_sandstone []
setblock ~-7 ~12 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~11 ~6 cut_sandstone []
setblock ~-7 ~12 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~11 ~-5 cut_sandstone []
setblock ~6 ~12 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~11 ~6 cut_sandstone []
setblock ~6 ~12 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 cut_sandstone []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 cobblestone_wall []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 air []
setblock ~-7 ~10 ~-6 chiseled_sandstone []
setblock ~-7 ~11 ~-6 torch []
setblock ~-7 ~10 ~6 chiseled_sandstone []
setblock ~-7 ~11 ~6 torch []
setblock ~7 ~10 ~-6 chiseled_sandstone []
setblock ~7 ~11 ~-6 torch []
setblock ~7 ~10 ~6 chiseled_sandstone []
setblock ~7 ~11 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x9x6) ---
fill ~-10 ~0 ~-9 ~-11 ~8 ~-10 chiseled_sandstone []
fill ~9 ~0 ~-9 ~10 ~8 ~-10 chiseled_sandstone []
setblock ~-10 ~9 ~-9 gold_block []
setblock ~10 ~9 ~-9 gold_block []
setblock ~-1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~6 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 3 gold_nugget 18
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 10
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~6 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 11 enchanted_golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 12 bread 16
replaceitem block ~6 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~6 ~1 ~4 loot "rsf/desert"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 arrow 16
replaceitem block ~-6 ~1 ~5 slot.container 1 gold_nugget 13
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 9 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 11 enchanted_golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 12 bread 14
replaceitem block ~-6 ~1 ~5 slot.container 13 gold_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~-6 ~1 ~5 loot "rsf/desert"
loot insert ~-6 ~1 ~5 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
