# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0999/4224 | 主题内编号: b103/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十字全向防御方堡 (jungle_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 2 slime_ball 8
replaceitem block ~3 ~-3 ~4 slot.container 3 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 9 cocoa_beans 9
replaceitem block ~3 ~-3 ~4 slot.container 10 bamboo 14
replaceitem block ~3 ~-3 ~4 slot.container 11 jungle_log 19
replaceitem block ~3 ~-3 ~4 slot.container 12 gold_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_ingot 12
loot insert ~3 ~-3 ~4 loot "rsf/jungle"
loot insert ~3 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 jungle_planks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 jungle_planks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 jungle_fence []
setblock ~5 ~2 ~0 jungle_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mossy_stone_bricks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 jungle_fence []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 stripped_jungle_log []
setblock ~-5 ~10 ~-6 lantern []
setblock ~-5 ~9 ~6 stripped_jungle_log []
setblock ~-5 ~10 ~6 lantern []
setblock ~5 ~9 ~-6 stripped_jungle_log []
setblock ~5 ~10 ~-6 lantern []
setblock ~5 ~9 ~6 stripped_jungle_log []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 stripped_jungle_log []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 stripped_jungle_log []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 stripped_jungle_log []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 stripped_jungle_log []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~7 ~-9 ~5 ~8 mossy_stone_bricks []
setblock ~-8 ~6 ~7 gold_block []
setblock ~-8 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 16
replaceitem block ~4 ~1 ~5 slot.container 12 melon_slice 17
replaceitem block ~4 ~1 ~5 slot.container 13 cocoa_beans 10
replaceitem block ~4 ~1 ~5 slot.container 14 bamboo 15
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
