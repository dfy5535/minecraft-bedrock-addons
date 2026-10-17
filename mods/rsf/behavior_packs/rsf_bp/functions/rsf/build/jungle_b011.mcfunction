# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0907/4224 | 主题内编号: b011/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·深渊困兽角斗地牢 (jungle_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 jungle_planks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 jungle_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 jungle_planks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~4 slot.container 2 slime_ball 8
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 jungle_log 17
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~4 slot.container 11 emerald 7
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~4 loot "rsf/jungle"
loot insert ~0 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 jungle_planks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 stripped_jungle_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 stripped_jungle_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 stripped_jungle_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 stripped_jungle_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 stripped_jungle_log []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 stripped_jungle_log []
setblock ~-5 ~10 ~6 lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 stripped_jungle_log []
setblock ~5 ~10 ~-6 lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 stripped_jungle_log []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 jungle_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~8 ~-9 ~8 ~9 mossy_stone_bricks []
setblock ~-8 ~9 ~8 gold_block []
setblock ~-8 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 cocoa_beans 12
replaceitem block ~4 ~1 ~5 slot.container 10 bamboo 17
replaceitem block ~4 ~1 ~5 slot.container 11 jungle_log 22
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
