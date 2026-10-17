# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0971/4224 | 主题内编号: b075/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·远古巨石环廊法阵 (jungle_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 jungle_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 jungle_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~-5 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 5 string 19
replaceitem block ~0 ~-3 ~-5 slot.container 9 torch 17
replaceitem block ~0 ~-3 ~-5 slot.container 10 melon_slice 18
replaceitem block ~0 ~-3 ~-5 slot.container 11 cocoa_beans 11
replaceitem block ~0 ~-3 ~-5 slot.container 12 bamboo 16
replaceitem block ~0 ~-3 ~-5 slot.container 13 jungle_log 21
replaceitem block ~0 ~-3 ~-5 slot.container 14 gold_ingot 12
loot insert ~0 ~-3 ~-5 loot "rsf/jungle"
loot insert ~0 ~-3 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 stripped_jungle_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 stripped_jungle_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 stripped_jungle_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 stripped_jungle_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 stripped_jungle_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 stripped_jungle_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 stripped_jungle_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 stripped_jungle_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 stripped_jungle_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 stripped_jungle_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 stripped_jungle_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 stripped_jungle_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 stripped_jungle_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 stripped_jungle_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 stripped_jungle_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 stripped_jungle_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 stripped_jungle_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 stripped_jungle_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 stripped_jungle_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 stripped_jungle_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 stripped_jungle_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 stripped_jungle_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 stripped_jungle_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 stripped_jungle_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 stripped_jungle_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 stripped_jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 stripped_jungle_log []
setblock ~-6 ~11 ~-7 lantern []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 stripped_jungle_log []
setblock ~-6 ~11 ~7 lantern []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 stripped_jungle_log []
setblock ~6 ~11 ~-7 lantern []
fill ~6 ~8 ~7 ~6 ~10 ~7 stripped_jungle_log []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 jungle_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 jungle_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x10x5) ---
fill ~-9 ~0 ~10 ~-10 ~7 ~11 mossy_stone_bricks []
setblock ~-9 ~8 ~10 gold_block []
setblock ~-9 ~9 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 jungle_log 21
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 14 iron_sword 1
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
