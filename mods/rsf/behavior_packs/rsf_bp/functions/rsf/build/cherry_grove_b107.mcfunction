# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1899/4224 | 主题内编号: b107/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·观星高塔与秘术地宫 (cherry_grove_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 gunpowder 6
replaceitem block ~3 ~-3 ~0 slot.container 1 arrow 17
replaceitem block ~3 ~-3 ~0 slot.container 2 ender_pearl 4
replaceitem block ~3 ~-3 ~0 slot.container 3 phantom_membrane 5
replaceitem block ~3 ~-3 ~0 slot.container 4 feather 12
replaceitem block ~3 ~-3 ~0 slot.container 5 rotten_flesh 13
replaceitem block ~3 ~-3 ~0 slot.container 9 honeycomb 6
replaceitem block ~3 ~-3 ~0 slot.container 10 golden_apple 3
replaceitem block ~3 ~-3 ~0 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-3 ~0 slot.container 12 emerald 7
replaceitem block ~3 ~-3 ~0 slot.container 13 amethyst_shard 10
replaceitem block ~3 ~-3 ~0 slot.container 14 bow 1
loot insert ~3 ~-3 ~0 loot "rsf/cherry_grove"
loot insert ~3 ~-3 ~0 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 cherry_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~8 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 cherry_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 cherry_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 cherry_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~6 ~-8 cherry_log []
fill ~-3 ~6 ~-8 ~3 ~6 ~-8 cherry_slab []
fill ~-2 ~5 ~-8 ~2 ~5 ~-8 stripped_cherry_log []
setblock ~0 ~7 ~-8 lantern []

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
replaceitem block ~4 ~1 ~2 slot.container 9 amethyst_shard 8
replaceitem block ~4 ~1 ~2 slot.container 10 bow 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~2 slot.container 12 cherry_log 21
replaceitem block ~4 ~1 ~2 slot.container 13 cherry_sapling 10
replaceitem block ~4 ~1 ~2 slot.container 14 honey_bottle 4
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 2
replaceitem block ~-4 ~1 ~3 slot.container 1 phantom_membrane 3
replaceitem block ~-4 ~1 ~3 slot.container 2 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 5 string 13
replaceitem block ~-4 ~1 ~3 slot.container 9 amethyst_shard 6
replaceitem block ~-4 ~1 ~3 slot.container 10 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~-4 ~1 ~3 slot.container 12 cherry_log 19
replaceitem block ~-4 ~1 ~3 slot.container 13 cherry_sapling 8
replaceitem block ~-4 ~1 ~3 slot.container 14 honey_bottle 9
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
