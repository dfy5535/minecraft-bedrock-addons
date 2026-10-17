# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1825/4224 | 主题内编号: b033/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·太阳金顶高耸方尖碑 (cherry_grove_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cherry_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cherry_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cherry_planks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 gunpowder 6
replaceitem block ~0 ~-2 ~-1 slot.container 1 arrow 17
replaceitem block ~0 ~-2 ~-1 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-2 ~-1 slot.container 3 phantom_membrane 5
replaceitem block ~0 ~-2 ~-1 slot.container 4 feather 12
replaceitem block ~0 ~-2 ~-1 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-2 ~-1 slot.container 9 cherry_sapling 5
replaceitem block ~0 ~-2 ~-1 slot.container 10 honey_bottle 6
replaceitem block ~0 ~-2 ~-1 slot.container 11 honeycomb 9
replaceitem block ~0 ~-2 ~-1 slot.container 12 golden_apple 6
replaceitem block ~0 ~-2 ~-1 slot.container 13 iron_ingot 11
replaceitem block ~0 ~-2 ~-1 slot.container 14 emerald 10
loot insert ~0 ~-2 ~-1 loot "rsf/cherry_grove"
loot insert ~0 ~-2 ~-1 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 calcite []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 cherry_planks []
fill ~-2 ~5 ~-1 ~2 ~10 ~1 cherry_planks []
fill ~-2 ~1 ~-1 ~2 ~9 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cherry_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 calcite []
fill ~0 ~16 ~0 ~0 ~19 ~0 amethyst_block []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~3 ~-5 cherry_log []
setblock ~-6 ~4 ~-5 campfire []
fill ~-6 ~0 ~5 ~-6 ~3 ~5 cherry_log []
setblock ~-6 ~4 ~5 campfire []
fill ~6 ~0 ~-5 ~6 ~3 ~-5 cherry_log []
setblock ~6 ~4 ~-5 campfire []
fill ~6 ~0 ~5 ~6 ~3 ~5 cherry_log []
setblock ~6 ~4 ~5 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 5x4x5) ---
fill ~-2 ~0 ~-5 ~-2 ~7 ~-5 cherry_log []
fill ~2 ~0 ~-5 ~2 ~7 ~-5 cherry_log []
fill ~-3 ~7 ~-5 ~3 ~7 ~-5 cherry_slab []
fill ~-2 ~6 ~-5 ~2 ~6 ~-5 stripped_cherry_log []
setblock ~0 ~8 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 9
replaceitem block ~3 ~1 ~1 slot.container 1 string 10
replaceitem block ~3 ~1 ~1 slot.container 2 gunpowder 9
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 ender_pearl 7
replaceitem block ~3 ~1 ~1 slot.container 5 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~1 slot.container 10 emerald 10
replaceitem block ~3 ~1 ~1 slot.container 11 amethyst_shard 6
replaceitem block ~3 ~1 ~1 slot.container 12 bow 1
replaceitem block ~3 ~1 ~1 slot.container 13 lantern 6
replaceitem block ~3 ~1 ~1 slot.container 14 cherry_log 19
loot insert ~3 ~1 ~1 loot "rsf/cherry_grove"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 ender_pearl 2
replaceitem block ~-3 ~1 ~2 slot.container 3 phantom_membrane 3
replaceitem block ~-3 ~1 ~2 slot.container 4 feather 10
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 10 emerald 8
replaceitem block ~-3 ~1 ~2 slot.container 11 amethyst_shard 11
replaceitem block ~-3 ~1 ~2 slot.container 12 bow 1
replaceitem block ~-3 ~1 ~2 slot.container 13 lantern 4
replaceitem block ~-3 ~1 ~2 slot.container 14 cherry_log 17
loot insert ~-3 ~1 ~2 loot "rsf/cherry_grove"
loot insert ~-3 ~1 ~2 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
