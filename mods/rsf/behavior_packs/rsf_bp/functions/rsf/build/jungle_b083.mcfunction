# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0979/4224 | 主题内编号: b083/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·铁砧锻造与模具工坊 (jungle_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 jungle_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 3 string 19
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 9 jungle_log 21
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 12
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 4
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_sword 1
loot insert ~3 ~-3 ~4 loot "rsf/jungle"
loot insert ~3 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 jungle_planks []
fill ~-5 ~1 ~0 ~5 ~6 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 jungle_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 jungle_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 jungle_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 jungle_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 jungle_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 stripped_jungle_log []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 stripped_jungle_log []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 stripped_jungle_log []
fill ~6 ~0 ~2 ~6 ~6 ~2 stripped_jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~8 ~-9 ~5 ~9 mossy_stone_bricks []
setblock ~-8 ~6 ~8 gold_block []
setblock ~-8 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 17
replaceitem block ~4 ~1 ~5 slot.container 12 melon_slice 18
replaceitem block ~4 ~1 ~5 slot.container 13 cocoa_beans 11
replaceitem block ~4 ~1 ~5 slot.container 14 bamboo 16
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
