# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1003/4224 | 主题内编号: b107/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·观星高塔与秘术地宫 (jungle_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 jungle_planks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 jungle_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 gold_block []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 spider_eye 6
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 9
replaceitem block ~2 ~-4 ~0 slot.container 2 slime_ball 8
replaceitem block ~2 ~-4 ~0 slot.container 3 arrow 19
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-4 ~0 slot.container 9 emerald 4
replaceitem block ~2 ~-4 ~0 slot.container 10 iron_ingot 7
replaceitem block ~2 ~-4 ~0 slot.container 11 golden_apple 3
replaceitem block ~2 ~-4 ~0 slot.container 12 iron_sword 1
replaceitem block ~2 ~-4 ~0 slot.container 13 torch 20
replaceitem block ~2 ~-4 ~0 slot.container 14 melon_slice 21
loot insert ~2 ~-4 ~0 loot "rsf/jungle"
loot insert ~2 ~-4 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 jungle_planks []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mossy_stone_bricks []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 stripped_jungle_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 stripped_jungle_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 stripped_jungle_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 stripped_jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~7 ~-8 ~4 ~8 mossy_stone_bricks []
setblock ~-7 ~5 ~7 gold_block []
setblock ~-7 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 torch 18
replaceitem block ~3 ~1 ~4 slot.container 10 melon_slice 19
replaceitem block ~3 ~1 ~4 slot.container 11 cocoa_beans 12
replaceitem block ~3 ~1 ~4 slot.container 12 bamboo 17
replaceitem block ~3 ~1 ~4 slot.container 13 jungle_log 22
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 6
loot insert ~3 ~1 ~4 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
