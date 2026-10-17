# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1023/4224 | 主题内编号: b127/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·万神殿巨型穹顶与试炼宫 (jungle_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 jungle_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 jungle_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 19
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 cocoa_beans 13
replaceitem block ~0 ~-4 ~5 slot.container 10 bamboo 18
replaceitem block ~0 ~-4 ~5 slot.container 11 jungle_log 16
replaceitem block ~0 ~-4 ~5 slot.container 12 gold_ingot 7
replaceitem block ~0 ~-4 ~5 slot.container 13 emerald 6
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_ingot 9
loot insert ~0 ~-4 ~5 loot "rsf/jungle"
loot insert ~0 ~-4 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 stripped_jungle_log []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 stripped_jungle_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 stripped_jungle_log []
fill ~-4 ~1 ~7 ~-4 ~8 ~7 stripped_jungle_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 stripped_jungle_log []
fill ~-2 ~1 ~7 ~-2 ~8 ~7 stripped_jungle_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 stripped_jungle_log []
fill ~0 ~1 ~7 ~0 ~8 ~7 stripped_jungle_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 stripped_jungle_log []
fill ~2 ~1 ~7 ~2 ~8 ~7 stripped_jungle_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 stripped_jungle_log []
fill ~4 ~1 ~7 ~4 ~8 ~7 stripped_jungle_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 stripped_jungle_log []
fill ~6 ~1 ~7 ~6 ~8 ~7 stripped_jungle_log []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 stripped_jungle_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 stripped_jungle_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 stripped_jungle_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 stripped_jungle_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 stripped_jungle_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 stripped_jungle_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 stripped_jungle_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 stripped_jungle_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 stripped_jungle_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 stripped_jungle_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 stripped_jungle_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 stripped_jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 glass []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_jungle_log []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_jungle_log []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_jungle_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_jungle_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~8 ~-10 ~4 ~9 mossy_stone_bricks []
setblock ~-9 ~5 ~8 gold_block []
setblock ~-9 ~6 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 torch 17
replaceitem block ~5 ~1 ~6 slot.container 10 melon_slice 18
replaceitem block ~5 ~1 ~6 slot.container 11 cocoa_beans 11
replaceitem block ~5 ~1 ~6 slot.container 12 bamboo 16
replaceitem block ~5 ~1 ~6 slot.container 13 jungle_log 21
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 12
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
