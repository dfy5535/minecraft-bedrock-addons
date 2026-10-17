# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0930/4224 | 主题内编号: b034/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子对称铭文方尖碑 (jungle_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 jungle_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 arrow 19
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 16
replaceitem block ~3 ~-2 ~2 slot.container 4 string 19
replaceitem block ~3 ~-2 ~2 slot.container 5 spider_eye 6
replaceitem block ~3 ~-2 ~2 slot.container 9 gold_ingot 8
replaceitem block ~3 ~-2 ~2 slot.container 10 emerald 7
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-2 ~2 slot.container 12 golden_apple 6
replaceitem block ~3 ~-2 ~2 slot.container 13 iron_sword 1
replaceitem block ~3 ~-2 ~2 slot.container 14 torch 16
loot insert ~3 ~-2 ~2 loot "rsf/jungle"
loot insert ~3 ~-2 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~12 ~4 mossy_cobblestone []
fill ~2 ~1 ~-4 ~5 ~12 ~4 mossy_cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~11 ~3 air []
fill ~3 ~1 ~-3 ~4 ~11 ~3 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 mossy_stone_bricks []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mossy_stone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 mossy_cobblestone []
fill ~0 ~17 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mossy_stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-8 ~0 ~5 ~-9 ~6 ~6 mossy_stone_bricks []
setblock ~-8 ~7 ~5 gold_block []
setblock ~-8 ~8 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 melon_slice 22
replaceitem block ~-4 ~1 ~3 slot.container 10 cocoa_beans 8
replaceitem block ~-4 ~1 ~3 slot.container 11 bamboo 13
replaceitem block ~-4 ~1 ~3 slot.container 12 jungle_log 18
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 14 emerald 8
loot insert ~-4 ~1 ~3 loot "rsf/jungle"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~3 slot.container 1 slime_ball 6
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 melon_slice 20
replaceitem block ~4 ~1 ~3 slot.container 10 cocoa_beans 13
replaceitem block ~4 ~1 ~3 slot.container 11 bamboo 18
replaceitem block ~4 ~1 ~3 slot.container 12 jungle_log 16
replaceitem block ~4 ~1 ~3 slot.container 13 gold_ingot 7
replaceitem block ~4 ~1 ~3 slot.container 14 emerald 6
loot insert ~4 ~1 ~3 loot "rsf/jungle"
loot insert ~4 ~1 ~3 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
