# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1831/4224 | 主题内编号: b039/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·永恒圣火图腾方尖塔 (cherry_grove_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cherry_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cherry_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cherry_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 cherry_planks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 gunpowder 6
replaceitem block ~2 ~-2 ~1 slot.container 1 arrow 17
replaceitem block ~2 ~-2 ~1 slot.container 2 ender_pearl 4
replaceitem block ~2 ~-2 ~1 slot.container 3 phantom_membrane 5
replaceitem block ~2 ~-2 ~1 slot.container 4 feather 12
replaceitem block ~2 ~-2 ~1 slot.container 5 rotten_flesh 13
replaceitem block ~2 ~-2 ~1 slot.container 9 lantern 7
replaceitem block ~2 ~-2 ~1 slot.container 10 cherry_log 20
replaceitem block ~2 ~-2 ~1 slot.container 11 cherry_sapling 9
replaceitem block ~2 ~-2 ~1 slot.container 12 honey_bottle 10
replaceitem block ~2 ~-2 ~1 slot.container 13 honeycomb 6
replaceitem block ~2 ~-2 ~1 slot.container 14 golden_apple 3
loot insert ~2 ~-2 ~1 loot "rsf/cherry_grove"
loot insert ~2 ~-2 ~1 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 cherry_planks []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 cherry_log []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 cherry_log []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 cherry_log []
fill ~4 ~1 ~3 ~4 ~9 ~3 cherry_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cherry_fence []
setblock ~4 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cherry_planks []
fill ~0 ~15 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 cherry_log []
setblock ~0 ~4 ~-5 honeycomb_block []
setblock ~0 ~5 ~-5 lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 cherry_log []
setblock ~0 ~4 ~5 honeycomb_block []
setblock ~0 ~5 ~5 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 cherry_log []
setblock ~-6 ~4 ~0 honeycomb_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 cherry_log []
setblock ~6 ~4 ~0 honeycomb_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 5x4x6) ---
fill ~-2 ~0 ~-5 ~-2 ~8 ~-5 cherry_log []
fill ~2 ~0 ~-5 ~2 ~8 ~-5 cherry_log []
fill ~-3 ~8 ~-5 ~3 ~8 ~-5 cherry_slab []
fill ~-2 ~7 ~-5 ~2 ~7 ~-5 stripped_cherry_log []
setblock ~-2 ~9 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 feather 15
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 8
replaceitem block ~3 ~1 ~1 slot.container 2 bone 9
replaceitem block ~3 ~1 ~1 slot.container 3 string 10
replaceitem block ~3 ~1 ~1 slot.container 4 gunpowder 9
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 9 honeycomb 10
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 7
replaceitem block ~3 ~1 ~1 slot.container 11 iron_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 12 emerald 4
replaceitem block ~3 ~1 ~1 slot.container 13 amethyst_shard 7
replaceitem block ~3 ~1 ~1 slot.container 14 bow 1
loot insert ~3 ~1 ~1 loot "rsf/cherry_grove"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~2 slot.container 1 string 13
replaceitem block ~-3 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 2
replaceitem block ~-3 ~1 ~2 slot.container 5 phantom_membrane 3
replaceitem block ~-3 ~1 ~2 slot.container 9 honeycomb 8
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-3 ~1 ~2 slot.container 12 emerald 9
replaceitem block ~-3 ~1 ~2 slot.container 13 amethyst_shard 12
replaceitem block ~-3 ~1 ~2 slot.container 14 bow 1
loot insert ~-3 ~1 ~2 loot "rsf/cherry_grove"
loot insert ~-3 ~1 ~2 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
