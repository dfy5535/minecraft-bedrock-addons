# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1033/4224 | 主题内编号: b009/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·铁栏双室地下死牢 (bamboo_jungle_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bamboo_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 2 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 3 arrow 19
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 5 string 17
replaceitem block ~4 ~-3 ~3 slot.container 9 scaffolding 22
replaceitem block ~4 ~-3 ~3 slot.container 10 melon_slice 12
replaceitem block ~4 ~-3 ~3 slot.container 11 cooked_chicken 9
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 8
replaceitem block ~4 ~-3 ~3 slot.container 13 emerald 7
replaceitem block ~4 ~-3 ~3 slot.container 14 gold_ingot 8
loot insert ~4 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 bamboo_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 bamboo_mosaic []
fill ~0 ~1 ~-5 ~0 ~2 ~5 bamboo_mosaic []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 bamboo_mosaic []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 bamboo_fence []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 air []
setblock ~-6 ~5 ~-5 bamboo_block []
setblock ~-6 ~6 ~-5 lantern []
setblock ~-6 ~5 ~5 bamboo_block []
setblock ~-6 ~6 ~5 lantern []
setblock ~6 ~5 ~-5 bamboo_block []
setblock ~6 ~6 ~-5 lantern []
setblock ~6 ~5 ~5 bamboo_block []
setblock ~6 ~6 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 bamboo_mosaic []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 bamboo_block []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 bamboo_block []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 bamboo_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 10 bamboo 37
replaceitem block ~5 ~1 ~3 slot.container 11 scaffolding 22
replaceitem block ~5 ~1 ~3 slot.container 12 melon_slice 12
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_chicken 9
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 string 15
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 10 bamboo 35
replaceitem block ~-5 ~1 ~4 slot.container 11 scaffolding 20
replaceitem block ~-5 ~1 ~4 slot.container 12 melon_slice 17
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_chicken 14
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
