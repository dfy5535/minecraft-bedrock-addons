# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0944/4224 | 主题内编号: b048/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·阶梯王座巅峰试炼台 (jungle_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 cracked_stone_bricks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 moss_block []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 string 19
replaceitem block ~0 ~-2 ~-5 slot.container 1 spider_eye 6
replaceitem block ~0 ~-2 ~-5 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-5 slot.container 3 slime_ball 8
replaceitem block ~0 ~-2 ~-5 slot.container 4 arrow 19
replaceitem block ~0 ~-2 ~-5 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-2 ~-5 slot.container 10 torch 19
replaceitem block ~0 ~-2 ~-5 slot.container 11 melon_slice 20
replaceitem block ~0 ~-2 ~-5 slot.container 12 cocoa_beans 13
replaceitem block ~0 ~-2 ~-5 slot.container 13 bamboo 18
replaceitem block ~0 ~-2 ~-5 slot.container 14 jungle_log 16
loot insert ~0 ~-2 ~-5 loot "rsf/jungle"
loot insert ~0 ~-2 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 moss_block []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 cracked_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 jungle_log []
setblock ~-6 ~11 ~-7 campfire []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 jungle_log []
setblock ~-6 ~11 ~7 campfire []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 jungle_log []
setblock ~6 ~11 ~-7 campfire []
fill ~6 ~8 ~7 ~6 ~10 ~7 jungle_log []
setblock ~6 ~11 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 jungle_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x10x3) ---
fill ~-9 ~0 ~10 ~-10 ~5 ~11 mossy_stone_bricks []
setblock ~-9 ~6 ~10 gold_block []
setblock ~-9 ~7 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~6 slot.container 9 bamboo 18
replaceitem block ~-5 ~1 ~6 slot.container 10 jungle_log 16
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~6 loot "rsf/jungle"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 6
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 bamboo 16
replaceitem block ~5 ~1 ~6 slot.container 10 jungle_log 21
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~6 loot "rsf/jungle"
loot insert ~5 ~1 ~6 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-2 ~0
