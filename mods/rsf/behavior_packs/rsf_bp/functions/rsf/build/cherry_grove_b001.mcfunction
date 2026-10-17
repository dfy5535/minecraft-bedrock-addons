# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1793/4224 | 主题内编号: b001/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·三层阶梯圣火祭坛 (cherry_grove_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cherry_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 ender_pearl 4
replaceitem block ~3 ~-2 ~2 slot.container 1 phantom_membrane 5
replaceitem block ~3 ~-2 ~2 slot.container 2 feather 12
replaceitem block ~3 ~-2 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-2 ~2 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~2 slot.container 5 string 15
replaceitem block ~3 ~-2 ~2 slot.container 9 honeycomb 10
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_apple 7
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_ingot 12
replaceitem block ~3 ~-2 ~2 slot.container 12 emerald 4
replaceitem block ~3 ~-2 ~2 slot.container 13 amethyst_shard 7
replaceitem block ~3 ~-2 ~2 slot.container 14 bow 1
loot insert ~3 ~-2 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-2 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 calcite []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 cherry_planks []
fill ~-3 ~5 ~-2 ~3 ~5 ~2 cherry_planks []
fill ~-3 ~1 ~-2 ~3 ~4 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 cherry_log []
setblock ~-5 ~8 ~-4 campfire []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 cherry_log []
setblock ~-5 ~8 ~4 campfire []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 cherry_log []
setblock ~5 ~8 ~-4 campfire []
fill ~5 ~5 ~4 ~5 ~7 ~4 cherry_log []
setblock ~5 ~8 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 cherry_log []
setblock ~-7 ~4 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 cherry_log []
setblock ~-7 ~4 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 cherry_log []
setblock ~7 ~4 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~3 ~6 cherry_log []
setblock ~7 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~-1 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 9
replaceitem block ~4 ~1 ~2 slot.container 1 string 10
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 7
replaceitem block ~4 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 5
replaceitem block ~4 ~1 ~2 slot.container 10 cherry_log 18
replaceitem block ~4 ~1 ~2 slot.container 11 cherry_sapling 7
replaceitem block ~4 ~1 ~2 slot.container 12 honey_bottle 8
replaceitem block ~4 ~1 ~2 slot.container 13 honeycomb 11
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 2
replaceitem block ~-4 ~1 ~3 slot.container 3 phantom_membrane 3
replaceitem block ~-4 ~1 ~3 slot.container 4 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 10
replaceitem block ~-4 ~1 ~3 slot.container 10 cherry_log 16
replaceitem block ~-4 ~1 ~3 slot.container 11 cherry_sapling 5
replaceitem block ~-4 ~1 ~3 slot.container 12 honey_bottle 6
replaceitem block ~-4 ~1 ~3 slot.container 13 honeycomb 9
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
