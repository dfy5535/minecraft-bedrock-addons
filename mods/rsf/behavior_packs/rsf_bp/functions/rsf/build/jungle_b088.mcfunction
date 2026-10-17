# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0984/4224 | 主题内编号: b088/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·矿车铁轨转运仓库 (jungle_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 stone_bricks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 stone_bricks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 stone_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 mossy_stone_bricks []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 cracked_stone_bricks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 9
replaceitem block ~2 ~-2 ~5 slot.container 1 slime_ball 8
replaceitem block ~2 ~-2 ~5 slot.container 2 arrow 19
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-2 ~5 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~5 slot.container 9 iron_ingot 6
replaceitem block ~2 ~-2 ~5 slot.container 10 golden_apple 2
replaceitem block ~2 ~-2 ~5 slot.container 11 iron_sword 1
replaceitem block ~2 ~-2 ~5 slot.container 12 torch 19
replaceitem block ~2 ~-2 ~5 slot.container 13 melon_slice 20
replaceitem block ~2 ~-2 ~5 slot.container 14 cocoa_beans 13
loot insert ~2 ~-2 ~5 loot "rsf/jungle"
loot insert ~2 ~-2 ~5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~7 ~7 stone_bricks []
fill ~-3 ~1 ~-6 ~3 ~6 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 jungle_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 jungle_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 jungle_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 jungle_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-8 ~-5 ~8 ~8 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-8 ~5 ~8 ~8 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-7 ~-4 ~9 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-7 ~4 ~9 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-7 ~3 ~9 ~7 stone_brick_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 moss_block []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 campfire []
setblock ~2 ~4 ~-10 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~8 ~-8 ~5 ~9 mossy_stone_bricks []
setblock ~-7 ~6 ~8 gold_block []
setblock ~-7 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~6 slot.container 2 string 14
replaceitem block ~-3 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~6 slot.container 5 slime_ball 11
replaceitem block ~-3 ~1 ~6 slot.container 9 bamboo 16
replaceitem block ~-3 ~1 ~6 slot.container 10 jungle_log 21
replaceitem block ~-3 ~1 ~6 slot.container 11 gold_ingot 12
replaceitem block ~-3 ~1 ~6 slot.container 12 emerald 4
replaceitem block ~-3 ~1 ~6 slot.container 13 iron_ingot 7
replaceitem block ~-3 ~1 ~6 slot.container 14 golden_apple 3
loot insert ~-3 ~1 ~6 loot "rsf/jungle"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 string 17
replaceitem block ~3 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~6 slot.container 3 slime_ball 6
replaceitem block ~3 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 bamboo 14
replaceitem block ~3 ~1 ~6 slot.container 10 jungle_log 19
replaceitem block ~3 ~1 ~6 slot.container 11 gold_ingot 10
replaceitem block ~3 ~1 ~6 slot.container 12 emerald 9
replaceitem block ~3 ~1 ~6 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~6 slot.container 14 golden_apple 1
loot insert ~3 ~1 ~6 loot "rsf/jungle"
loot insert ~3 ~1 ~6 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
