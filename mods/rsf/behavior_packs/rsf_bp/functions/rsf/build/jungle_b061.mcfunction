# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0957/4224 | 主题内编号: b061/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子封土古墓地宫 (jungle_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cracked_stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cracked_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 jungle_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 jungle_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_cobblestone []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 2
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 torch 19
replaceitem block ~0 ~-4 ~-3 slot.container 12 melon_slice 20
replaceitem block ~0 ~-4 ~-3 slot.container 13 cocoa_beans 13
replaceitem block ~0 ~-4 ~-3 slot.container 14 bamboo 18
loot insert ~0 ~-4 ~-3 loot "rsf/jungle"
loot insert ~0 ~-4 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 cracked_stone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 cracked_stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mossy_cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~6 ~-10 ~8 ~7 mossy_stone_bricks []
setblock ~-9 ~9 ~6 gold_block []
setblock ~-9 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 bone 11
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 cocoa_beans 13
replaceitem block ~5 ~1 ~4 slot.container 10 bamboo 18
replaceitem block ~5 ~1 ~4 slot.container 11 jungle_log 16
replaceitem block ~5 ~1 ~4 slot.container 12 gold_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~4 loot "rsf/jungle"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
