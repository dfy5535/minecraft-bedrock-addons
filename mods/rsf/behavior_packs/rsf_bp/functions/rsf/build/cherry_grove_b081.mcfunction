# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1873/4224 | 主题内编号: b081/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双高炉重工冶炼密室 (cherry_grove_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 calcite [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 calcite [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cherry_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 calcite []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 4
replaceitem block ~3 ~-3 ~3 slot.container 1 phantom_membrane 5
replaceitem block ~3 ~-3 ~3 slot.container 2 feather 12
replaceitem block ~3 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 14
replaceitem block ~3 ~-3 ~3 slot.container 5 string 15
replaceitem block ~3 ~-3 ~3 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-3 ~3 slot.container 10 emerald 8
replaceitem block ~3 ~-3 ~3 slot.container 11 amethyst_shard 11
replaceitem block ~3 ~-3 ~3 slot.container 12 bow 1
replaceitem block ~3 ~-3 ~3 slot.container 13 lantern 4
replaceitem block ~3 ~-3 ~3 slot.container 14 cherry_log 17
loot insert ~3 ~-3 ~3 loot "rsf/cherry_grove"
loot insert ~3 ~-3 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 calcite []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~8 ~5 cherry_planks []
setblock ~-5 ~9 ~5 campfire []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 cherry_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 cherry_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 cherry_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 cherry_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 cherry_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 cherry_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~-1 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 10
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 7
replaceitem block ~4 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 10 cherry_log 21
replaceitem block ~4 ~1 ~3 slot.container 11 cherry_sapling 10
replaceitem block ~4 ~1 ~3 slot.container 12 honey_bottle 4
replaceitem block ~4 ~1 ~3 slot.container 13 honeycomb 7
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 2
replaceitem block ~-4 ~1 ~4 slot.container 3 phantom_membrane 3
replaceitem block ~-4 ~1 ~4 slot.container 4 feather 10
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 10 cherry_log 19
replaceitem block ~-4 ~1 ~4 slot.container 11 cherry_sapling 8
replaceitem block ~-4 ~1 ~4 slot.container 12 honey_bottle 9
replaceitem block ~-4 ~1 ~4 slot.container 13 honeycomb 12
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~4 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
