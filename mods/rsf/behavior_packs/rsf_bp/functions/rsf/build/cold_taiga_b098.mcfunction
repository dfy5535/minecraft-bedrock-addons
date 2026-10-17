# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0866/4224 | 主题内编号: b098/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·四角炮楼重装要塞 (cold_taiga_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 torch []
setblock ~5 ~-6 ~-4 torch []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 7
replaceitem block ~5 ~-4 ~4 slot.container 1 leather 10
replaceitem block ~5 ~-4 ~4 slot.container 2 rabbit_foot 5
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 bone 17
replaceitem block ~5 ~-4 ~4 slot.container 5 arrow 22
replaceitem block ~5 ~-4 ~4 slot.container 9 cooked_mutton 8
replaceitem block ~5 ~-4 ~4 slot.container 10 sweet_berries 13
replaceitem block ~5 ~-4 ~4 slot.container 11 spruce_log 18
replaceitem block ~5 ~-4 ~4 slot.container 12 coal 19
replaceitem block ~5 ~-4 ~4 slot.container 13 iron_ingot 10
replaceitem block ~5 ~-4 ~4 slot.container 14 leather_boots 1
loot insert ~5 ~-4 ~4 loot "rsf/cold_taiga"
loot insert ~5 ~-4 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 snow []
setblock ~-7 ~10 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 snow []
setblock ~-7 ~10 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 snow []
setblock ~6 ~10 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~9 ~6 snow []
setblock ~6 ~10 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 snow []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 spruce_log []
setblock ~-7 ~9 ~-6 torch []
setblock ~-7 ~8 ~6 spruce_log []
setblock ~-7 ~9 ~6 torch []
setblock ~7 ~8 ~-6 spruce_log []
setblock ~7 ~9 ~-6 torch []
setblock ~7 ~8 ~6 spruce_log []
setblock ~7 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-7 ~0 ~7 ~-8 ~11 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-6 ~1 ~4 slot.container 4 rabbit_foot 8
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 campfire 7
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~-6 ~1 ~4 slot.container 11 cooked_mutton 8
replaceitem block ~-6 ~1 ~4 slot.container 12 sweet_berries 13
replaceitem block ~-6 ~1 ~4 slot.container 13 spruce_log 18
replaceitem block ~-6 ~1 ~4 slot.container 14 coal 19
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-4 ~0
