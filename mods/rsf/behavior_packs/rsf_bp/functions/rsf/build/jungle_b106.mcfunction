# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1002/4224 | 主题内编号: b106/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·琉璃穹顶魔药炼金室 (jungle_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 gunpowder 9
replaceitem block ~-2 ~-2 ~3 slot.container 1 slime_ball 8
replaceitem block ~-2 ~-2 ~3 slot.container 2 arrow 19
replaceitem block ~-2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~-2 ~-2 ~3 slot.container 5 bone 16
replaceitem block ~-2 ~-2 ~3 slot.container 9 bamboo 14
replaceitem block ~-2 ~-2 ~3 slot.container 10 jungle_log 19
replaceitem block ~-2 ~-2 ~3 slot.container 11 gold_ingot 10
replaceitem block ~-2 ~-2 ~3 slot.container 12 emerald 9
replaceitem block ~-2 ~-2 ~3 slot.container 13 iron_ingot 12
replaceitem block ~-2 ~-2 ~3 slot.container 14 golden_apple 1
loot insert ~-2 ~-2 ~3 loot "rsf/jungle"
loot insert ~-2 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 mossy_cobblestone []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 jungle_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 jungle_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 jungle_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 jungle_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 14
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 20
replaceitem block ~-3 ~1 ~4 slot.container 13 melon_slice 21
replaceitem block ~-3 ~1 ~4 slot.container 14 cocoa_beans 14
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 1 slime_ball 6
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 18
replaceitem block ~3 ~1 ~4 slot.container 13 melon_slice 19
replaceitem block ~3 ~1 ~4 slot.container 14 cocoa_beans 12
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
