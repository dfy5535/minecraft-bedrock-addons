# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0905/4224 | 主题内编号: b009/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·铁栏双室地下死牢 (jungle_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cracked_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cracked_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-4 ~4 slot.container 2 slime_ball 8
replaceitem block ~3 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~-4 ~4 slot.container 10 iron_sword 1
replaceitem block ~3 ~-4 ~4 slot.container 11 torch 22
replaceitem block ~3 ~-4 ~4 slot.container 12 melon_slice 16
replaceitem block ~3 ~-4 ~4 slot.container 13 cocoa_beans 9
replaceitem block ~3 ~-4 ~4 slot.container 14 bamboo 14
loot insert ~3 ~-4 ~4 loot "rsf/jungle"
loot insert ~3 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cracked_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mossy_cobblestone []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 jungle_fence []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 jungle_log []
setblock ~-5 ~8 ~-6 torch []
setblock ~-5 ~7 ~6 jungle_log []
setblock ~-5 ~8 ~6 torch []
setblock ~5 ~7 ~-6 jungle_log []
setblock ~5 ~8 ~-6 torch []
setblock ~5 ~7 ~6 jungle_log []
setblock ~5 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 jungle_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 jungle_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 jungle_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-8 ~0 ~9 ~-9 ~6 ~10 mossy_stone_bricks []
setblock ~-8 ~7 ~9 gold_block []
setblock ~-8 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 12 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 13 torch 22
replaceitem block ~4 ~1 ~5 slot.container 14 melon_slice 16
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
