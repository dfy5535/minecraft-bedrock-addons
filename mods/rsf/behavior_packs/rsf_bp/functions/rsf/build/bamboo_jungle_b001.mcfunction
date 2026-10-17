# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1025/4224 | 主题内编号: b001/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·三层阶梯圣火祭坛 (bamboo_jungle_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bamboo_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bamboo_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 slime_ball 8
replaceitem block ~3 ~-2 ~2 slot.container 1 arrow 19
replaceitem block ~3 ~-2 ~2 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 3 string 17
replaceitem block ~3 ~-2 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-2 ~2 slot.container 5 bone 17
replaceitem block ~3 ~-2 ~2 slot.container 9 lantern 10
replaceitem block ~3 ~-2 ~2 slot.container 10 bamboo 32
replaceitem block ~3 ~-2 ~2 slot.container 11 scaffolding 17
replaceitem block ~3 ~-2 ~2 slot.container 12 melon_slice 14
replaceitem block ~3 ~-2 ~2 slot.container 13 cooked_chicken 11
replaceitem block ~3 ~-2 ~2 slot.container 14 iron_ingot 10
loot insert ~3 ~-2 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-2 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bamboo_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 bamboo_mosaic []
fill ~-3 ~5 ~-2 ~3 ~5 ~2 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~4 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 bamboo_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 bamboo_block []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 bamboo_block []
setblock ~-5 ~8 ~4 lantern []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 bamboo_block []
setblock ~5 ~8 ~-4 lantern []
fill ~5 ~5 ~4 ~5 ~7 ~4 bamboo_block []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 bamboo_block []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 bamboo_block []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 bamboo_block []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 bamboo_block []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~6 ~1 ~-2 ~6 ~4 ~2 scaffolding []
fill ~5 ~4 ~-2 ~7 ~4 ~2 bamboo_mosaic_slab []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 1 bone 12
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~2 slot.container 9 emerald 7
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 12 bow 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 4
replaceitem block ~4 ~1 ~2 slot.container 14 bamboo 33
loot insert ~4 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 2 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 17
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 5 string 15
replaceitem block ~-4 ~1 ~3 slot.container 9 emerald 5
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 6
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 12 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 9
replaceitem block ~-4 ~1 ~3 slot.container 14 bamboo 38
loot insert ~-4 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~3 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
