# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0939/4224 | 主题内编号: b043/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十字四门试炼擂台 (jungle_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 jungle_planks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 jungle_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 jungle_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 string 19
replaceitem block ~3 ~-2 ~0 slot.container 1 spider_eye 6
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 3 slime_ball 8
replaceitem block ~3 ~-2 ~0 slot.container 4 arrow 19
replaceitem block ~3 ~-2 ~0 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 9 iron_ingot 8
replaceitem block ~3 ~-2 ~0 slot.container 10 golden_apple 4
replaceitem block ~3 ~-2 ~0 slot.container 11 iron_sword 1
replaceitem block ~3 ~-2 ~0 slot.container 12 torch 21
replaceitem block ~3 ~-2 ~0 slot.container 13 melon_slice 22
replaceitem block ~3 ~-2 ~0 slot.container 14 cocoa_beans 8
loot insert ~3 ~-2 ~0 loot "rsf/jungle"
loot insert ~3 ~-2 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~7 ~7 jungle_planks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 jungle_planks []
fill ~-1 ~1 ~-6 ~1 ~6 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 jungle_fence []
setblock ~6 ~2 ~0 jungle_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mossy_stone_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 jungle_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 stripped_jungle_log []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 stripped_jungle_log []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 stripped_jungle_log []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 stripped_jungle_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mossy_stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~8 ~-10 ~5 ~9 mossy_stone_bricks []
setblock ~-9 ~6 ~8 gold_block []
setblock ~-9 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 10 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 11 torch 19
replaceitem block ~5 ~1 ~6 slot.container 12 melon_slice 20
replaceitem block ~5 ~1 ~6 slot.container 13 cocoa_beans 13
replaceitem block ~5 ~1 ~6 slot.container 14 bamboo 18
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
