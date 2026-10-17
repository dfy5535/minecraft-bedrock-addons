# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1010/4224 | 主题内编号: b114/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双联拱顶植物培育馆 (jungle_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 mossy_cobblestone []
fill ~2 ~1 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mossy_stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_cobblestone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~8 ~-10 ~6 ~9 mossy_stone_bricks []
setblock ~-9 ~7 ~8 gold_block []
setblock ~-9 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 9 melon_slice 18
replaceitem block ~-5 ~1 ~4 slot.container 10 cocoa_beans 11
replaceitem block ~-5 ~1 ~4 slot.container 11 bamboo 16
replaceitem block ~-5 ~1 ~4 slot.container 12 jungle_log 21
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 4
loot insert ~-5 ~1 ~4 loot "rsf/jungle"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 1 slime_ball 6
replaceitem block ~5 ~1 ~4 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 melon_slice 16
replaceitem block ~5 ~1 ~4 slot.container 10 cocoa_beans 9
replaceitem block ~5 ~1 ~4 slot.container 11 bamboo 14
replaceitem block ~5 ~1 ~4 slot.container 12 jungle_log 19
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 14 emerald 9
loot insert ~5 ~1 ~4 loot "rsf/jungle"
loot insert ~5 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~2 ~0
