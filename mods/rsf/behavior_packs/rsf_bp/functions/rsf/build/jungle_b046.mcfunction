# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0942/4224 | 主题内编号: b046/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·要塞校场比武演武台 (jungle_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_cobblestone [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 jungle_planks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~4 slot.container 2 slime_ball 8
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 jungle_log 17
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~4 slot.container 11 emerald 7
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~4 loot "rsf/jungle"
loot insert ~0 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 mossy_cobblestone []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 mossy_stone_bricks []
setblock ~-6 ~10 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 mossy_stone_bricks []
setblock ~-6 ~10 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 mossy_stone_bricks []
setblock ~5 ~10 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~9 ~7 mossy_stone_bricks []
setblock ~5 ~10 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mossy_stone_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 cobblestone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 jungle_log []
setblock ~-6 ~9 ~-7 torch []
setblock ~-6 ~8 ~7 jungle_log []
setblock ~-6 ~9 ~7 torch []
setblock ~6 ~8 ~-7 jungle_log []
setblock ~6 ~9 ~-7 torch []
setblock ~6 ~8 ~7 jungle_log []
setblock ~6 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 jungle_planks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~8 ~-10 ~8 ~9 mossy_stone_bricks []
setblock ~-9 ~9 ~8 gold_block []
setblock ~-9 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 string 14
replaceitem block ~-5 ~1 ~6 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 12 torch 16
replaceitem block ~-5 ~1 ~6 slot.container 13 melon_slice 17
replaceitem block ~-5 ~1 ~6 slot.container 14 cocoa_beans 10
loot insert ~-5 ~1 ~6 loot "rsf/jungle"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 string 17
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 6
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 12 torch 21
replaceitem block ~5 ~1 ~6 slot.container 13 melon_slice 22
replaceitem block ~5 ~1 ~6 slot.container 14 cocoa_beans 8
loot insert ~5 ~1 ~6 loot "rsf/jungle"
loot insert ~5 ~1 ~6 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
