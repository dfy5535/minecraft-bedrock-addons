# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0977/4224 | 主题内编号: b081/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双高炉重工冶炼密室 (jungle_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cracked_stone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cracked_stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 jungle_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 jungle_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 cracked_stone_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 slime_ball 8
replaceitem block ~2 ~-4 ~4 slot.container 1 arrow 19
replaceitem block ~2 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~2 ~-4 ~4 slot.container 5 string 19
replaceitem block ~2 ~-4 ~4 slot.container 9 golden_apple 4
replaceitem block ~2 ~-4 ~4 slot.container 10 iron_sword 1
replaceitem block ~2 ~-4 ~4 slot.container 11 torch 21
replaceitem block ~2 ~-4 ~4 slot.container 12 melon_slice 22
replaceitem block ~2 ~-4 ~4 slot.container 13 cocoa_beans 8
replaceitem block ~2 ~-4 ~4 slot.container 14 bamboo 13
loot insert ~2 ~-4 ~4 loot "rsf/jungle"
loot insert ~2 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~7 ~6 cracked_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~6 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~10 ~6 mossy_cobblestone []
setblock ~-4 ~11 ~6 torch []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-7 ~-5 ~8 ~7 stone_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-7 ~5 ~8 ~7 stone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~-4 ~9 ~6 stone_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-6 ~4 ~9 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-6 ~3 ~9 ~6 jungle_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 jungle_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 jungle_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 jungle_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~9 ~-8 ~8 ~10 mossy_stone_bricks []
setblock ~-7 ~9 ~9 gold_block []
setblock ~-7 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 14
replaceitem block ~3 ~1 ~5 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~5 slot.container 9 cocoa_beans 12
replaceitem block ~3 ~1 ~5 slot.container 10 bamboo 17
replaceitem block ~3 ~1 ~5 slot.container 11 jungle_log 22
replaceitem block ~3 ~1 ~5 slot.container 12 gold_ingot 6
replaceitem block ~3 ~1 ~5 slot.container 13 emerald 5
replaceitem block ~3 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~5 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
