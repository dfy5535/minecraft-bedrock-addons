# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0783/4224 | 主题内编号: b015/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·竖井阶梯深渊地牢 (cold_taiga_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 arrow 22
replaceitem block ~3 ~-4 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 2 string 8
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~2 slot.container 4 leather 10
replaceitem block ~3 ~-4 ~2 slot.container 5 rabbit_foot 5
replaceitem block ~3 ~-4 ~2 slot.container 9 sweet_berries 13
replaceitem block ~3 ~-4 ~2 slot.container 10 spruce_log 18
replaceitem block ~3 ~-4 ~2 slot.container 11 coal 19
replaceitem block ~3 ~-4 ~2 slot.container 12 iron_ingot 10
replaceitem block ~3 ~-4 ~2 slot.container 13 leather_boots 1
replaceitem block ~3 ~-4 ~2 slot.container 14 golden_apple 7
loot insert ~3 ~-4 ~2 loot "rsf/cold_taiga"
loot insert ~3 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 spruce_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 spruce_planks []
fill ~0 ~13 ~0 ~0 ~16 ~0 snow []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 spruce_log []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 spruce_log []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 spruce_log []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 spruce_log []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-5 ~0 ~5 ~-6 ~13 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~14 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 12
replaceitem block ~4 ~1 ~2 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~2 slot.container 10 cooked_mutton 8
replaceitem block ~4 ~1 ~2 slot.container 11 sweet_berries 13
replaceitem block ~4 ~1 ~2 slot.container 12 spruce_log 18
replaceitem block ~4 ~1 ~2 slot.container 13 coal 19
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 4 leather 8
replaceitem block ~-4 ~1 ~3 slot.container 5 rabbit_foot 3
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 10 cooked_mutton 13
replaceitem block ~-4 ~1 ~3 slot.container 11 sweet_berries 18
replaceitem block ~-4 ~1 ~3 slot.container 12 spruce_log 16
replaceitem block ~-4 ~1 ~3 slot.container 13 coal 17
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
