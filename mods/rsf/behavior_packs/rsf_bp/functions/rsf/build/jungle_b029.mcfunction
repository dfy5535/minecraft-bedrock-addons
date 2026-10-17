# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0925/4224 | 主题内编号: b029/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·奥术星象琉璃塔 (jungle_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cracked_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cracked_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 mossy_cobblestone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 slime_ball 8
replaceitem block ~2 ~-3 ~0 slot.container 1 arrow 19
replaceitem block ~2 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~0 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~0 slot.container 5 string 19
replaceitem block ~2 ~-3 ~0 slot.container 9 cocoa_beans 14
replaceitem block ~2 ~-3 ~0 slot.container 10 bamboo 12
replaceitem block ~2 ~-3 ~0 slot.container 11 jungle_log 17
replaceitem block ~2 ~-3 ~0 slot.container 12 gold_ingot 8
replaceitem block ~2 ~-3 ~0 slot.container 13 emerald 7
replaceitem block ~2 ~-3 ~0 slot.container 14 iron_ingot 10
loot insert ~2 ~-3 ~0 loot "rsf/jungle"
loot insert ~2 ~-3 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~11 ~5 cracked_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~10 ~4 air []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~11 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~11 ~-5 ~4 ~11 ~5 mossy_cobblestone []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 glass []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 jungle_log []
setblock ~0 ~4 ~-7 chiseled_stone_bricks []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 jungle_log []
setblock ~0 ~4 ~7 chiseled_stone_bricks []
setblock ~0 ~5 ~7 torch []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 jungle_log []
setblock ~-6 ~4 ~0 chiseled_stone_bricks []
setblock ~-6 ~5 ~0 torch []
fill ~6 ~0 ~0 ~6 ~3 ~0 jungle_log []
setblock ~6 ~4 ~0 chiseled_stone_bricks []
setblock ~6 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~7 ~-8 ~6 ~8 mossy_stone_bricks []
setblock ~-7 ~7 ~7 gold_block []
setblock ~-7 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 12 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 13 torch 21
replaceitem block ~3 ~1 ~4 slot.container 14 melon_slice 22
loot insert ~3 ~1 ~4 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
