# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1029/4224 | 主题内编号: b005/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·下沉圣泉秘宝祭坛 (bamboo_jungle_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bamboo_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bamboo_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bamboo_mosaic []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 string 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 spider_eye 6
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 9 cooked_chicken 9
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_ingot 8
replaceitem block ~-3 ~-3 ~2 slot.container 11 emerald 7
replaceitem block ~-3 ~-3 ~2 slot.container 12 gold_ingot 8
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 6
replaceitem block ~-3 ~-3 ~2 slot.container 14 bow 1
loot insert ~-3 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~-3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bamboo_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 bamboo_mosaic []
fill ~0 ~1 ~-4 ~0 ~2 ~4 bamboo_mosaic []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-4 ~-5 ~6 ~-4 bamboo_block []
setblock ~-5 ~7 ~-4 lantern []
fill ~-5 ~4 ~4 ~-5 ~6 ~4 bamboo_block []
setblock ~-5 ~7 ~4 lantern []
fill ~5 ~4 ~-4 ~5 ~6 ~-4 bamboo_block []
setblock ~5 ~7 ~-4 lantern []
fill ~5 ~4 ~4 ~5 ~6 ~4 bamboo_block []
setblock ~5 ~7 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 bamboo_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~1 ~-2 ~6 ~8 ~2 scaffolding []
fill ~5 ~8 ~-2 ~7 ~8 ~2 bamboo_mosaic_slab []
setblock ~6 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 string 12
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 5 bone 12
replaceitem block ~4 ~1 ~2 slot.container 9 golden_apple 1
replaceitem block ~4 ~1 ~2 slot.container 10 bow 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 6
replaceitem block ~4 ~1 ~2 slot.container 12 bamboo 35
replaceitem block ~4 ~1 ~2 slot.container 13 scaffolding 20
replaceitem block ~4 ~1 ~2 slot.container 14 melon_slice 17
loot insert ~4 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 string 15
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 10 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 4
replaceitem block ~-4 ~1 ~3 slot.container 12 bamboo 33
replaceitem block ~-4 ~1 ~3 slot.container 13 scaffolding 18
replaceitem block ~-4 ~1 ~3 slot.container 14 melon_slice 15
loot insert ~-4 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~3 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
