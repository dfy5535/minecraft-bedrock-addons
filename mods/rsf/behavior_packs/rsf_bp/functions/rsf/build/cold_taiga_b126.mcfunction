# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0894/4224 | 主题内编号: b126/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子主塔天桥宫殿与暗牢 (cold_taiga_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cobblestone [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cobblestone [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 spruce_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_planks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cobblestone []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 torch []
setblock ~5 ~-6 ~-3 torch []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 bone 17
replaceitem block ~5 ~-4 ~3 slot.container 1 arrow 22
replaceitem block ~5 ~-4 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-4 ~3 slot.container 3 string 8
replaceitem block ~5 ~-4 ~3 slot.container 4 gunpowder 7
replaceitem block ~5 ~-4 ~3 slot.container 5 leather 10
replaceitem block ~5 ~-4 ~3 slot.container 9 iron_ingot 6
replaceitem block ~5 ~-4 ~3 slot.container 10 leather_boots 1
replaceitem block ~5 ~-4 ~3 slot.container 11 golden_apple 3
replaceitem block ~5 ~-4 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~-4 ~3 slot.container 13 campfire 6
replaceitem block ~5 ~-4 ~3 slot.container 14 lantern 9
loot insert ~5 ~-4 ~3 loot "rsf/cold_taiga"
loot insert ~5 ~-4 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~10 ~5 cobblestone []
fill ~2 ~1 ~-5 ~7 ~10 ~5 cobblestone []
fill ~-6 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~6 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 snow []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 snow []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~18 ~0 barrel []
setblock ~0 ~19 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 snow []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-7 ~0 ~6 ~-8 ~16 ~7 cobblestone []
setblock ~-7 ~1 ~6 campfire []
setblock ~-7 ~17 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 rabbit_foot 8
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 17
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 5 string 11
replaceitem block ~-6 ~1 ~3 slot.container 9 spruce_log 21
replaceitem block ~-6 ~1 ~3 slot.container 10 coal 22
replaceitem block ~-6 ~1 ~3 slot.container 11 iron_ingot 6
replaceitem block ~-6 ~1 ~3 slot.container 12 leather_boots 1
replaceitem block ~-6 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~-6 ~1 ~3 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
