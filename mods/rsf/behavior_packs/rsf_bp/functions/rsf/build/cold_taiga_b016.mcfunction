# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0784/4224 | 主题内编号: b016/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·要塞地底重装暗牢 (cold_taiga_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 campfire []
setblock ~5 ~-6 ~0 campfire []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rabbit_foot 5
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 22
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 5 string 8
replaceitem block ~0 ~-4 ~4 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-4 ~4 slot.container 10 leather_boots 1
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 2
replaceitem block ~0 ~-4 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-4 ~4 slot.container 13 campfire 5
replaceitem block ~0 ~-4 ~4 slot.container 14 lantern 8
loot insert ~0 ~-4 ~4 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~4 loot "chests/igloo_chest"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 rabbit_foot 3
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 arrow 20
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-4 ~-4 slot.container 10 leather_boots 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 golden_apple 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 campfire 4
replaceitem block ~0 ~-4 ~-4 slot.container 14 lantern 7
loot insert ~0 ~-4 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 packed_ice []
setblock ~-7 ~9 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 packed_ice []
setblock ~-7 ~9 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 packed_ice []
setblock ~6 ~9 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~8 ~6 packed_ice []
setblock ~6 ~9 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 packed_ice []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 stripped_spruce_log []
setblock ~-7 ~8 ~-6 campfire []
setblock ~-7 ~7 ~6 stripped_spruce_log []
setblock ~-7 ~8 ~6 campfire []
setblock ~7 ~7 ~-6 stripped_spruce_log []
setblock ~7 ~8 ~-6 campfire []
setblock ~7 ~7 ~6 stripped_spruce_log []
setblock ~7 ~8 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-7 ~0 ~7 ~-8 ~13 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~14 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-6 ~1 ~4 slot.container 9 spruce_log 16
replaceitem block ~-6 ~1 ~4 slot.container 10 coal 17
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-6 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-6 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
