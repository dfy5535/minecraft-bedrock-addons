# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0778/4224 | 主题内编号: b010/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·十字交叉深层地牢 (cold_taiga_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 6格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 torch []
setblock ~5 ~-7 ~0 torch []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 17
replaceitem block ~0 ~-5 ~4 slot.container 1 arrow 22
replaceitem block ~0 ~-5 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 gunpowder 7
replaceitem block ~0 ~-5 ~4 slot.container 5 leather 10
replaceitem block ~0 ~-5 ~4 slot.container 9 golden_apple 1
replaceitem block ~0 ~-5 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-5 ~4 slot.container 11 campfire 4
replaceitem block ~0 ~-5 ~4 slot.container 12 lantern 7
replaceitem block ~0 ~-5 ~4 slot.container 13 cooked_mutton 12
replaceitem block ~0 ~-5 ~4 slot.container 14 sweet_berries 17
loot insert ~0 ~-5 ~4 loot "rsf/cold_taiga"
loot insert ~0 ~-5 ~4 loot "chests/igloo_chest"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 arrow 20
replaceitem block ~0 ~-5 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 gunpowder 13
replaceitem block ~0 ~-5 ~-4 slot.container 5 leather 8
replaceitem block ~0 ~-5 ~-4 slot.container 9 golden_apple 7
replaceitem block ~0 ~-5 ~-4 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-5 ~-4 slot.container 11 campfire 3
replaceitem block ~0 ~-5 ~-4 slot.container 12 lantern 6
replaceitem block ~0 ~-5 ~-4 slot.container 13 cooked_mutton 11
replaceitem block ~0 ~-5 ~-4 slot.container 14 sweet_berries 16
loot insert ~0 ~-5 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-5 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 cobblestone []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 cobblestone []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 spruce_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-7 ~4 ~-1 ~-7 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-7 ~0 ~7 ~-8 ~11 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-6 ~1 ~4 slot.container 4 rabbit_foot 8
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~-6 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~-6 ~1 ~4 slot.container 13 campfire 7
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 10
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
