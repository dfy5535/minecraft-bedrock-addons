# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1017/4224 | 主题内编号: b121/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·卫城廊柱王座大殿与地宫 (jungle_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cracked_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cracked_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 jungle_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cracked_stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 19
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 jungle_log 17
replaceitem block ~0 ~-4 ~5 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~5 slot.container 11 emerald 7
replaceitem block ~0 ~-4 ~5 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~5 loot "rsf/jungle"
loot insert ~0 ~-4 ~5 loot "chests/jungle_temple"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 9 jungle_log 16
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 7
replaceitem block ~0 ~-4 ~-5 slot.container 11 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 5
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~-5 loot "rsf/jungle"
loot insert ~0 ~-4 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~9 ~7 cracked_stone_bricks []
fill ~-5 ~1 ~0 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~9 ~-7 jungle_log []
fill ~-4 ~1 ~-7 ~-4 ~9 ~-7 jungle_log []
fill ~-2 ~1 ~-7 ~-2 ~9 ~-7 jungle_log []
fill ~0 ~1 ~-7 ~0 ~9 ~-7 jungle_log []
fill ~2 ~1 ~-7 ~2 ~9 ~-7 jungle_log []
fill ~4 ~1 ~-7 ~4 ~9 ~-7 jungle_log []
fill ~6 ~1 ~-7 ~6 ~9 ~-7 jungle_log []
fill ~-6 ~9 ~-7 ~6 ~9 ~-1 mossy_cobblestone []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~10 ~-8 ~-7 ~10 ~8 stone_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-8 ~7 ~10 ~8 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-7 ~-6 ~11 ~7 stone_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-7 ~6 ~11 ~7 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-7 ~5 ~11 ~7 jungle_slab []
fill ~0 ~12 ~-8 ~0 ~12 ~8 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 jungle_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~8 ~-10 ~8 ~9 mossy_stone_bricks []
setblock ~-9 ~9 ~8 gold_block []
setblock ~-9 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 9 cocoa_beans 10
replaceitem block ~5 ~1 ~6 slot.container 10 bamboo 15
replaceitem block ~5 ~1 ~6 slot.container 11 jungle_log 20
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~6 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
