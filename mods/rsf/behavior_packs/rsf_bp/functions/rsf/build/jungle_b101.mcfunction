# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0997/4224 | 主题内编号: b101/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·L型驻军兵营军械所 (jungle_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cracked_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 jungle_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_sword 1
loot insert ~0 ~-3 ~-4 loot "rsf/jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~8 ~6 cracked_stone_bricks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~-1 ~7 ~5 air []
fill ~-1 ~1 ~1 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mossy_cobblestone []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 jungle_fence []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 jungle_log []
setblock ~-5 ~10 ~-6 torch []
setblock ~-5 ~9 ~6 jungle_log []
setblock ~-5 ~10 ~6 torch []
setblock ~5 ~9 ~-6 jungle_log []
setblock ~5 ~10 ~-6 torch []
setblock ~5 ~9 ~6 jungle_log []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 mossy_cobblestone []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~8 ~-9 ~8 ~9 mossy_stone_bricks []
setblock ~-8 ~9 ~8 gold_block []
setblock ~-8 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 cocoa_beans 11
replaceitem block ~4 ~1 ~5 slot.container 10 bamboo 16
replaceitem block ~4 ~1 ~5 slot.container 11 jungle_log 21
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 7
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
