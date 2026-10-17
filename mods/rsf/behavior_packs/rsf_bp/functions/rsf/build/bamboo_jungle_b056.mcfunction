# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1080/4224 | 主题内编号: b056/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·隐士半地下避难山居 (bamboo_jungle_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
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
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 10
replaceitem block ~3 ~-3 ~2 slot.container 11 gold_ingot 4
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_apple 2
replaceitem block ~3 ~-3 ~2 slot.container 13 bow 1
replaceitem block ~3 ~-3 ~2 slot.container 14 lantern 7
loot insert ~3 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 jungle_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 bamboo_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 bamboo_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-5 ~-6 ~6 ~5 jungle_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-5 ~6 ~6 ~5 jungle_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-4 ~-5 ~7 ~4 jungle_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-4 ~5 ~7 ~4 jungle_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-4 ~4 ~7 ~4 bamboo_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 bamboo_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 mossy_stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~1 ~-2 ~6 ~4 ~2 scaffolding []
fill ~5 ~4 ~-2 ~7 ~4 ~2 bamboo_mosaic_slab []
setblock ~6 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~3 crafting_table []
setblock ~-3 ~1 ~3 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 12
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 9 bamboo 34
replaceitem block ~-4 ~1 ~2 slot.container 10 scaffolding 19
replaceitem block ~-4 ~1 ~2 slot.container 11 melon_slice 16
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_chicken 13
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 4
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
