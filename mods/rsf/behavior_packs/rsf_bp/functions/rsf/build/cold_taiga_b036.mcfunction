# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0804/4224 | 主题内编号: b036/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·下沉碑林地宫方尖碑 (cold_taiga_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 campfire []
setblock ~3 ~-6 ~-2 campfire []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 rabbit_foot 5
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-4 ~2 slot.container 2 bone 17
replaceitem block ~3 ~-4 ~2 slot.container 3 arrow 22
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 5 string 8
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 7
replaceitem block ~3 ~-4 ~2 slot.container 10 leather_boots 1
replaceitem block ~3 ~-4 ~2 slot.container 11 golden_apple 4
replaceitem block ~3 ~-4 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~3 ~-4 ~2 slot.container 13 campfire 7
replaceitem block ~3 ~-4 ~2 slot.container 14 lantern 10
loot insert ~3 ~-4 ~2 loot "rsf/cold_taiga"
loot insert ~3 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 packed_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 packed_ice []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-5 ~0 ~5 ~-6 ~16 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~17 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rabbit_foot 8
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~2 slot.container 9 spruce_log 22
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 12 leather_boots 1
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 14 flint_and_steel 1
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
