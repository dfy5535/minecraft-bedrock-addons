# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1021/4224 | 主题内编号: b125/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·巨型阶梯金字塔神王殿 (jungle_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cracked_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cracked_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 slime_ball 8
replaceitem block ~4 ~-4 ~0 slot.container 1 arrow 19
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~0 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~0 slot.container 5 string 19
replaceitem block ~4 ~-4 ~0 slot.container 9 torch 20
replaceitem block ~4 ~-4 ~0 slot.container 10 melon_slice 21
replaceitem block ~4 ~-4 ~0 slot.container 11 cocoa_beans 14
replaceitem block ~4 ~-4 ~0 slot.container 12 bamboo 12
replaceitem block ~4 ~-4 ~0 slot.container 13 jungle_log 17
replaceitem block ~4 ~-4 ~0 slot.container 14 gold_ingot 8
loot insert ~4 ~-4 ~0 loot "rsf/jungle"
loot insert ~4 ~-4 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cracked_stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mossy_cobblestone []
fill ~-4 ~5 ~-5 ~4 ~10 ~5 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~11 ~-7 ~6 ~11 ~7 mossy_cobblestone []
fill ~-5 ~12 ~-6 ~5 ~12 ~6 mossy_cobblestone []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 chiseled_stone_bricks []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 moss_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 jungle_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 jungle_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~0 ~9 ~-10 ~7 ~10 mossy_stone_bricks []
setblock ~-9 ~8 ~9 gold_block []
setblock ~-9 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 string 14
replaceitem block ~5 ~1 ~6 slot.container 9 jungle_log 22
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 14 iron_sword 1
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
