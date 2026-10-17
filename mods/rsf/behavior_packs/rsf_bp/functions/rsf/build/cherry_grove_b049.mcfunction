# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1841/4224 | 主题内编号: b049/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双坡顶林间猎人木屋 (cherry_grove_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cherry_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 cherry_planks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 ender_pearl 4
replaceitem block ~3 ~-2 ~3 slot.container 1 phantom_membrane 5
replaceitem block ~3 ~-2 ~3 slot.container 2 feather 12
replaceitem block ~3 ~-2 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-2 ~3 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~3 slot.container 5 string 15
replaceitem block ~3 ~-2 ~3 slot.container 9 amethyst_shard 9
replaceitem block ~3 ~-2 ~3 slot.container 10 bow 1
replaceitem block ~3 ~-2 ~3 slot.container 11 lantern 9
replaceitem block ~3 ~-2 ~3 slot.container 12 cherry_log 22
replaceitem block ~3 ~-2 ~3 slot.container 13 cherry_sapling 4
replaceitem block ~3 ~-2 ~3 slot.container 14 honey_bottle 5
loot insert ~3 ~-2 ~3 loot "rsf/cherry_grove"
loot insert ~3 ~-2 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 calcite []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 cherry_log []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 cherry_log []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 cherry_log []
fill ~5 ~1 ~5 ~5 ~5 ~5 cherry_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 cherry_fence []
setblock ~5 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 cherry_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 cherry_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-8 ~-2 ~8 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~8 ~-8 cherry_log []
fill ~-3 ~8 ~-8 ~3 ~8 ~-8 cherry_slab []
fill ~-2 ~7 ~-8 ~2 ~7 ~-8 stripped_cherry_log []
setblock ~2 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 10
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 7
replaceitem block ~4 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 9 honeycomb 6
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 12 emerald 7
replaceitem block ~4 ~1 ~3 slot.container 13 amethyst_shard 10
replaceitem block ~4 ~1 ~3 slot.container 14 bow 1
loot insert ~4 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 2
replaceitem block ~-4 ~1 ~4 slot.container 3 phantom_membrane 3
replaceitem block ~-4 ~1 ~4 slot.container 4 feather 10
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 9 honeycomb 11
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~4 slot.container 13 amethyst_shard 8
replaceitem block ~-4 ~1 ~4 slot.container 14 bow 1
loot insert ~-4 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~4 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
