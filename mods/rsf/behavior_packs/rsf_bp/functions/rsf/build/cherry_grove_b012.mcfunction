# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1804/4224 | 主题内编号: b012/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子暗门地底宝库 (cherry_grove_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 quartz_block []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 calcite []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~-4 ~2 slot.container 1 bone 14
replaceitem block ~5 ~-4 ~2 slot.container 2 string 15
replaceitem block ~5 ~-4 ~2 slot.container 3 gunpowder 6
replaceitem block ~5 ~-4 ~2 slot.container 4 arrow 17
replaceitem block ~5 ~-4 ~2 slot.container 5 ender_pearl 4
replaceitem block ~5 ~-4 ~2 slot.container 9 emerald 5
replaceitem block ~5 ~-4 ~2 slot.container 10 amethyst_shard 8
replaceitem block ~5 ~-4 ~2 slot.container 11 bow 1
replaceitem block ~5 ~-4 ~2 slot.container 12 lantern 8
replaceitem block ~5 ~-4 ~2 slot.container 13 cherry_log 21
replaceitem block ~5 ~-4 ~2 slot.container 14 cherry_sapling 10
loot insert ~5 ~-4 ~2 loot "rsf/cherry_grove"
loot insert ~5 ~-4 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 cherry_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~6 ~-5 ~-8 ~6 ~5 cherry_stairs ["weirdo_direction"=0]
fill ~8 ~6 ~-5 ~8 ~6 ~5 cherry_stairs ["weirdo_direction"=1]
fill ~-7 ~7 ~-4 ~-7 ~7 ~4 cherry_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-4 ~7 ~7 ~4 cherry_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_brick_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 cherry_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 stripped_cherry_log []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 stripped_cherry_log []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 stripped_cherry_log []
fill ~8 ~0 ~2 ~8 ~4 ~2 stripped_cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-2 ~0 ~-6 ~-2 ~6 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~6 ~-6 cherry_log []
fill ~-3 ~6 ~-6 ~3 ~6 ~-6 cherry_slab []
fill ~-2 ~5 ~-6 ~2 ~5 ~-6 stripped_cherry_log []
setblock ~-2 ~7 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 7
replaceitem block ~-6 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 3 feather 15
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 8
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 9 honey_bottle 9
replaceitem block ~-6 ~1 ~2 slot.container 10 honeycomb 12
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 2
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_ingot 7
replaceitem block ~-6 ~1 ~2 slot.container 13 emerald 6
replaceitem block ~-6 ~1 ~2 slot.container 14 amethyst_shard 9
loot insert ~-6 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
