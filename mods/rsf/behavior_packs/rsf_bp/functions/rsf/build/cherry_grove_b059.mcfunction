# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1851/4224 | 主题内编号: b059/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·阶梯金字塔法老墓室 (cherry_grove_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 honeycomb_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-3 ~-4 slot.container 2 feather 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 cherry_log 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 cherry_sapling 5
replaceitem block ~0 ~-3 ~-4 slot.container 12 honey_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 13 honeycomb 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 6
loot insert ~0 ~-3 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cherry_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 cherry_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 cherry_log []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 cherry_log []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 cherry_log []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 cherry_log []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-2 ~0 ~-10 ~-2 ~8 ~-10 cherry_log []
fill ~2 ~0 ~-10 ~2 ~8 ~-10 cherry_log []
fill ~-3 ~8 ~-10 ~3 ~8 ~-10 cherry_slab []
fill ~-2 ~7 ~-10 ~2 ~7 ~-10 stripped_cherry_log []
setblock ~3 ~9 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 7
replaceitem block ~6 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 4 feather 15
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 8
replaceitem block ~6 ~1 ~4 slot.container 9 honeycomb 9
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 12 emerald 10
replaceitem block ~6 ~1 ~4 slot.container 13 amethyst_shard 6
replaceitem block ~6 ~1 ~4 slot.container 14 bow 1
loot insert ~6 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 2
replaceitem block ~-6 ~1 ~5 slot.container 1 phantom_membrane 3
replaceitem block ~-6 ~1 ~5 slot.container 2 feather 10
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 honeycomb 7
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~-6 ~1 ~5 slot.container 13 amethyst_shard 11
replaceitem block ~-6 ~1 ~5 slot.container 14 bow 1
loot insert ~-6 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~5 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
