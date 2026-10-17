# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1868/4224 | 主题内编号: b076/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·阶梯高台图腾战阵 (cherry_grove_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 honeycomb_block []
setblock ~-4 ~-5 ~-3 lantern []
setblock ~4 ~-5 ~3 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~3 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~0 ~-3 ~3 slot.container 3 feather 12
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~0 ~-3 ~3 slot.container 9 emerald 7
replaceitem block ~0 ~-3 ~3 slot.container 10 amethyst_shard 10
replaceitem block ~0 ~-3 ~3 slot.container 11 bow 1
replaceitem block ~0 ~-3 ~3 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~3 slot.container 13 cherry_log 16
replaceitem block ~0 ~-3 ~3 slot.container 14 cherry_sapling 5
loot insert ~0 ~-3 ~3 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 cherry_planks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 calcite []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 cherry_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 cherry_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 stone_bricks []
fill ~0 ~13 ~0 ~0 ~16 ~0 honeycomb_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_cherry_log []
setblock ~0 ~4 ~-7 amethyst_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_cherry_log []
setblock ~0 ~4 ~7 amethyst_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_cherry_log []
setblock ~-8 ~4 ~0 amethyst_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_cherry_log []
setblock ~8 ~4 ~0 amethyst_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-2 ~0 ~-8 ~-2 ~5 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~5 ~-8 cherry_log []
fill ~-3 ~5 ~-8 ~3 ~5 ~-8 cherry_slab []
fill ~-2 ~4 ~-8 ~2 ~4 ~-8 stripped_cherry_log []
setblock ~-2 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 7
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 3 feather 15
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 8
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 5
replaceitem block ~-5 ~1 ~3 slot.container 12 amethyst_shard 8
replaceitem block ~-5 ~1 ~3 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 8
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-3 ~0
