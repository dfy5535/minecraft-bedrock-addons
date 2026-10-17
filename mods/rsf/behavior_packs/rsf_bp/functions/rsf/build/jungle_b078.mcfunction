# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0974/4224 | 主题内编号: b078/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·下沉祭池图腾柱群 (jungle_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 jungle_log []
setblock ~-5 ~10 ~-6 torch []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 jungle_log []
setblock ~-5 ~10 ~6 torch []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 jungle_log []
setblock ~5 ~10 ~-6 torch []
fill ~5 ~7 ~6 ~5 ~9 ~6 jungle_log []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 jungle_log []
setblock ~-7 ~6 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 jungle_log []
setblock ~-7 ~6 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 jungle_log []
setblock ~7 ~6 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~5 ~8 jungle_log []
setblock ~7 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~9 ~-9 ~5 ~10 mossy_stone_bricks []
setblock ~-8 ~6 ~9 gold_block []
setblock ~-8 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 bamboo 13
replaceitem block ~-4 ~1 ~5 slot.container 10 jungle_log 18
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 9 bamboo 18
replaceitem block ~4 ~1 ~5 slot.container 10 jungle_log 16
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
