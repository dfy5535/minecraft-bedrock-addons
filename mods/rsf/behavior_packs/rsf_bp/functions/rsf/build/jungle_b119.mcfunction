# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1015/4224 | 主题内编号: b119/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·半地下恒温洞穴苗圃 (jungle_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 jungle_planks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 jungle_planks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 jungle_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_cobblestone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 mossy_stone_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 bone 16
replaceitem block ~-2 ~-4 ~4 slot.container 1 string 19
replaceitem block ~-2 ~-4 ~4 slot.container 2 spider_eye 6
replaceitem block ~-2 ~-4 ~4 slot.container 3 gunpowder 9
replaceitem block ~-2 ~-4 ~4 slot.container 4 slime_ball 8
replaceitem block ~-2 ~-4 ~4 slot.container 5 arrow 19
replaceitem block ~-2 ~-4 ~4 slot.container 9 cocoa_beans 9
replaceitem block ~-2 ~-4 ~4 slot.container 10 bamboo 14
replaceitem block ~-2 ~-4 ~4 slot.container 11 jungle_log 19
replaceitem block ~-2 ~-4 ~4 slot.container 12 gold_ingot 10
replaceitem block ~-2 ~-4 ~4 slot.container 13 emerald 9
replaceitem block ~-2 ~-4 ~4 slot.container 14 iron_ingot 12
loot insert ~-2 ~-4 ~4 loot "rsf/jungle"
loot insert ~-2 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 jungle_planks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-6 ~4 ~6 ~6 mossy_stone_bricks []
fill ~-3 ~7 ~-5 ~3 ~8 ~5 glass []
fill ~-2 ~7 ~-4 ~2 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 jungle_fence []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~8 ~-8 ~6 ~9 mossy_stone_bricks []
setblock ~-7 ~7 ~8 gold_block []
setblock ~-7 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 string 14
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 emerald 4
replaceitem block ~3 ~1 ~5 slot.container 10 iron_ingot 7
replaceitem block ~3 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 12 iron_sword 1
replaceitem block ~3 ~1 ~5 slot.container 13 torch 20
replaceitem block ~3 ~1 ~5 slot.container 14 melon_slice 21
loot insert ~3 ~1 ~5 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
