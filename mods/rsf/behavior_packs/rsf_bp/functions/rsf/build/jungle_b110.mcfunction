# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1006/4224 | 主题内编号: b110/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子附魔与酿造实验楼 (jungle_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 jungle_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 19
replaceitem block ~4 ~-2 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 3 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 4 arrow 19
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 bamboo 13
replaceitem block ~4 ~-2 ~3 slot.container 10 jungle_log 18
replaceitem block ~4 ~-2 ~3 slot.container 11 gold_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 12 emerald 8
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 7
loot insert ~4 ~-2 ~3 loot "rsf/jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 mossy_cobblestone []
fill ~2 ~1 ~-5 ~6 ~9 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 stone_brick_slab []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 jungle_planks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 jungle_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_cobblestone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~7 ~-10 ~7 ~8 mossy_stone_bricks []
setblock ~-9 ~8 ~7 gold_block []
setblock ~-9 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_stone_bricks []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 10 torch 22
replaceitem block ~-5 ~1 ~4 slot.container 11 melon_slice 16
replaceitem block ~-5 ~1 ~4 slot.container 12 cocoa_beans 9
replaceitem block ~-5 ~1 ~4 slot.container 13 bamboo 14
replaceitem block ~-5 ~1 ~4 slot.container 14 jungle_log 19
loot insert ~-5 ~1 ~4 loot "rsf/jungle"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 17
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 slime_ball 6
replaceitem block ~5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 10 torch 20
replaceitem block ~5 ~1 ~4 slot.container 11 melon_slice 21
replaceitem block ~5 ~1 ~4 slot.container 12 cocoa_beans 14
replaceitem block ~5 ~1 ~4 slot.container 13 bamboo 12
replaceitem block ~5 ~1 ~4 slot.container 14 jungle_log 17
loot insert ~5 ~1 ~4 loot "rsf/jungle"
loot insert ~5 ~1 ~4 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
