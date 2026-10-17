# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0908/4224 | 主题内编号: b012/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子暗门地底宝库 (jungle_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cracked_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 2 string 19
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 10 torch 18
replaceitem block ~4 ~-3 ~3 slot.container 11 melon_slice 19
replaceitem block ~4 ~-3 ~3 slot.container 12 cocoa_beans 12
replaceitem block ~4 ~-3 ~3 slot.container 13 bamboo 17
replaceitem block ~4 ~-3 ~3 slot.container 14 jungle_log 22
loot insert ~4 ~-3 ~3 loot "rsf/jungle"
loot insert ~4 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 stone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~8 ~-10 ~4 ~9 mossy_stone_bricks []
setblock ~-9 ~5 ~8 gold_block []
setblock ~-9 ~6 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 14 torch 19
loot insert ~-5 ~1 ~4 loot "rsf/jungle"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 string 17
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~5 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 14 torch 17
loot insert ~5 ~1 ~4 loot "rsf/jungle"
loot insert ~5 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
