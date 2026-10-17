# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0805/4224 | 主题内编号: b037/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·环廊聖柱纪念碑 (cold_taiga_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 coal_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 leather 10
replaceitem block ~4 ~-2 ~0 slot.container 1 rabbit_foot 5
replaceitem block ~4 ~-2 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~0 slot.container 3 bone 17
replaceitem block ~4 ~-2 ~0 slot.container 4 arrow 22
replaceitem block ~4 ~-2 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~0 slot.container 9 sweet_berries 17
replaceitem block ~4 ~-2 ~0 slot.container 10 spruce_log 22
replaceitem block ~4 ~-2 ~0 slot.container 11 coal 16
replaceitem block ~4 ~-2 ~0 slot.container 12 iron_ingot 7
replaceitem block ~4 ~-2 ~0 slot.container 13 leather_boots 1
replaceitem block ~4 ~-2 ~0 slot.container 14 golden_apple 4
loot insert ~4 ~-2 ~0 loot "rsf/cold_taiga"
loot insert ~4 ~-2 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_planks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 spruce_log []
setblock ~-6 ~11 ~-5 lantern []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 spruce_log []
setblock ~-6 ~11 ~5 lantern []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 spruce_log []
setblock ~6 ~11 ~-5 lantern []
fill ~6 ~8 ~5 ~6 ~10 ~5 spruce_log []
setblock ~6 ~11 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 spruce_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 spruce_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 spruce_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 spruce_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-6 ~0 ~6 ~-7 ~16 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~17 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 leather 13
replaceitem block ~5 ~1 ~3 slot.container 1 rabbit_foot 8
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 12
replaceitem block ~5 ~1 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 leather_boots 1
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 12 campfire 5
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_mutton 13
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 9 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 12 campfire 3
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_mutton 11
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
