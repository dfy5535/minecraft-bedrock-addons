# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0933/4224 | 主题内编号: b037/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·环廊聖柱纪念碑 (jungle_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cracked_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 mossy_cobblestone []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 jungle_log []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 jungle_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 jungle_log []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 jungle_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 jungle_log []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 jungle_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 jungle_log []
fill ~1 ~1 ~6 ~1 ~8 ~6 jungle_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 jungle_log []
fill ~3 ~1 ~6 ~3 ~8 ~6 jungle_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 jungle_log []
fill ~5 ~1 ~6 ~5 ~8 ~6 jungle_log []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 jungle_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 jungle_log []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 jungle_log []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 jungle_log []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 jungle_log []
fill ~5 ~1 ~0 ~5 ~8 ~0 jungle_log []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 jungle_log []
fill ~5 ~1 ~2 ~5 ~8 ~2 jungle_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 jungle_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~9 ~-6 ~-5 ~11 ~-6 jungle_log []
setblock ~-5 ~12 ~-6 torch []
fill ~-5 ~9 ~6 ~-5 ~11 ~6 jungle_log []
setblock ~-5 ~12 ~6 torch []
fill ~5 ~9 ~-6 ~5 ~11 ~-6 jungle_log []
setblock ~5 ~12 ~-6 torch []
fill ~5 ~9 ~6 ~5 ~11 ~6 jungle_log []
setblock ~5 ~12 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 jungle_log []
setblock ~-7 ~6 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 jungle_log []
setblock ~-7 ~6 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 jungle_log []
setblock ~7 ~6 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~5 ~8 jungle_log []
setblock ~7 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~7 ~-9 ~4 ~8 mossy_stone_bricks []
setblock ~-8 ~5 ~7 gold_block []
setblock ~-8 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 torch 18
replaceitem block ~4 ~1 ~5 slot.container 10 melon_slice 19
replaceitem block ~4 ~1 ~5 slot.container 11 cocoa_beans 12
replaceitem block ~4 ~1 ~5 slot.container 12 bamboo 17
replaceitem block ~4 ~1 ~5 slot.container 13 jungle_log 22
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 6
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
