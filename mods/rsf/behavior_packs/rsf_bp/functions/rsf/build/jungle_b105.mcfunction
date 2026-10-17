# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1001/4224 | 主题内编号: b105/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·满书架奥术附魔书院 (jungle_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log2
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 cracked_stone_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 cracked_stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 jungle_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 jungle_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 19
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 slime_ball 8
replaceitem block ~0 ~-4 ~5 slot.container 9 melon_slice 18
replaceitem block ~0 ~-4 ~5 slot.container 10 cocoa_beans 11
replaceitem block ~0 ~-4 ~5 slot.container 11 bamboo 16
replaceitem block ~0 ~-4 ~5 slot.container 12 jungle_log 21
replaceitem block ~0 ~-4 ~5 slot.container 13 gold_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 14 emerald 4
loot insert ~0 ~-4 ~5 loot "rsf/jungle"
loot insert ~0 ~-4 ~5 loot "chests/jungle_temple"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 slime_ball 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 melon_slice 17
replaceitem block ~0 ~-4 ~-5 slot.container 10 cocoa_beans 10
replaceitem block ~0 ~-4 ~-5 slot.container 11 bamboo 15
replaceitem block ~0 ~-4 ~-5 slot.container 12 jungle_log 20
replaceitem block ~0 ~-4 ~-5 slot.container 13 gold_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 14 emerald 10
loot insert ~0 ~-4 ~-5 loot "rsf/jungle"
loot insert ~0 ~-4 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~8 ~6 cracked_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~7 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~8 ~-6 jungle_log []
fill ~-4 ~1 ~6 ~-4 ~8 ~6 jungle_log []
fill ~4 ~1 ~-6 ~4 ~8 ~-6 jungle_log []
fill ~4 ~1 ~6 ~4 ~8 ~6 jungle_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 jungle_fence []
setblock ~4 ~2 ~0 jungle_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-7 ~-5 ~9 ~7 stone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-7 ~5 ~9 ~7 stone_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-6 ~-4 ~10 ~6 stone_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-6 ~4 ~10 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-6 ~3 ~10 ~6 jungle_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 jungle_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 jungle_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 jungle_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~9 ~-8 ~7 ~10 mossy_stone_bricks []
setblock ~-7 ~8 ~9 gold_block []
setblock ~-7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 14
replaceitem block ~3 ~1 ~5 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~5 slot.container 9 jungle_log 16
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 7
replaceitem block ~3 ~1 ~5 slot.container 11 emerald 6
replaceitem block ~3 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~3 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~5 slot.container 14 iron_sword 1
loot insert ~3 ~1 ~5 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
