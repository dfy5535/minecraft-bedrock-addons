# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1120/4224 | 主题内编号: b096/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·高台三阶献祭神祠 (bamboo_jungle_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bamboo_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 1 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 2 arrow 19
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 4 string 17
replaceitem block ~3 ~-3 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 8
replaceitem block ~3 ~-3 ~2 slot.container 11 gold_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_apple 7
replaceitem block ~3 ~-3 ~2 slot.container 13 bow 1
replaceitem block ~3 ~-3 ~2 slot.container 14 lantern 5
loot insert ~3 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 jungle_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 bamboo_planks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 bamboo_planks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 jungle_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 bamboo_planks []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 bamboo_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 bamboo_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 bamboo_block []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 bamboo_block []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 bamboo_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~6 ~1 ~-2 ~6 ~4 ~2 scaffolding []
fill ~5 ~4 ~-2 ~7 ~4 ~2 bamboo_mosaic_slab []
setblock ~6 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 12
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 9 bamboo 32
replaceitem block ~-4 ~1 ~2 slot.container 10 scaffolding 17
replaceitem block ~-4 ~1 ~2 slot.container 11 melon_slice 14
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_chicken 11
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 9
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
