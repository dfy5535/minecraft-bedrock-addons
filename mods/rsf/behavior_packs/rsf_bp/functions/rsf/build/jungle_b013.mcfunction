# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0909/4224 | 主题内编号: b013/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·地底熔炉苦工地牢 (jungle_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cracked_stone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 jungle_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 jungle_planks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 cracked_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 string 19
replaceitem block ~3 ~-4 ~5 slot.container 2 spider_eye 6
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 9
replaceitem block ~3 ~-4 ~5 slot.container 4 slime_ball 8
replaceitem block ~3 ~-4 ~5 slot.container 5 arrow 19
replaceitem block ~3 ~-4 ~5 slot.container 9 jungle_log 21
replaceitem block ~3 ~-4 ~5 slot.container 10 gold_ingot 12
replaceitem block ~3 ~-4 ~5 slot.container 11 emerald 4
replaceitem block ~3 ~-4 ~5 slot.container 12 iron_ingot 7
replaceitem block ~3 ~-4 ~5 slot.container 13 golden_apple 3
replaceitem block ~3 ~-4 ~5 slot.container 14 iron_sword 1
loot insert ~3 ~-4 ~5 loot "rsf/jungle"
loot insert ~3 ~-4 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~7 ~7 cracked_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~6 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~7 ~-7 jungle_log []
fill ~-5 ~1 ~7 ~-5 ~7 ~7 jungle_log []
fill ~5 ~1 ~-7 ~5 ~7 ~-7 jungle_log []
fill ~5 ~1 ~7 ~5 ~7 ~7 jungle_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 jungle_fence []
setblock ~5 ~2 ~0 jungle_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mossy_cobblestone []
fill ~-5 ~8 ~-7 ~5 ~8 ~7 jungle_fence []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 air []
setblock ~-5 ~8 ~-7 jungle_log []
setblock ~-5 ~9 ~-7 torch []
setblock ~-5 ~8 ~7 jungle_log []
setblock ~-5 ~9 ~7 torch []
setblock ~5 ~8 ~-7 jungle_log []
setblock ~5 ~9 ~-7 torch []
setblock ~5 ~8 ~7 jungle_log []
setblock ~5 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 mossy_cobblestone []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~8 ~-9 ~5 ~9 mossy_stone_bricks []
setblock ~-8 ~6 ~8 gold_block []
setblock ~-8 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 4 bone 11
replaceitem block ~4 ~1 ~6 slot.container 5 string 14
replaceitem block ~4 ~1 ~6 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~6 slot.container 11 torch 17
replaceitem block ~4 ~1 ~6 slot.container 12 melon_slice 18
replaceitem block ~4 ~1 ~6 slot.container 13 cocoa_beans 11
replaceitem block ~4 ~1 ~6 slot.container 14 bamboo 16
loot insert ~4 ~1 ~6 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
