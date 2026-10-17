# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2136/4224 | 主题内编号: b088/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·矿车铁轨转运仓库 (ice_plains_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blue_ice [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blue_ice [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 snow []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 1 snowball 18
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-3 ~4 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 26
replaceitem block ~3 ~-3 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~3 ~-3 ~4 slot.container 10 packed_ice 21
replaceitem block ~3 ~-3 ~4 slot.container 11 blue_ice 14
replaceitem block ~3 ~-3 ~4 slot.container 12 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 14 emerald 5
loot insert ~3 ~-3 ~4 loot "rsf/ice_plains"
loot insert ~3 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 blue_ice []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 quartz_block []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 quartz_block []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 quartz_block []
fill ~5 ~1 ~6 ~5 ~7 ~6 quartz_block []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 stone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 packed_ice []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-8 ~6 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~6 ~7 packed_ice []
setblock ~-8 ~7 ~-7 blue_ice []
setblock ~8 ~7 ~7 blue_ice []
setblock ~2 ~4 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 snowball 21
replaceitem block ~-4 ~1 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_cod 12
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~-4 ~1 ~4 slot.container 14 packed_ice 22
loot insert ~-4 ~1 ~4 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
