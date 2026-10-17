# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0931/4224 | 主题内编号: b035/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·巨石垒砌古战石冢 (jungle_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 jungle_planks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 jungle_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 jungle_planks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 1 string 19
replaceitem block ~0 ~-4 ~3 slot.container 2 spider_eye 6
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 9
replaceitem block ~0 ~-4 ~3 slot.container 4 slime_ball 8
replaceitem block ~0 ~-4 ~3 slot.container 5 arrow 19
replaceitem block ~0 ~-4 ~3 slot.container 9 emerald 10
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 2
replaceitem block ~0 ~-4 ~3 slot.container 12 iron_sword 1
replaceitem block ~0 ~-4 ~3 slot.container 13 torch 19
replaceitem block ~0 ~-4 ~3 slot.container 14 melon_slice 20
loot insert ~0 ~-4 ~3 loot "rsf/jungle"
loot insert ~0 ~-4 ~3 loot "chests/jungle_temple"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 spider_eye 12
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 slime_ball 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 9 emerald 9
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 torch 18
replaceitem block ~0 ~-4 ~-3 slot.container 14 melon_slice 19
loot insert ~0 ~-4 ~-3 loot "rsf/jungle"
loot insert ~0 ~-4 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 jungle_planks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 stripped_jungle_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 stripped_jungle_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 stripped_jungle_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 stripped_jungle_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_jungle_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_jungle_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 stripped_jungle_log []
setblock ~-6 ~4 ~0 emerald_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 stripped_jungle_log []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~7 ~-8 ~7 ~8 mossy_stone_bricks []
setblock ~-7 ~8 ~7 gold_block []
setblock ~-7 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 jungle_log 16
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~3 ~1 ~4 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
