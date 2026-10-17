# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1024/4224 | 主题内编号: b128/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·U型紫禁朝堂大殿与地底金库 (jungle_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 slime_ball 8
replaceitem block ~4 ~-3 ~5 slot.container 2 arrow 19
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 iron_sword 1
replaceitem block ~4 ~-3 ~5 slot.container 10 torch 18
replaceitem block ~4 ~-3 ~5 slot.container 11 melon_slice 19
replaceitem block ~4 ~-3 ~5 slot.container 12 cocoa_beans 12
replaceitem block ~4 ~-3 ~5 slot.container 13 bamboo 17
replaceitem block ~4 ~-3 ~5 slot.container 14 jungle_log 22
loot insert ~4 ~-3 ~5 loot "rsf/jungle"
loot insert ~4 ~-3 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 jungle_planks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-8 ~7 ~9 ~8 stone_brick_slab []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 cracked_stone_bricks []
fill ~-6 ~12 ~-7 ~6 ~12 ~7 jungle_slab []
setblock ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~0 ~9 ~-10 ~5 ~10 mossy_stone_bricks []
setblock ~-9 ~6 ~9 gold_block []
setblock ~-9 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~6 slot.container 9 bamboo 14
replaceitem block ~-5 ~1 ~6 slot.container 10 jungle_log 19
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 9
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 1
loot insert ~-5 ~1 ~6 loot "rsf/jungle"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 6
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 bamboo 12
replaceitem block ~5 ~1 ~6 slot.container 10 jungle_log 17
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~6 loot "rsf/jungle"
loot insert ~5 ~1 ~6 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
