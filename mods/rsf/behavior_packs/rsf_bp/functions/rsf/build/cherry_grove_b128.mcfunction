# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1920/4224 | 主题内编号: b128/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·U型紫禁朝堂大殿与地底金库 (cherry_grove_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~-4 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~-4 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~5 ~-4 ~4 slot.container 3 feather 12
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 14
replaceitem block ~5 ~-4 ~4 slot.container 9 emerald 5
replaceitem block ~5 ~-4 ~4 slot.container 10 amethyst_shard 8
replaceitem block ~5 ~-4 ~4 slot.container 11 bow 1
replaceitem block ~5 ~-4 ~4 slot.container 12 lantern 8
replaceitem block ~5 ~-4 ~4 slot.container 13 cherry_log 21
replaceitem block ~5 ~-4 ~4 slot.container 14 cherry_sapling 10
loot insert ~5 ~-4 ~4 loot "rsf/cherry_grove"
loot insert ~5 ~-4 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-7 ~8 ~7 ~7 stone_brick_slab []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 calcite []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 cherry_slab []
setblock ~0 ~11 ~0 honeycomb_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-2 ~0 ~-10 ~-2 ~7 ~-10 cherry_log []
fill ~2 ~0 ~-10 ~2 ~7 ~-10 cherry_log []
fill ~-3 ~7 ~-10 ~3 ~7 ~-10 cherry_slab []
fill ~-2 ~6 ~-10 ~2 ~6 ~-10 stripped_cherry_log []
setblock ~2 ~8 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 8
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 string 10
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 7
replaceitem block ~-6 ~1 ~4 slot.container 9 cherry_log 18
replaceitem block ~-6 ~1 ~4 slot.container 10 cherry_sapling 7
replaceitem block ~-6 ~1 ~4 slot.container 11 honey_bottle 8
replaceitem block ~-6 ~1 ~4 slot.container 12 honeycomb 11
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
