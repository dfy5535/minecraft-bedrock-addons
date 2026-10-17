# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0949/4224 | 主题内编号: b053/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·测绘师观景制图站 (jungle_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cracked_stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cracked_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 cracked_stone_bricks []
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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mossy_cobblestone []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 mossy_cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 jungle_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~7 ~-8 ~5 ~8 mossy_stone_bricks []
setblock ~-7 ~6 ~7 gold_block []
setblock ~-7 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~3 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 10 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 11 torch 22
replaceitem block ~3 ~1 ~4 slot.container 12 melon_slice 16
replaceitem block ~3 ~1 ~4 slot.container 13 cocoa_beans 9
replaceitem block ~3 ~1 ~4 slot.container 14 bamboo 14
loot insert ~3 ~1 ~4 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
