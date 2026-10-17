# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0943/4224 | 主题内编号: b047/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·深渊跨桥决斗长台 (jungle_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 jungle_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 jungle_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 jungle_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~-4 ~-4 ~3 slot.container 1 string 19
replaceitem block ~-4 ~-4 ~3 slot.container 2 spider_eye 6
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 9
replaceitem block ~-4 ~-4 ~3 slot.container 4 slime_ball 8
replaceitem block ~-4 ~-4 ~3 slot.container 5 arrow 19
replaceitem block ~-4 ~-4 ~3 slot.container 9 emerald 10
replaceitem block ~-4 ~-4 ~3 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~-4 ~3 slot.container 11 golden_apple 2
replaceitem block ~-4 ~-4 ~3 slot.container 12 iron_sword 1
replaceitem block ~-4 ~-4 ~3 slot.container 13 torch 19
replaceitem block ~-4 ~-4 ~3 slot.container 14 melon_slice 20
loot insert ~-4 ~-4 ~3 loot "rsf/jungle"
loot insert ~-4 ~-4 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 jungle_planks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 stripped_jungle_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 stripped_jungle_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 stripped_jungle_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 stripped_jungle_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 mossy_cobblestone []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~7 ~-10 ~4 ~8 mossy_stone_bricks []
setblock ~-9 ~5 ~7 gold_block []
setblock ~-9 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 bone 11
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 9 torch 21
replaceitem block ~5 ~1 ~4 slot.container 10 melon_slice 22
replaceitem block ~5 ~1 ~4 slot.container 11 cocoa_beans 8
replaceitem block ~5 ~1 ~4 slot.container 12 bamboo 13
replaceitem block ~5 ~1 ~4 slot.container 13 jungle_log 18
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~5 ~1 ~4 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
