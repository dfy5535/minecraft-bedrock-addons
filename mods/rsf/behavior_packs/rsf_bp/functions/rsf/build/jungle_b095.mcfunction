# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0991/4224 | 主题内编号: b095/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子灯笼守卫神龛 (jungle_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 jungle_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 jungle_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 jungle_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 19
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 slime_ball 8
replaceitem block ~0 ~-4 ~5 slot.container 9 melon_slice 18
replaceitem block ~0 ~-4 ~5 slot.container 10 cocoa_beans 11
replaceitem block ~0 ~-4 ~5 slot.container 11 bamboo 16
replaceitem block ~0 ~-4 ~5 slot.container 12 jungle_log 21
replaceitem block ~0 ~-4 ~5 slot.container 13 gold_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 14 emerald 4
loot insert ~0 ~-4 ~5 loot "rsf/jungle"
loot insert ~0 ~-4 ~5 loot "chests/jungle_temple"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 slime_ball 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 melon_slice 17
replaceitem block ~0 ~-4 ~-5 slot.container 10 cocoa_beans 10
replaceitem block ~0 ~-4 ~-5 slot.container 11 bamboo 15
replaceitem block ~0 ~-4 ~-5 slot.container 12 jungle_log 20
replaceitem block ~0 ~-4 ~-5 slot.container 13 gold_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 14 emerald 10
loot insert ~0 ~-4 ~-5 loot "rsf/jungle"
loot insert ~0 ~-4 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 jungle_planks []
fill ~2 ~1 ~-4 ~5 ~9 ~4 jungle_planks []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 jungle_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 stripped_jungle_log []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 stripped_jungle_log []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 stripped_jungle_log []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 stripped_jungle_log []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~6 ~-9 ~7 ~7 mossy_stone_bricks []
setblock ~-8 ~8 ~6 gold_block []
setblock ~-8 ~9 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 string 14
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 jungle_log 20
replaceitem block ~4 ~1 ~3 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 10
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~3 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
