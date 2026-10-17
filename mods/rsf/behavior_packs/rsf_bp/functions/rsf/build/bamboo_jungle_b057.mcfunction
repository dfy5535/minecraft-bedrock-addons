# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1081/4224 | 主题内编号: b057/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·中央石棺帝王地下陵寝 (bamboo_jungle_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 bamboo_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 bamboo_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 bamboo_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 bamboo_mosaic []
setblock ~0 ~-6 ~0 scaffolding []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 3 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 bamboo 32
replaceitem block ~0 ~-3 ~-4 slot.container 11 scaffolding 17
replaceitem block ~0 ~-3 ~-4 slot.container 12 melon_slice 14
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_chicken 11
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 10
loot insert ~0 ~-3 ~-4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 bamboo_planks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 bamboo_mosaic []
fill ~0 ~1 ~-6 ~0 ~2 ~6 bamboo_mosaic []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 bamboo_mosaic []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 mossy_stone_bricks []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 chiseled_stone_bricks []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 bamboo_mosaic []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 bamboo_block []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 bamboo_block []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 bamboo_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~1 ~-2 ~7 ~5 ~2 scaffolding []
fill ~6 ~5 ~-2 ~8 ~5 ~2 bamboo_mosaic_slab []
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 1 bone 12
replaceitem block ~5 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_chicken 11
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 14 bow 1
loot insert ~5 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~5 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 string 15
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_chicken 9
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~5 slot.container 11 emerald 7
replaceitem block ~-5 ~1 ~5 slot.container 12 gold_ingot 8
replaceitem block ~-5 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 14 bow 1
loot insert ~-5 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~5 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
