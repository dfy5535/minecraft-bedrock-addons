# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1833/4224 | 主题内编号: b041/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·八角看台古罗马斗技场 (cherry_grove_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 amethyst_block []
setblock ~-5 ~-4 ~-4 campfire []
setblock ~5 ~-4 ~4 campfire []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 bone 14
replaceitem block ~0 ~-2 ~4 slot.container 1 string 15
replaceitem block ~0 ~-2 ~4 slot.container 2 gunpowder 6
replaceitem block ~0 ~-2 ~4 slot.container 3 arrow 17
replaceitem block ~0 ~-2 ~4 slot.container 4 ender_pearl 4
replaceitem block ~0 ~-2 ~4 slot.container 5 phantom_membrane 5
replaceitem block ~0 ~-2 ~4 slot.container 9 cherry_sapling 7
replaceitem block ~0 ~-2 ~4 slot.container 10 honey_bottle 8
replaceitem block ~0 ~-2 ~4 slot.container 11 honeycomb 11
replaceitem block ~0 ~-2 ~4 slot.container 12 golden_apple 8
replaceitem block ~0 ~-2 ~4 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-2 ~4 slot.container 14 emerald 5
loot insert ~0 ~-2 ~4 loot "rsf/cherry_grove"
loot insert ~0 ~-2 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 calcite []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 air []
fill ~7 ~1 ~6 ~7 ~6 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 cherry_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 cherry_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 cherry_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 cherry_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-6 ~-7 ~7 ~-6 cherry_log []
setblock ~-7 ~8 ~-6 campfire []
fill ~-7 ~5 ~6 ~-7 ~7 ~6 cherry_log []
setblock ~-7 ~8 ~6 campfire []
fill ~7 ~5 ~-6 ~7 ~7 ~-6 cherry_log []
setblock ~7 ~8 ~-6 campfire []
fill ~7 ~5 ~6 ~7 ~7 ~6 cherry_log []
setblock ~7 ~8 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 cherry_log []
setblock ~-9 ~4 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 cherry_log []
setblock ~-9 ~4 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 cherry_log []
setblock ~9 ~4 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~3 ~8 cherry_log []
setblock ~9 ~4 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-2 ~0 ~-10 ~-2 ~5 ~-10 cherry_log []
fill ~2 ~0 ~-10 ~2 ~5 ~-10 cherry_log []
fill ~-3 ~5 ~-10 ~3 ~5 ~-10 cherry_slab []
fill ~-2 ~4 ~-10 ~2 ~4 ~-10 stripped_cherry_log []
setblock ~-1 ~6 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 9
replaceitem block ~6 ~1 ~4 slot.container 1 string 10
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 7
replaceitem block ~6 ~1 ~4 slot.container 5 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~6 ~1 ~4 slot.container 10 cherry_log 16
replaceitem block ~6 ~1 ~4 slot.container 11 cherry_sapling 5
replaceitem block ~6 ~1 ~4 slot.container 12 honey_bottle 6
replaceitem block ~6 ~1 ~4 slot.container 13 honeycomb 9
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~6 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 2
replaceitem block ~-6 ~1 ~5 slot.container 3 phantom_membrane 3
replaceitem block ~-6 ~1 ~5 slot.container 4 feather 10
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 10 cherry_log 21
replaceitem block ~-6 ~1 ~5 slot.container 11 cherry_sapling 10
replaceitem block ~-6 ~1 ~5 slot.container 12 honey_bottle 4
replaceitem block ~-6 ~1 ~5 slot.container 13 honeycomb 7
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~5 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
