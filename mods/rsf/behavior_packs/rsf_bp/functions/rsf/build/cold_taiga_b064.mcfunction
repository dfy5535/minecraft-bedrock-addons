# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0832/4224 | 主题内编号: b064/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·U型冥庭守墓人陵园 (cold_taiga_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 packed_ice []
setblock ~0 ~-7 ~0 coal_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 7
replaceitem block ~0 ~-4 ~-3 slot.container 3 leather 10
replaceitem block ~0 ~-4 ~-3 slot.container 4 rabbit_foot 5
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 9 spruce_log 18
replaceitem block ~0 ~-4 ~-3 slot.container 10 coal 19
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-4 ~-3 slot.container 12 leather_boots 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 flint_and_steel 1
loot insert ~0 ~-4 ~-3 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 stone_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-6 ~0 ~6 ~-7 ~11 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~12 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 11 campfire 3
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_mutton 11
replaceitem block ~-5 ~1 ~3 slot.container 14 sweet_berries 16
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
