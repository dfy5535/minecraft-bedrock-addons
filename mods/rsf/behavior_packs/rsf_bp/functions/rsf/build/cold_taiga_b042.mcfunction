# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0810/4224 | 主题内编号: b042/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·地底铁栏死斗深坑 (cold_taiga_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 torch []
setblock ~4 ~-6 ~-3 torch []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 gunpowder 7
replaceitem block ~4 ~-4 ~3 slot.container 1 leather 10
replaceitem block ~4 ~-4 ~3 slot.container 2 rabbit_foot 5
replaceitem block ~4 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-4 ~3 slot.container 4 bone 17
replaceitem block ~4 ~-4 ~3 slot.container 5 arrow 22
replaceitem block ~4 ~-4 ~3 slot.container 9 spruce_log 16
replaceitem block ~4 ~-4 ~3 slot.container 10 coal 17
replaceitem block ~4 ~-4 ~3 slot.container 11 iron_ingot 8
replaceitem block ~4 ~-4 ~3 slot.container 12 leather_boots 1
replaceitem block ~4 ~-4 ~3 slot.container 13 golden_apple 5
replaceitem block ~4 ~-4 ~3 slot.container 14 flint_and_steel 1
loot insert ~4 ~-4 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-4 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 snow []
fill ~0 ~1 ~-5 ~0 ~2 ~5 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 torch []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 torch []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 torch []
fill ~6 ~5 ~5 ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-6 ~0 ~6 ~-7 ~13 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~14 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_mutton 13
replaceitem block ~-5 ~1 ~3 slot.container 10 sweet_berries 18
replaceitem block ~-5 ~1 ~3 slot.container 11 spruce_log 16
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 17
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 14 leather_boots 1
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
