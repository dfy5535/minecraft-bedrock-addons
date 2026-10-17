# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0948/4224 | 主题内编号: b052/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·重檐行商旅店客栈 (jungle_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace log2
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 stone_bricks [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 cracked_stone_bricks []
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-2 ~5 slot.container 1 bone 16
replaceitem block ~3 ~-2 ~5 slot.container 2 string 19
replaceitem block ~3 ~-2 ~5 slot.container 3 spider_eye 6
replaceitem block ~3 ~-2 ~5 slot.container 4 gunpowder 9
replaceitem block ~3 ~-2 ~5 slot.container 5 slime_ball 8
replaceitem block ~3 ~-2 ~5 slot.container 9 iron_sword 1
replaceitem block ~3 ~-2 ~5 slot.container 10 torch 16
replaceitem block ~3 ~-2 ~5 slot.container 11 melon_slice 17
replaceitem block ~3 ~-2 ~5 slot.container 12 cocoa_beans 10
replaceitem block ~3 ~-2 ~5 slot.container 13 bamboo 15
replaceitem block ~3 ~-2 ~5 slot.container 14 jungle_log 20
loot insert ~3 ~-2 ~5 loot "rsf/jungle"
loot insert ~3 ~-2 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 stone_brick_slab []
fill ~-4 ~5 ~-6 ~4 ~8 ~6 cracked_stone_bricks []
fill ~-3 ~5 ~-5 ~3 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-8 ~6 ~8 ~8 stone_brick_slab []
fill ~-4 ~9 ~-6 ~4 ~10 ~6 cracked_stone_bricks []
fill ~-5 ~11 ~-7 ~5 ~11 ~7 jungle_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 moss_block []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 jungle_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 jungle_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 stone_brick_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~8 ~-9 ~4 ~9 mossy_stone_bricks []
setblock ~-8 ~5 ~8 gold_block []
setblock ~-8 ~6 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~6 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~6 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 gold_ingot 9
replaceitem block ~-4 ~1 ~6 slot.container 10 emerald 8
replaceitem block ~-4 ~1 ~6 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~6 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~6 slot.container 14 torch 17
loot insert ~-4 ~1 ~6 loot "rsf/jungle"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 string 17
replaceitem block ~4 ~1 ~6 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~6 slot.container 9 gold_ingot 7
replaceitem block ~4 ~1 ~6 slot.container 10 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~6 slot.container 14 torch 22
loot insert ~4 ~1 ~6 loot "rsf/jungle"
loot insert ~4 ~1 ~6 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
