# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0987/4224 | 主题内编号: b091/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·跨水拱桥水神小祠 (jungle_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 jungle_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 slime_ball 8
replaceitem block ~-3 ~-3 ~2 slot.container 1 arrow 19
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 string 19
replaceitem block ~-3 ~-3 ~2 slot.container 9 golden_apple 2
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_sword 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 torch 19
replaceitem block ~-3 ~-3 ~2 slot.container 12 melon_slice 20
replaceitem block ~-3 ~-3 ~2 slot.container 13 cocoa_beans 13
replaceitem block ~-3 ~-3 ~2 slot.container 14 bamboo 18
loot insert ~-3 ~-3 ~2 loot "rsf/jungle"
loot insert ~-3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 jungle_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 jungle_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mossy_stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-8 ~0 ~5 ~-9 ~8 ~6 mossy_stone_bricks []
setblock ~-8 ~9 ~5 gold_block []
setblock ~-8 ~10 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 cocoa_beans 8
replaceitem block ~4 ~1 ~3 slot.container 10 bamboo 13
replaceitem block ~4 ~1 ~3 slot.container 11 jungle_log 18
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~3 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
