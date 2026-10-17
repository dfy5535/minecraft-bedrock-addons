# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0961/4224 | 主题内编号: b065/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·断柱露天古神庙废墟 (jungle_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 cracked_stone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 jungle_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 jungle_planks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mossy_cobblestone []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 slime_ball 8
replaceitem block ~3 ~-3 ~5 slot.container 1 arrow 19
replaceitem block ~3 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 4 bone 16
replaceitem block ~3 ~-3 ~5 slot.container 5 string 19
replaceitem block ~3 ~-3 ~5 slot.container 9 golden_apple 6
replaceitem block ~3 ~-3 ~5 slot.container 10 iron_sword 1
replaceitem block ~3 ~-3 ~5 slot.container 11 torch 16
replaceitem block ~3 ~-3 ~5 slot.container 12 melon_slice 17
replaceitem block ~3 ~-3 ~5 slot.container 13 cocoa_beans 10
replaceitem block ~3 ~-3 ~5 slot.container 14 bamboo 15
loot insert ~3 ~-3 ~5 loot "rsf/jungle"
loot insert ~3 ~-3 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mossy_cobblestone []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 jungle_log []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 jungle_log []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 jungle_log []
fill ~-3 ~1 ~7 ~-3 ~6 ~7 jungle_log []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 jungle_log []
fill ~-1 ~1 ~7 ~-1 ~6 ~7 jungle_log []
fill ~1 ~1 ~-7 ~1 ~6 ~-7 jungle_log []
fill ~1 ~1 ~7 ~1 ~6 ~7 jungle_log []
fill ~3 ~1 ~-7 ~3 ~6 ~-7 jungle_log []
fill ~3 ~1 ~7 ~3 ~6 ~7 jungle_log []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 jungle_log []
fill ~5 ~1 ~7 ~5 ~6 ~7 jungle_log []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 jungle_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 jungle_log []
fill ~-5 ~1 ~-3 ~-5 ~6 ~-3 jungle_log []
fill ~5 ~1 ~-3 ~5 ~6 ~-3 jungle_log []
fill ~-5 ~1 ~-1 ~-5 ~6 ~-1 jungle_log []
fill ~5 ~1 ~-1 ~5 ~6 ~-1 jungle_log []
fill ~-5 ~1 ~1 ~-5 ~6 ~1 jungle_log []
fill ~5 ~1 ~1 ~5 ~6 ~1 jungle_log []
fill ~-5 ~1 ~3 ~-5 ~6 ~3 jungle_log []
fill ~5 ~1 ~3 ~5 ~6 ~3 jungle_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 jungle_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 jungle_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 jungle_log []
setblock ~-7 ~6 ~-9 torch []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 jungle_log []
setblock ~-7 ~6 ~9 torch []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 jungle_log []
setblock ~7 ~6 ~-9 torch []
fill ~7 ~0 ~9 ~7 ~5 ~9 jungle_log []
setblock ~7 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~9 ~-9 ~7 ~10 mossy_stone_bricks []
setblock ~-8 ~8 ~9 gold_block []
setblock ~-8 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 string 14
replaceitem block ~4 ~1 ~6 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 9 jungle_log 18
replaceitem block ~4 ~1 ~6 slot.container 10 gold_ingot 9
replaceitem block ~4 ~1 ~6 slot.container 11 emerald 8
replaceitem block ~4 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~6 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
