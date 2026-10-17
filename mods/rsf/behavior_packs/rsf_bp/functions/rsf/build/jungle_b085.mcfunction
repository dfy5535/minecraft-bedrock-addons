# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0981/4224 | 主题内编号: b085/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子烟囱砖石窑厂 (jungle_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cracked_stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 jungle_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 jungle_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 cracked_stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 1 string 19
replaceitem block ~3 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~3 ~-3 ~3 slot.container 3 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 4 slime_ball 8
replaceitem block ~3 ~-3 ~3 slot.container 5 arrow 19
replaceitem block ~3 ~-3 ~3 slot.container 9 torch 16
replaceitem block ~3 ~-3 ~3 slot.container 10 melon_slice 17
replaceitem block ~3 ~-3 ~3 slot.container 11 cocoa_beans 10
replaceitem block ~3 ~-3 ~3 slot.container 12 bamboo 15
replaceitem block ~3 ~-3 ~3 slot.container 13 jungle_log 20
replaceitem block ~3 ~-3 ~3 slot.container 14 gold_ingot 11
loot insert ~3 ~-3 ~3 loot "rsf/jungle"
loot insert ~3 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~10 ~5 cracked_stone_bricks []
fill ~2 ~1 ~-5 ~5 ~10 ~5 cracked_stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~4 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cracked_stone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_cobblestone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 jungle_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 jungle_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 jungle_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~6 ~-9 ~7 ~7 mossy_stone_bricks []
setblock ~-8 ~8 ~6 gold_block []
setblock ~-8 ~9 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 bone 11
replaceitem block ~4 ~1 ~4 slot.container 5 string 14
replaceitem block ~4 ~1 ~4 slot.container 9 jungle_log 17
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~4 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~4 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
