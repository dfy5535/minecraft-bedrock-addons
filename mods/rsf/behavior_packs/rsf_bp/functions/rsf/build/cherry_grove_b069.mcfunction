# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1861/4224 | 主题内编号: b069/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·藤蔓侵蚀十字修道院 (cherry_grove_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cherry_planks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cherry_planks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 feather 12
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-2 ~-3 slot.container 2 bone 14
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 15
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 6
replaceitem block ~0 ~-2 ~-3 slot.container 5 arrow 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 lantern 6
replaceitem block ~0 ~-2 ~-3 slot.container 10 cherry_log 19
replaceitem block ~0 ~-2 ~-3 slot.container 11 cherry_sapling 8
replaceitem block ~0 ~-2 ~-3 slot.container 12 honey_bottle 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 honeycomb 12
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 2
loot insert ~0 ~-2 ~-3 loot "rsf/cherry_grove"
loot insert ~0 ~-2 ~-3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 calcite []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 calcite []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cherry_fence []
setblock ~6 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 cherry_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 cherry_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 cherry_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 cherry_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 cherry_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-2 ~0 ~-7 ~-2 ~8 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~8 ~-7 cherry_log []
fill ~-3 ~8 ~-7 ~3 ~8 ~-7 cherry_slab []
fill ~-2 ~7 ~-7 ~2 ~7 ~-7 stripped_cherry_log []
setblock ~-3 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 7
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 feather 15
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 8
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 10
replaceitem block ~5 ~1 ~3 slot.container 9 honeycomb 12
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 13 amethyst_shard 9
replaceitem block ~5 ~1 ~3 slot.container 14 bow 1
loot insert ~5 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 feather 10
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 honeycomb 10
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 13 amethyst_shard 7
replaceitem block ~-5 ~1 ~4 slot.container 14 bow 1
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~4 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
