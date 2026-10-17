# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0938/4224 | 主题内编号: b042/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·地底铁栏死斗深坑 (jungle_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~4 torch []
setblock ~3 ~-5 ~-4 torch []
setblock ~3 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 1 slime_ball 8
replaceitem block ~3 ~-3 ~4 slot.container 2 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_ingot 8
replaceitem block ~3 ~-3 ~4 slot.container 10 golden_apple 4
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~-3 ~4 slot.container 12 torch 21
replaceitem block ~3 ~-3 ~4 slot.container 13 melon_slice 22
replaceitem block ~3 ~-3 ~4 slot.container 14 cocoa_beans 8
loot insert ~3 ~-3 ~4 loot "rsf/jungle"
loot insert ~3 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 jungle_log []
setblock ~-5 ~9 ~-6 torch []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 jungle_log []
setblock ~-5 ~9 ~6 torch []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 jungle_log []
setblock ~5 ~9 ~-6 torch []
fill ~5 ~6 ~6 ~5 ~8 ~6 jungle_log []
setblock ~5 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~9 ~-9 ~4 ~10 mossy_stone_bricks []
setblock ~-8 ~5 ~9 gold_block []
setblock ~-8 ~6 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 14 torch 21
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 14 torch 19
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
