# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1041/4224 | 主题内编号: b017/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双坡顶皇家藏宝室 (bamboo_jungle_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 bamboo_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 bamboo_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 bamboo_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 mossy_stone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 slime_ball 8
replaceitem block ~3 ~-2 ~3 slot.container 1 arrow 19
replaceitem block ~3 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~3 slot.container 3 string 17
replaceitem block ~3 ~-2 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-2 ~3 slot.container 5 bone 17
replaceitem block ~3 ~-2 ~3 slot.container 9 golden_apple 2
replaceitem block ~3 ~-2 ~3 slot.container 10 bow 1
replaceitem block ~3 ~-2 ~3 slot.container 11 lantern 7
replaceitem block ~3 ~-2 ~3 slot.container 12 bamboo 36
replaceitem block ~3 ~-2 ~3 slot.container 13 scaffolding 21
replaceitem block ~3 ~-2 ~3 slot.container 14 melon_slice 18
loot insert ~3 ~-2 ~3 loot "rsf/bamboo_jungle"
loot insert ~3 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 bamboo_planks []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 bamboo_block []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 bamboo_block []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 bamboo_block []
fill ~5 ~1 ~5 ~5 ~5 ~5 bamboo_block []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 bamboo_fence []
setblock ~5 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 bamboo_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 bamboo_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 bamboo_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 bamboo_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 bamboo_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 bamboo_mosaic []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 bamboo_mosaic []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 bamboo_block []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 bamboo_block []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 bamboo_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~1 ~-2 ~6 ~5 ~2 scaffolding []
fill ~5 ~5 ~-2 ~7 ~5 ~2 bamboo_mosaic_slab []
setblock ~6 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 1 bone 12
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_chicken 13
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 4
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 5
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 14 bow 1
loot insert ~4 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 slime_ball 6
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 string 15
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_chicken 11
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-4 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 1
replaceitem block ~-4 ~1 ~4 slot.container 14 bow 1
loot insert ~-4 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~4 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
