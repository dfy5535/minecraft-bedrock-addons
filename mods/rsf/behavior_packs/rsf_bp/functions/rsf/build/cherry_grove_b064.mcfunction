# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1856/4224 | 主题内编号: b064/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·U型冥庭守墓人陵园 (cherry_grove_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 cherry_planks []
setblock ~0 ~-7 ~0 amethyst_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 string 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 gunpowder 6
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 4 phantom_membrane 5
replaceitem block ~0 ~-4 ~-3 slot.container 5 feather 12
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 6
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-4 ~-3 slot.container 11 emerald 10
replaceitem block ~0 ~-4 ~-3 slot.container 12 amethyst_shard 6
replaceitem block ~0 ~-4 ~-3 slot.container 13 bow 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 lantern 6
loot insert ~0 ~-4 ~-3 loot "rsf/cherry_grove"
loot insert ~0 ~-4 ~-3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 cherry_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 cherry_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 cherry_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 cherry_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 cherry_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-2 ~0 ~-8 ~-2 ~8 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~8 ~-8 cherry_log []
fill ~-3 ~8 ~-8 ~3 ~8 ~-8 cherry_slab []
fill ~-2 ~7 ~-8 ~2 ~7 ~-8 stripped_cherry_log []
setblock ~-2 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 8
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 2 string 10
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 7
replaceitem block ~-5 ~1 ~3 slot.container 9 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 cherry_log 19
replaceitem block ~-5 ~1 ~3 slot.container 12 cherry_sapling 8
replaceitem block ~-5 ~1 ~3 slot.container 13 honey_bottle 9
replaceitem block ~-5 ~1 ~3 slot.container 14 honeycomb 12
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-4 ~0
