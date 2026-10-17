# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1866/4224 | 主题内编号: b074/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·十字四象图腾柱阵 (cherry_grove_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 string 15
replaceitem block ~4 ~-3 ~0 slot.container 1 gunpowder 6
replaceitem block ~4 ~-3 ~0 slot.container 2 arrow 17
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 4
replaceitem block ~4 ~-3 ~0 slot.container 4 phantom_membrane 5
replaceitem block ~4 ~-3 ~0 slot.container 5 feather 12
replaceitem block ~4 ~-3 ~0 slot.container 9 golden_apple 4
replaceitem block ~4 ~-3 ~0 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-3 ~0 slot.container 11 emerald 8
replaceitem block ~4 ~-3 ~0 slot.container 12 amethyst_shard 11
replaceitem block ~4 ~-3 ~0 slot.container 13 bow 1
replaceitem block ~4 ~-3 ~0 slot.container 14 lantern 4
loot insert ~4 ~-3 ~0 loot "rsf/cherry_grove"
loot insert ~4 ~-3 ~0 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 cherry_planks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 cherry_planks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cherry_fence []
setblock ~6 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 cherry_log []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 cherry_log []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 cherry_log []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 cherry_log []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 cherry_log []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 cherry_log []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 cherry_log []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 cherry_log []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~8 ~-9 cherry_log []
fill ~-3 ~8 ~-9 ~3 ~8 ~-9 cherry_slab []
fill ~-2 ~7 ~-9 ~2 ~7 ~-9 stripped_cherry_log []
setblock ~2 ~9 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-5 ~1 ~4 blast_furnace []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 7
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 feather 15
replaceitem block ~-5 ~1 ~3 slot.container 9 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 11 cherry_log 22
replaceitem block ~-5 ~1 ~3 slot.container 12 cherry_sapling 4
replaceitem block ~-5 ~1 ~3 slot.container 13 honey_bottle 5
replaceitem block ~-5 ~1 ~3 slot.container 14 honeycomb 8
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
