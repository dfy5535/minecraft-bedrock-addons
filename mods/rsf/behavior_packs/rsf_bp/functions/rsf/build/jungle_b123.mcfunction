# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1019/4224 | 主题内编号: b123/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·四角塔楼领主城堡复合体 (jungle_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 jungle_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 jungle_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 lantern []
setblock ~4 ~-6 ~-5 lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 slime_ball 8
replaceitem block ~4 ~-4 ~5 slot.container 1 arrow 19
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~5 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~5 slot.container 5 string 19
replaceitem block ~4 ~-4 ~5 slot.container 9 torch 22
replaceitem block ~4 ~-4 ~5 slot.container 10 melon_slice 16
replaceitem block ~4 ~-4 ~5 slot.container 11 cocoa_beans 9
replaceitem block ~4 ~-4 ~5 slot.container 12 bamboo 14
replaceitem block ~4 ~-4 ~5 slot.container 13 jungle_log 19
replaceitem block ~4 ~-4 ~5 slot.container 14 gold_ingot 10
loot insert ~4 ~-4 ~5 loot "rsf/jungle"
loot insert ~4 ~-4 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 jungle_planks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~11 ~-6 mossy_stone_bricks []
setblock ~-6 ~12 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~11 ~7 mossy_stone_bricks []
setblock ~-6 ~12 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~11 ~-6 mossy_stone_bricks []
setblock ~5 ~12 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~11 ~7 mossy_stone_bricks []
setblock ~5 ~12 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 jungle_fence []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 air []
setblock ~-6 ~10 ~-7 stripped_jungle_log []
setblock ~-6 ~11 ~-7 lantern []
setblock ~-6 ~10 ~7 stripped_jungle_log []
setblock ~-6 ~11 ~7 lantern []
setblock ~6 ~10 ~-7 stripped_jungle_log []
setblock ~6 ~11 ~-7 lantern []
setblock ~6 ~10 ~7 stripped_jungle_log []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_jungle_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_jungle_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_jungle_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_jungle_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x10x3) ---
fill ~-9 ~0 ~10 ~-10 ~5 ~11 mossy_stone_bricks []
setblock ~-9 ~6 ~10 gold_block []
setblock ~-9 ~7 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 10 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 11 torch 22
replaceitem block ~5 ~1 ~6 slot.container 12 melon_slice 16
replaceitem block ~5 ~1 ~6 slot.container 13 cocoa_beans 9
replaceitem block ~5 ~1 ~6 slot.container 14 bamboo 14
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
