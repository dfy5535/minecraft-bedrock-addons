# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1864/4224 | 主题内编号: b072/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·L型古商会废墟暗窖 (cherry_grove_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 1 ender_pearl 4
replaceitem block ~4 ~-3 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~4 ~-3 ~3 slot.container 3 feather 12
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~4 ~-3 ~3 slot.container 9 emerald 9
replaceitem block ~4 ~-3 ~3 slot.container 10 amethyst_shard 12
replaceitem block ~4 ~-3 ~3 slot.container 11 bow 1
replaceitem block ~4 ~-3 ~3 slot.container 12 lantern 5
replaceitem block ~4 ~-3 ~3 slot.container 13 cherry_log 18
replaceitem block ~4 ~-3 ~3 slot.container 14 cherry_sapling 7
loot insert ~4 ~-3 ~3 loot "rsf/cherry_grove"
loot insert ~4 ~-3 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 stone_bricks []
fill ~-6 ~1 ~0 ~6 ~4 ~5 calcite []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 cherry_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_cherry_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_cherry_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-2 ~0 ~-7 ~-2 ~6 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~6 ~-7 cherry_log []
fill ~-3 ~6 ~-7 ~3 ~6 ~-7 cherry_slab []
fill ~-2 ~5 ~-7 ~2 ~5 ~-7 stripped_cherry_log []
setblock ~0 ~7 ~-7 lantern []

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
replaceitem block ~-5 ~1 ~3 slot.container 9 honey_bottle 6
replaceitem block ~-5 ~1 ~3 slot.container 10 honeycomb 9
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 14 amethyst_shard 6
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
