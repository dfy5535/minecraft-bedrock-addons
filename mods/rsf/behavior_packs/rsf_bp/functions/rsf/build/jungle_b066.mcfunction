# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0962/4224 | 主题内编号: b066/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·崩塌角楼古堡残垣 (jungle_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_cobblestone []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 torch []
setblock ~3 ~-4 ~-4 torch []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 1 slime_ball 8
replaceitem block ~3 ~-2 ~4 slot.container 2 arrow 19
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 iron_sword 1
replaceitem block ~3 ~-2 ~4 slot.container 10 torch 22
replaceitem block ~3 ~-2 ~4 slot.container 11 melon_slice 16
replaceitem block ~3 ~-2 ~4 slot.container 12 cocoa_beans 9
replaceitem block ~3 ~-2 ~4 slot.container 13 bamboo 14
replaceitem block ~3 ~-2 ~4 slot.container 14 jungle_log 19
loot insert ~3 ~-2 ~4 loot "rsf/jungle"
loot insert ~3 ~-2 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 mossy_stone_bricks []
setblock ~-5 ~11 ~-6 torch []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 mossy_stone_bricks []
setblock ~-5 ~11 ~5 torch []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 mossy_stone_bricks []
setblock ~4 ~11 ~-6 torch []
fill ~4 ~1 ~5 ~5 ~10 ~6 mossy_stone_bricks []
setblock ~4 ~11 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 jungle_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 jungle_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 jungle_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-8 ~0 ~9 ~-9 ~8 ~10 mossy_stone_bricks []
setblock ~-8 ~9 ~9 gold_block []
setblock ~-8 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 12 torch 22
replaceitem block ~-4 ~1 ~5 slot.container 13 melon_slice 16
replaceitem block ~-4 ~1 ~5 slot.container 14 cocoa_beans 9
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 12 torch 20
replaceitem block ~4 ~1 ~5 slot.container 13 melon_slice 21
replaceitem block ~4 ~1 ~5 slot.container 14 cocoa_beans 14
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-2 ~0
