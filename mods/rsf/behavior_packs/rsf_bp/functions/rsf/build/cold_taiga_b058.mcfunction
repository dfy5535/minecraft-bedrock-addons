# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0826/4224 | 主题内编号: b058/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·十字拱顶家族陵墓 (cold_taiga_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 17
replaceitem block ~0 ~-4 ~3 slot.container 1 arrow 22
replaceitem block ~0 ~-4 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 3 string 8
replaceitem block ~0 ~-4 ~3 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~3 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~3 slot.container 9 cooked_mutton 14
replaceitem block ~0 ~-4 ~3 slot.container 10 sweet_berries 12
replaceitem block ~0 ~-4 ~3 slot.container 11 spruce_log 17
replaceitem block ~0 ~-4 ~3 slot.container 12 coal 18
replaceitem block ~0 ~-4 ~3 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 14 leather_boots 1
loot insert ~0 ~-4 ~3 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~3 loot "chests/igloo_chest"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 arrow 20
replaceitem block ~0 ~-4 ~-3 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 cooked_mutton 13
replaceitem block ~0 ~-4 ~-3 slot.container 10 sweet_berries 18
replaceitem block ~0 ~-4 ~-3 slot.container 11 spruce_log 16
replaceitem block ~0 ~-4 ~-3 slot.container 12 coal 17
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 leather_boots 1
loot insert ~0 ~-4 ~-3 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 stone_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 spruce_log []
setblock ~-8 ~5 ~-7 torch []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 spruce_log []
setblock ~-8 ~5 ~7 torch []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 spruce_log []
setblock ~8 ~5 ~-7 torch []
fill ~8 ~0 ~7 ~8 ~4 ~7 spruce_log []
setblock ~8 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-6 ~0 ~6 ~-7 ~10 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 blast_furnace []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 campfire 2
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_mutton 10
replaceitem block ~-5 ~1 ~3 slot.container 12 sweet_berries 15
replaceitem block ~-5 ~1 ~3 slot.container 13 spruce_log 20
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 21
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
