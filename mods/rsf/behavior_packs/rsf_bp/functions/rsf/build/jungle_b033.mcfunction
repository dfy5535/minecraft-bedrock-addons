# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0929/4224 | 主题内编号: b033/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·太阳金顶高耸方尖碑 (jungle_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cracked_stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cracked_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 mossy_cobblestone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_cobblestone []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 slime_ball 8
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 jungle_log 17
replaceitem block ~0 ~-3 ~-2 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 emerald 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_sword 1
loot insert ~0 ~-3 ~-2 loot "rsf/jungle"
loot insert ~0 ~-3 ~-2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 cracked_stone_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 mossy_cobblestone []
fill ~-1 ~5 ~-2 ~1 ~12 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-2 ~1 ~11 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 mossy_cobblestone []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 cracked_stone_bricks []
fill ~0 ~18 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 jungle_log []
setblock ~-5 ~6 ~-6 torch []
fill ~-5 ~0 ~6 ~-5 ~5 ~6 jungle_log []
setblock ~-5 ~6 ~6 torch []
fill ~5 ~0 ~-6 ~5 ~5 ~-6 jungle_log []
setblock ~5 ~6 ~-6 torch []
fill ~5 ~0 ~6 ~5 ~5 ~6 jungle_log []
setblock ~5 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~7 ~-7 ~5 ~8 mossy_stone_bricks []
setblock ~-6 ~6 ~7 gold_block []
setblock ~-6 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 14
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~2 ~1 ~3 slot.container 10 iron_sword 1
replaceitem block ~2 ~1 ~3 slot.container 11 torch 16
replaceitem block ~2 ~1 ~3 slot.container 12 melon_slice 17
replaceitem block ~2 ~1 ~3 slot.container 13 cocoa_beans 10
replaceitem block ~2 ~1 ~3 slot.container 14 bamboo 15
loot insert ~2 ~1 ~3 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
