# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0954/4224 | 主题内编号: b058/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十字拱顶家族陵墓 (jungle_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~0 ~-3 ~4 slot.container 2 string 19
replaceitem block ~0 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 5 slime_ball 8
replaceitem block ~0 ~-3 ~4 slot.container 9 gold_ingot 7
replaceitem block ~0 ~-3 ~4 slot.container 10 emerald 6
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_sword 1
replaceitem block ~0 ~-3 ~4 slot.container 14 torch 22
loot insert ~0 ~-3 ~4 loot "rsf/jungle"
loot insert ~0 ~-3 ~4 loot "chests/jungle_temple"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 12
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 5 slime_ball 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 gold_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_sword 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 torch 21
loot insert ~0 ~-3 ~-4 loot "rsf/jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 mossy_cobblestone []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 stone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 jungle_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~7 ~-9 ~5 ~8 mossy_stone_bricks []
setblock ~-8 ~6 ~7 gold_block []
setblock ~-8 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 bamboo 14
replaceitem block ~-4 ~1 ~5 slot.container 10 jungle_log 19
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 9
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 1
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 bamboo 12
replaceitem block ~4 ~1 ~5 slot.container 10 jungle_log 17
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
