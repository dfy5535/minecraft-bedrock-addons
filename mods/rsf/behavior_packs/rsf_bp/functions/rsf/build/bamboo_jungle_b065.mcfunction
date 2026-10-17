# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1089/4224 | 主题内编号: b065/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·断柱露天古神庙废墟 (bamboo_jungle_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 bamboo_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 bamboo_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 bamboo_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 slime_ball 8
replaceitem block ~4 ~-2 ~4 slot.container 1 arrow 19
replaceitem block ~4 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~4 slot.container 3 string 17
replaceitem block ~4 ~-2 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~4 ~-2 ~4 slot.container 5 bone 17
replaceitem block ~4 ~-2 ~4 slot.container 9 scaffolding 16
replaceitem block ~4 ~-2 ~4 slot.container 10 melon_slice 13
replaceitem block ~4 ~-2 ~4 slot.container 11 cooked_chicken 10
replaceitem block ~4 ~-2 ~4 slot.container 12 iron_ingot 9
replaceitem block ~4 ~-2 ~4 slot.container 13 emerald 8
replaceitem block ~4 ~-2 ~4 slot.container 14 gold_ingot 9
loot insert ~4 ~-2 ~4 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 bamboo_mosaic []
fill ~-6 ~1 ~-6 ~-6 ~4 ~-6 bamboo_block []
fill ~-6 ~1 ~6 ~-6 ~4 ~6 bamboo_block []
fill ~-4 ~1 ~-6 ~-4 ~4 ~-6 bamboo_block []
fill ~-4 ~1 ~6 ~-4 ~4 ~6 bamboo_block []
fill ~-2 ~1 ~-6 ~-2 ~4 ~-6 bamboo_block []
fill ~-2 ~1 ~6 ~-2 ~4 ~6 bamboo_block []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 bamboo_block []
fill ~0 ~1 ~6 ~0 ~4 ~6 bamboo_block []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 bamboo_block []
fill ~2 ~1 ~6 ~2 ~4 ~6 bamboo_block []
fill ~4 ~1 ~-6 ~4 ~4 ~-6 bamboo_block []
fill ~4 ~1 ~6 ~4 ~4 ~6 bamboo_block []
fill ~6 ~1 ~-6 ~6 ~4 ~-6 bamboo_block []
fill ~6 ~1 ~6 ~6 ~4 ~6 bamboo_block []
fill ~-6 ~1 ~-4 ~-6 ~4 ~-4 bamboo_block []
fill ~6 ~1 ~-4 ~6 ~4 ~-4 bamboo_block []
fill ~-6 ~1 ~-2 ~-6 ~4 ~-2 bamboo_block []
fill ~6 ~1 ~-2 ~6 ~4 ~-2 bamboo_block []
fill ~-6 ~1 ~0 ~-6 ~4 ~0 bamboo_block []
fill ~6 ~1 ~0 ~6 ~4 ~0 bamboo_block []
fill ~-6 ~1 ~2 ~-6 ~4 ~2 bamboo_block []
fill ~6 ~1 ~2 ~6 ~4 ~2 bamboo_block []
fill ~-6 ~1 ~4 ~-6 ~4 ~4 bamboo_block []
fill ~6 ~1 ~4 ~6 ~4 ~4 bamboo_block []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 bamboo_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 bamboo_block []
setblock ~-8 ~4 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 bamboo_block []
setblock ~-8 ~4 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 bamboo_block []
setblock ~8 ~4 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 bamboo_block []
setblock ~8 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~7 ~1 ~-2 ~7 ~8 ~2 scaffolding []
fill ~6 ~8 ~-2 ~8 ~8 ~2 bamboo_mosaic_slab []
setblock ~7 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
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
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~4 slot.container 10 bow 1
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~4 slot.container 12 bamboo 32
replaceitem block ~5 ~1 ~4 slot.container 13 scaffolding 17
replaceitem block ~5 ~1 ~4 slot.container 14 melon_slice 14
loot insert ~5 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~5 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 string 15
replaceitem block ~-5 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~5 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~-5 ~1 ~5 slot.container 12 bamboo 37
replaceitem block ~-5 ~1 ~5 slot.container 13 scaffolding 22
replaceitem block ~-5 ~1 ~5 slot.container 14 melon_slice 12
loot insert ~-5 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~5 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
