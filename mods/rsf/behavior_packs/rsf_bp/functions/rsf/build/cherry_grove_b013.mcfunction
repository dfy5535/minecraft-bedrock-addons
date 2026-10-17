# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1805/4224 | 主题内编号: b013/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·地底熔炉苦工地牢 (cherry_grove_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 cherry_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 calcite []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 14
replaceitem block ~4 ~-3 ~4 slot.container 1 string 15
replaceitem block ~4 ~-3 ~4 slot.container 2 gunpowder 6
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 17
replaceitem block ~4 ~-3 ~4 slot.container 4 ender_pearl 4
replaceitem block ~4 ~-3 ~4 slot.container 5 phantom_membrane 5
replaceitem block ~4 ~-3 ~4 slot.container 9 cherry_sapling 9
replaceitem block ~4 ~-3 ~4 slot.container 10 honey_bottle 10
replaceitem block ~4 ~-3 ~4 slot.container 11 honeycomb 6
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 3
replaceitem block ~4 ~-3 ~4 slot.container 13 iron_ingot 8
replaceitem block ~4 ~-3 ~4 slot.container 14 emerald 7
loot insert ~4 ~-3 ~4 loot "rsf/cherry_grove"
loot insert ~4 ~-3 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 calcite []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 cherry_log []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 cherry_log []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 cherry_log []
fill ~6 ~1 ~6 ~6 ~5 ~6 cherry_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 cherry_fence []
setblock ~6 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 cherry_planks []
fill ~-6 ~6 ~-6 ~6 ~6 ~6 cherry_fence []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 air []
setblock ~-6 ~6 ~-6 cherry_log []
setblock ~-6 ~7 ~-6 campfire []
setblock ~-6 ~6 ~6 cherry_log []
setblock ~-6 ~7 ~6 campfire []
setblock ~6 ~6 ~-6 cherry_log []
setblock ~6 ~7 ~-6 campfire []
setblock ~6 ~6 ~6 cherry_log []
setblock ~6 ~7 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 cherry_planks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~7 ~-9 cherry_log []
fill ~-3 ~7 ~-9 ~3 ~7 ~-9 cherry_slab []
fill ~-2 ~6 ~-9 ~2 ~6 ~-9 stripped_cherry_log []
setblock ~1 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 7
replaceitem block ~5 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 2 feather 15
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 8
replaceitem block ~5 ~1 ~4 slot.container 4 bone 9
replaceitem block ~5 ~1 ~4 slot.container 5 string 10
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~5 ~1 ~4 slot.container 11 amethyst_shard 7
replaceitem block ~5 ~1 ~4 slot.container 12 bow 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 14 cherry_log 20
loot insert ~5 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 feather 10
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~5 slot.container 3 string 13
replaceitem block ~-5 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~5 slot.container 11 amethyst_shard 12
replaceitem block ~-5 ~1 ~5 slot.container 12 bow 1
replaceitem block ~-5 ~1 ~5 slot.container 13 lantern 5
replaceitem block ~-5 ~1 ~5 slot.container 14 cherry_log 18
loot insert ~-5 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~5 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
