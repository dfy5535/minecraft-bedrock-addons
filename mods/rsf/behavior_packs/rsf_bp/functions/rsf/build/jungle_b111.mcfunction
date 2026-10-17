# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1007/4224 | 主题内编号: b111/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·地下禁忌书库与炼药室 (jungle_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 jungle_planks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 jungle_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 jungle_planks []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-4 ~4 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~4 slot.container 5 string 19
replaceitem block ~0 ~-4 ~4 slot.container 9 jungle_log 21
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-4 ~4 slot.container 11 emerald 4
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 7
replaceitem block ~0 ~-4 ~4 slot.container 13 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~4 loot "rsf/jungle"
loot insert ~0 ~-4 ~4 loot "chests/jungle_temple"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 slime_ball 6
replaceitem block ~0 ~-4 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 17
replaceitem block ~0 ~-4 ~-4 slot.container 9 jungle_log 20
replaceitem block ~0 ~-4 ~-4 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-4 ~-4 slot.container 11 emerald 10
replaceitem block ~0 ~-4 ~-4 slot.container 12 iron_ingot 6
replaceitem block ~0 ~-4 ~-4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~-4 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~-4 loot "rsf/jungle"
loot insert ~0 ~-4 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 jungle_planks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mossy_stone_bricks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 jungle_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

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
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 cocoa_beans 14
replaceitem block ~4 ~1 ~5 slot.container 10 bamboo 12
replaceitem block ~4 ~1 ~5 slot.container 11 jungle_log 17
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
