# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0856/4224 | 主题内编号: b088/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·矿车铁轨转运仓库 (cold_taiga_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 1 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 2 rabbit_foot 5
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 22
replaceitem block ~3 ~-3 ~4 slot.container 9 spruce_log 21
replaceitem block ~3 ~-3 ~4 slot.container 10 coal 22
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_ingot 6
replaceitem block ~3 ~-3 ~4 slot.container 12 leather_boots 1
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 14 flint_and_steel 1
loot insert ~3 ~-3 ~4 loot "rsf/cold_taiga"
loot insert ~3 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 packed_ice []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-5 ~0 ~7 ~-6 ~10 ~8 cobblestone []
setblock ~-5 ~1 ~7 campfire []
setblock ~-5 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~4 slot.container 9 campfire 4
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_mutton 12
replaceitem block ~-4 ~1 ~4 slot.container 12 sweet_berries 17
replaceitem block ~-4 ~1 ~4 slot.container 13 spruce_log 22
replaceitem block ~-4 ~1 ~4 slot.container 14 coal 16
loot insert ~-4 ~1 ~4 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
