# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0928/4224 | 主题内编号: b032/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·断顶残垣古哨塔 (jungle_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 9x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_stone_bricks []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 cracked_stone_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 moss_block []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 string 19
replaceitem block ~0 ~-2 ~-3 slot.container 1 spider_eye 6
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 3 slime_ball 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 arrow 19
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 melon_slice 16
replaceitem block ~0 ~-2 ~-3 slot.container 10 cocoa_beans 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 bamboo 14
replaceitem block ~0 ~-2 ~-3 slot.container 12 jungle_log 19
replaceitem block ~0 ~-2 ~-3 slot.container 13 gold_ingot 10
replaceitem block ~0 ~-2 ~-3 slot.container 14 emerald 9
loot insert ~0 ~-2 ~-3 loot "rsf/jungle"
loot insert ~0 ~-2 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~10 ~5 stone_bricks []
fill ~-2 ~1 ~-4 ~2 ~9 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~10 ~-5 jungle_log []
fill ~-3 ~1 ~5 ~-3 ~10 ~5 jungle_log []
fill ~3 ~1 ~-5 ~3 ~10 ~-5 jungle_log []
fill ~3 ~1 ~5 ~3 ~10 ~5 jungle_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~10 ~-5 ~3 ~10 ~5 stone_brick_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-3 ~9 ~-1 ~-3 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 jungle_log []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 jungle_log []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 jungle_log []
fill ~4 ~0 ~2 ~4 ~9 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~7 ~-7 ~4 ~8 mossy_stone_bricks []
setblock ~-6 ~5 ~7 gold_block []
setblock ~-6 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-2 ~1 ~4 slot.container 2 string 14
replaceitem block ~-2 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-2 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-2 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-2 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-2 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-2 ~1 ~4 slot.container 12 golden_apple 1
replaceitem block ~-2 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-2 ~1 ~4 slot.container 14 torch 18
loot insert ~-2 ~1 ~4 loot "rsf/jungle"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 string 17
replaceitem block ~2 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~2 ~1 ~4 slot.container 3 slime_ball 6
replaceitem block ~2 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~2 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~2 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~2 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~2 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~2 ~1 ~4 slot.container 14 torch 16
loot insert ~2 ~1 ~4 loot "rsf/jungle"
loot insert ~2 ~1 ~4 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
