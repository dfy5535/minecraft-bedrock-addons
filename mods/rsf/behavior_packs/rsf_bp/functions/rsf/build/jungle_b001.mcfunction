# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0897/4224 | 主题内编号: b001/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·三层阶梯圣火祭坛 (jungle_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cracked_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cracked_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 jungle_planks []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 lantern []
setblock ~2 ~-7 ~-3 lantern []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 bone 16
replaceitem block ~2 ~-5 ~3 slot.container 1 string 19
replaceitem block ~2 ~-5 ~3 slot.container 2 spider_eye 6
replaceitem block ~2 ~-5 ~3 slot.container 3 gunpowder 9
replaceitem block ~2 ~-5 ~3 slot.container 4 slime_ball 8
replaceitem block ~2 ~-5 ~3 slot.container 5 arrow 19
replaceitem block ~2 ~-5 ~3 slot.container 9 emerald 7
replaceitem block ~2 ~-5 ~3 slot.container 10 iron_ingot 10
replaceitem block ~2 ~-5 ~3 slot.container 11 golden_apple 6
replaceitem block ~2 ~-5 ~3 slot.container 12 iron_sword 1
replaceitem block ~2 ~-5 ~3 slot.container 13 torch 16
replaceitem block ~2 ~-5 ~3 slot.container 14 melon_slice 17
loot insert ~2 ~-5 ~3 loot "rsf/jungle"
loot insert ~2 ~-5 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cracked_stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mossy_cobblestone []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 mossy_cobblestone []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~7 ~-5 ~-4 ~9 ~-5 jungle_log []
setblock ~-4 ~10 ~-5 torch []
fill ~-4 ~7 ~5 ~-4 ~9 ~5 jungle_log []
setblock ~-4 ~10 ~5 torch []
fill ~4 ~7 ~-5 ~4 ~9 ~-5 jungle_log []
setblock ~4 ~10 ~-5 torch []
fill ~4 ~7 ~5 ~4 ~9 ~5 jungle_log []
setblock ~4 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 jungle_log []
setblock ~-6 ~6 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 jungle_log []
setblock ~-6 ~6 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 jungle_log []
setblock ~6 ~6 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~5 ~7 jungle_log []
setblock ~6 ~6 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~6 ~-8 ~8 ~7 mossy_stone_bricks []
setblock ~-7 ~9 ~6 gold_block []
setblock ~-7 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 9 cocoa_beans 9
replaceitem block ~3 ~1 ~4 slot.container 10 bamboo 14
replaceitem block ~3 ~1 ~4 slot.container 11 jungle_log 19
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~3 ~1 ~4 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
