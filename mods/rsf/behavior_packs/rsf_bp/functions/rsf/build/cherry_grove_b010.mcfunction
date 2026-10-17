# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1802/4224 | 主题内编号: b010/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·十字交叉深层地牢 (cherry_grove_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 4格 | 地下深度 6格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_lantern []
setblock ~5 ~-7 ~0 soul_lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-5 ~4 slot.container 1 bone 14
replaceitem block ~0 ~-5 ~4 slot.container 2 string 15
replaceitem block ~0 ~-5 ~4 slot.container 3 gunpowder 6
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-5 ~4 slot.container 9 bow 1
replaceitem block ~0 ~-5 ~4 slot.container 10 lantern 7
replaceitem block ~0 ~-5 ~4 slot.container 11 cherry_log 20
replaceitem block ~0 ~-5 ~4 slot.container 12 cherry_sapling 9
replaceitem block ~0 ~-5 ~4 slot.container 13 honey_bottle 10
replaceitem block ~0 ~-5 ~4 slot.container 14 honeycomb 6
loot insert ~0 ~-5 ~4 loot "rsf/cherry_grove"
loot insert ~0 ~-5 ~4 loot "chests/village/village_plains_house"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 rotten_flesh 11
replaceitem block ~0 ~-5 ~-4 slot.container 1 bone 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 string 13
replaceitem block ~0 ~-5 ~-4 slot.container 3 gunpowder 12
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 2
replaceitem block ~0 ~-5 ~-4 slot.container 9 bow 1
replaceitem block ~0 ~-5 ~-4 slot.container 10 lantern 6
replaceitem block ~0 ~-5 ~-4 slot.container 11 cherry_log 19
replaceitem block ~0 ~-5 ~-4 slot.container 12 cherry_sapling 8
replaceitem block ~0 ~-5 ~-4 slot.container 13 honey_bottle 9
replaceitem block ~0 ~-5 ~-4 slot.container 14 honeycomb 12
loot insert ~0 ~-5 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-5 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 cherry_planks []
fill ~-7 ~1 ~-2 ~7 ~4 ~2 cherry_planks []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cherry_fence []
setblock ~7 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~4 ~-6 ~7 ~4 ~6 cherry_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-7 ~3 ~-1 ~-7 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 cherry_log []
setblock ~-9 ~4 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 cherry_log []
setblock ~-9 ~4 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 cherry_log []
setblock ~9 ~4 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 cherry_log []
setblock ~9 ~4 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-2 ~0 ~-9 ~-2 ~4 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~4 ~-9 cherry_log []
fill ~-3 ~4 ~-9 ~3 ~4 ~-9 cherry_slab []
fill ~-2 ~3 ~-9 ~2 ~3 ~-9 stripped_cherry_log []
setblock ~3 ~5 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 10
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 7
replaceitem block ~-6 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 5 feather 15
replaceitem block ~-6 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~-6 ~1 ~4 slot.container 10 amethyst_shard 10
replaceitem block ~-6 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~-6 ~1 ~4 slot.container 13 cherry_log 16
replaceitem block ~-6 ~1 ~4 slot.container 14 cherry_sapling 5
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-5 ~0
