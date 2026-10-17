# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1057/4224 | 主题内编号: b033/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·太阳金顶高耸方尖碑 (bamboo_jungle_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 bamboo_mosaic []
setblock ~0 ~-5 ~0 scaffolding []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 spider_eye 6
replaceitem block ~0 ~-2 ~-1 slot.container 1 gunpowder 9
replaceitem block ~0 ~-2 ~-1 slot.container 2 slime_ball 8
replaceitem block ~0 ~-2 ~-1 slot.container 3 arrow 19
replaceitem block ~0 ~-2 ~-1 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 string 17
replaceitem block ~0 ~-2 ~-1 slot.container 9 golden_apple 4
replaceitem block ~0 ~-2 ~-1 slot.container 10 bow 1
replaceitem block ~0 ~-2 ~-1 slot.container 11 lantern 9
replaceitem block ~0 ~-2 ~-1 slot.container 12 bamboo 38
replaceitem block ~0 ~-2 ~-1 slot.container 13 scaffolding 16
replaceitem block ~0 ~-2 ~-1 slot.container 14 melon_slice 13
loot insert ~0 ~-2 ~-1 loot "rsf/bamboo_jungle"
loot insert ~0 ~-2 ~-1 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 bamboo_planks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 bamboo_mosaic []
fill ~-2 ~5 ~-1 ~2 ~10 ~1 mossy_stone_bricks []
fill ~-2 ~1 ~-1 ~2 ~9 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 bamboo_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 bamboo_mosaic []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 bamboo_planks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~3 ~-5 bamboo_block []
setblock ~-6 ~4 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~3 ~5 bamboo_block []
setblock ~-6 ~4 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~3 ~-5 bamboo_block []
setblock ~6 ~4 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~3 ~5 bamboo_block []
setblock ~6 ~4 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 5x4x4) ---
fill ~5 ~1 ~-2 ~5 ~6 ~2 scaffolding []
fill ~4 ~6 ~-2 ~6 ~6 ~2 bamboo_mosaic_slab []
setblock ~5 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 1 bone 12
replaceitem block ~3 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~1 slot.container 9 scaffolding 16
replaceitem block ~3 ~1 ~1 slot.container 10 melon_slice 13
replaceitem block ~3 ~1 ~1 slot.container 11 cooked_chicken 10
replaceitem block ~3 ~1 ~1 slot.container 12 iron_ingot 9
replaceitem block ~3 ~1 ~1 slot.container 13 emerald 8
replaceitem block ~3 ~1 ~1 slot.container 14 gold_ingot 9
loot insert ~3 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 17
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 string 15
replaceitem block ~-3 ~1 ~2 slot.container 9 scaffolding 21
replaceitem block ~-3 ~1 ~2 slot.container 10 melon_slice 18
replaceitem block ~-3 ~1 ~2 slot.container 11 cooked_chicken 8
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 7
replaceitem block ~-3 ~1 ~2 slot.container 13 emerald 6
replaceitem block ~-3 ~1 ~2 slot.container 14 gold_ingot 7
loot insert ~-3 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-3 ~1 ~2 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
