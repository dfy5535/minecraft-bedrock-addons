# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1811/4224 | 主题内编号: b019/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·琉璃穹顶圣物秘室 (cherry_grove_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 6
replaceitem block ~3 ~-2 ~0 slot.container 1 arrow 17
replaceitem block ~3 ~-2 ~0 slot.container 2 ender_pearl 4
replaceitem block ~3 ~-2 ~0 slot.container 3 phantom_membrane 5
replaceitem block ~3 ~-2 ~0 slot.container 4 feather 12
replaceitem block ~3 ~-2 ~0 slot.container 5 rotten_flesh 13
replaceitem block ~3 ~-2 ~0 slot.container 9 lantern 7
replaceitem block ~3 ~-2 ~0 slot.container 10 cherry_log 20
replaceitem block ~3 ~-2 ~0 slot.container 11 cherry_sapling 9
replaceitem block ~3 ~-2 ~0 slot.container 12 honey_bottle 10
replaceitem block ~3 ~-2 ~0 slot.container 13 honeycomb 6
replaceitem block ~3 ~-2 ~0 slot.container 14 golden_apple 3
loot insert ~3 ~-2 ~0 loot "rsf/cherry_grove"
loot insert ~3 ~-2 ~0 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 cherry_planks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 cherry_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 cherry_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 cherry_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 cherry_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 stone_bricks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 cherry_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 cherry_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 cherry_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 cherry_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-2 ~0 ~-7 ~-2 ~8 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~8 ~-7 cherry_log []
fill ~-3 ~8 ~-7 ~3 ~8 ~-7 cherry_slab []
fill ~-2 ~7 ~-7 ~2 ~7 ~-7 stripped_cherry_log []
setblock ~2 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 7
replaceitem block ~4 ~1 ~2 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 4 feather 15
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 8
replaceitem block ~4 ~1 ~2 slot.container 9 honeycomb 11
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 12 emerald 5
replaceitem block ~4 ~1 ~2 slot.container 13 amethyst_shard 8
replaceitem block ~4 ~1 ~2 slot.container 14 bow 1
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 2
replaceitem block ~-4 ~1 ~3 slot.container 1 phantom_membrane 3
replaceitem block ~-4 ~1 ~3 slot.container 2 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 5 string 13
replaceitem block ~-4 ~1 ~3 slot.container 9 honeycomb 9
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 12 emerald 10
replaceitem block ~-4 ~1 ~3 slot.container 13 amethyst_shard 6
replaceitem block ~-4 ~1 ~3 slot.container 14 bow 1
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
