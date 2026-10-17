# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0982/4224 | 主题内编号: b086/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·重装矿石金库碉堡 (jungle_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 campfire []
setblock ~4 ~-5 ~0 campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 4 string 19
replaceitem block ~0 ~-3 ~5 slot.container 5 spider_eye 6
replaceitem block ~0 ~-3 ~5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~5 slot.container 10 torch 18
replaceitem block ~0 ~-3 ~5 slot.container 11 melon_slice 19
replaceitem block ~0 ~-3 ~5 slot.container 12 cocoa_beans 12
replaceitem block ~0 ~-3 ~5 slot.container 13 bamboo 17
replaceitem block ~0 ~-3 ~5 slot.container 14 jungle_log 22
loot insert ~0 ~-3 ~5 loot "rsf/jungle"
loot insert ~0 ~-3 ~5 loot "chests/jungle_temple"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 string 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 spider_eye 12
replaceitem block ~0 ~-3 ~-5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~-5 slot.container 10 torch 17
replaceitem block ~0 ~-3 ~-5 slot.container 11 melon_slice 18
replaceitem block ~0 ~-3 ~-5 slot.container 12 cocoa_beans 11
replaceitem block ~0 ~-3 ~-5 slot.container 13 bamboo 16
replaceitem block ~0 ~-3 ~-5 slot.container 14 jungle_log 21
loot insert ~0 ~-3 ~-5 loot "rsf/jungle"
loot insert ~0 ~-3 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 mossy_stone_bricks []
setblock ~-5 ~10 ~-6 torch []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 mossy_stone_bricks []
setblock ~-5 ~10 ~5 torch []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 mossy_stone_bricks []
setblock ~4 ~10 ~-6 torch []
fill ~4 ~1 ~5 ~5 ~9 ~6 mossy_stone_bricks []
setblock ~4 ~10 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mossy_stone_bricks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 jungle_log []
setblock ~-5 ~9 ~-6 torch []
setblock ~-5 ~8 ~6 jungle_log []
setblock ~-5 ~9 ~6 torch []
setblock ~5 ~8 ~-6 jungle_log []
setblock ~5 ~9 ~-6 torch []
setblock ~5 ~8 ~6 jungle_log []
setblock ~5 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~8 ~-9 ~8 ~9 mossy_stone_bricks []
setblock ~-8 ~9 ~8 gold_block []
setblock ~-8 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 12 torch 21
replaceitem block ~-4 ~1 ~5 slot.container 13 melon_slice 22
replaceitem block ~-4 ~1 ~5 slot.container 14 cocoa_beans 8
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 12 torch 19
replaceitem block ~4 ~1 ~5 slot.container 13 melon_slice 20
replaceitem block ~4 ~1 ~5 slot.container 14 cocoa_beans 13
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
