# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0955/4224 | 主题内编号: b059/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·阶梯金字塔法老墓室 (jungle_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 jungle_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 jungle_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_stone_bricks []
setblock ~0 ~-7 ~0 emerald_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 slime_ball 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 19
replaceitem block ~0 ~-4 ~-5 slot.container 9 cocoa_beans 14
replaceitem block ~0 ~-4 ~-5 slot.container 10 bamboo 12
replaceitem block ~0 ~-4 ~-5 slot.container 11 jungle_log 17
replaceitem block ~0 ~-4 ~-5 slot.container 12 gold_ingot 8
replaceitem block ~0 ~-4 ~-5 slot.container 13 emerald 7
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~-5 loot "rsf/jungle"
loot insert ~0 ~-4 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 jungle_planks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mossy_stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 jungle_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 stripped_jungle_log []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 stripped_jungle_log []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 stripped_jungle_log []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 stripped_jungle_log []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~9 ~-10 ~6 ~10 mossy_stone_bricks []
setblock ~-9 ~7 ~9 gold_block []
setblock ~-9 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 12 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 13 torch 16
replaceitem block ~5 ~1 ~6 slot.container 14 melon_slice 17
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
