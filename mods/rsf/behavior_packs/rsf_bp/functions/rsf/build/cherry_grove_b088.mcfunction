# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1880/4224 | 主题内编号: b088/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·矿车铁轨转运仓库 (cherry_grove_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~-3 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~3 ~-3 ~4 slot.container 3 feather 12
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 14
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_apple 2
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 6
replaceitem block ~3 ~-3 ~4 slot.container 12 amethyst_shard 9
replaceitem block ~3 ~-3 ~4 slot.container 13 bow 1
replaceitem block ~3 ~-3 ~4 slot.container 14 lantern 9
loot insert ~3 ~-3 ~4 loot "rsf/cherry_grove"
loot insert ~3 ~-3 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 stripped_cherry_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 stripped_cherry_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 stripped_cherry_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 stripped_cherry_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 cherry_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 cherry_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 cherry_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 cherry_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 cherry_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cherry_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~7 ~-9 cherry_log []
fill ~-3 ~7 ~-9 ~3 ~7 ~-9 cherry_slab []
fill ~-2 ~6 ~-9 ~2 ~6 ~-9 stripped_cherry_log []
setblock ~1 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 8
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~4 slot.container 2 string 10
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 5 ender_pearl 7
replaceitem block ~-4 ~1 ~4 slot.container 9 cherry_log 20
replaceitem block ~-4 ~1 ~4 slot.container 10 cherry_sapling 9
replaceitem block ~-4 ~1 ~4 slot.container 11 honey_bottle 10
replaceitem block ~-4 ~1 ~4 slot.container 12 honeycomb 6
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~4 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-3 ~0
