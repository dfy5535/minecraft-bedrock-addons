# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0941/4224 | 主题内编号: b045/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十二柱神殿试炼场 (jungle_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cracked_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cracked_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cracked_stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-5 torch []
setblock ~4 ~-5 ~5 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~5 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 5 string 19
replaceitem block ~0 ~-3 ~5 slot.container 9 emerald 4
replaceitem block ~0 ~-3 ~5 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-3 ~5 slot.container 11 golden_apple 3
replaceitem block ~0 ~-3 ~5 slot.container 12 iron_sword 1
replaceitem block ~0 ~-3 ~5 slot.container 13 torch 20
replaceitem block ~0 ~-3 ~5 slot.container 14 melon_slice 21
loot insert ~0 ~-3 ~5 loot "rsf/jungle"
loot insert ~0 ~-3 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mossy_cobblestone []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 jungle_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 jungle_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 jungle_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 jungle_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 jungle_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 jungle_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 jungle_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 jungle_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 jungle_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 jungle_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 jungle_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 jungle_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 jungle_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 jungle_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 jungle_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 jungle_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 jungle_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 jungle_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 jungle_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 jungle_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 jungle_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 jungle_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 jungle_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 jungle_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 jungle_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 jungle_log []
setblock ~-6 ~11 ~-7 torch []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 jungle_log []
setblock ~-6 ~11 ~7 torch []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 jungle_log []
setblock ~6 ~11 ~-7 torch []
fill ~6 ~8 ~7 ~6 ~10 ~7 jungle_log []
setblock ~6 ~11 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 jungle_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 jungle_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 jungle_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 jungle_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x10x5) ---
fill ~-9 ~0 ~10 ~-10 ~7 ~11 mossy_stone_bricks []
setblock ~-9 ~8 ~10 gold_block []
setblock ~-9 ~9 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 string 14
replaceitem block ~5 ~1 ~6 slot.container 9 jungle_log 19
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 1
replaceitem block ~5 ~1 ~6 slot.container 14 iron_sword 1
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
