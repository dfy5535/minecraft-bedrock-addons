# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0918/4224 | 主题内编号: b022/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·廊柱书库秘藏室 (jungle_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 jungle_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 19
replaceitem block ~3 ~-2 ~4 slot.container 1 spider_eye 6
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 3 slime_ball 8
replaceitem block ~3 ~-2 ~4 slot.container 4 arrow 19
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 iron_sword 1
replaceitem block ~3 ~-2 ~4 slot.container 10 torch 21
replaceitem block ~3 ~-2 ~4 slot.container 11 melon_slice 22
replaceitem block ~3 ~-2 ~4 slot.container 12 cocoa_beans 8
replaceitem block ~3 ~-2 ~4 slot.container 13 bamboo 13
replaceitem block ~3 ~-2 ~4 slot.container 14 jungle_log 18
loot insert ~3 ~-2 ~4 loot "rsf/jungle"
loot insert ~3 ~-2 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 jungle_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 jungle_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 jungle_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 jungle_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 jungle_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 jungle_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 jungle_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 jungle_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 jungle_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 jungle_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 jungle_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 jungle_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 jungle_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 jungle_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 jungle_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 jungle_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 jungle_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 jungle_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 jungle_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 jungle_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 jungle_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 mossy_stone_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 jungle_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 mossy_cobblestone []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~7 ~-9 ~4 ~8 mossy_stone_bricks []
setblock ~-8 ~5 ~7 gold_block []
setblock ~-8 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 14 torch 22
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 14 torch 20
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
