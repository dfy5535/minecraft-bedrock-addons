# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0940/4224 | 主题内编号: b044/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子祭台勇士角斗场 (jungle_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_cobblestone []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 2
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 torch 19
replaceitem block ~0 ~-4 ~-3 slot.container 12 melon_slice 20
replaceitem block ~0 ~-4 ~-3 slot.container 13 cocoa_beans 13
replaceitem block ~0 ~-4 ~-3 slot.container 14 bamboo 18
loot insert ~0 ~-4 ~-3 loot "rsf/jungle"
loot insert ~0 ~-4 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~8 ~6 stone_bricks []
fill ~2 ~1 ~-6 ~6 ~8 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~7 ~5 air []
fill ~3 ~1 ~-5 ~5 ~7 ~5 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-6 ~-6 ~9 ~-6 jungle_log []
setblock ~-6 ~10 ~-6 campfire []
fill ~-6 ~7 ~6 ~-6 ~9 ~6 jungle_log []
setblock ~-6 ~10 ~6 campfire []
fill ~6 ~7 ~-6 ~6 ~9 ~-6 jungle_log []
setblock ~6 ~10 ~-6 campfire []
fill ~6 ~7 ~6 ~6 ~9 ~6 jungle_log []
setblock ~6 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 jungle_log []
setblock ~-8 ~6 ~-8 campfire []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 jungle_log []
setblock ~-8 ~6 ~8 campfire []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 jungle_log []
setblock ~8 ~6 ~-8 campfire []
fill ~8 ~0 ~8 ~8 ~5 ~8 jungle_log []
setblock ~8 ~6 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~8 ~-10 ~6 ~9 mossy_stone_bricks []
setblock ~-9 ~7 ~8 gold_block []
setblock ~-9 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 9 melon_slice 18
replaceitem block ~-5 ~1 ~5 slot.container 10 cocoa_beans 11
replaceitem block ~-5 ~1 ~5 slot.container 11 bamboo 16
replaceitem block ~-5 ~1 ~5 slot.container 12 jungle_log 21
replaceitem block ~-5 ~1 ~5 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 14 emerald 4
loot insert ~-5 ~1 ~5 loot "rsf/jungle"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 3 bone 14
replaceitem block ~5 ~1 ~5 slot.container 4 string 17
replaceitem block ~5 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~5 slot.container 9 melon_slice 16
replaceitem block ~5 ~1 ~5 slot.container 10 cocoa_beans 9
replaceitem block ~5 ~1 ~5 slot.container 11 bamboo 14
replaceitem block ~5 ~1 ~5 slot.container 12 jungle_log 19
replaceitem block ~5 ~1 ~5 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~5 slot.container 14 emerald 9
loot insert ~5 ~1 ~5 loot "rsf/jungle"
loot insert ~5 ~1 ~5 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
