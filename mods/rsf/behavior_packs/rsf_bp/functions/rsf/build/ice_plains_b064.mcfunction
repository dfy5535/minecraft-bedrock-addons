# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2112/4224 | 主题内编号: b064/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·U型冥庭守墓人陵园 (ice_plains_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blue_ice [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blue_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 snow []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 packed_ice []
setblock ~0 ~-7 ~0 blue_ice []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 3 snowball 18
replaceitem block ~0 ~-4 ~-3 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-4 ~-3 slot.container 9 cooked_salmon 9
replaceitem block ~0 ~-4 ~-3 slot.container 10 packed_ice 18
replaceitem block ~0 ~-4 ~-3 slot.container 11 blue_ice 11
replaceitem block ~0 ~-4 ~-3 slot.container 12 coal 20
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 11
replaceitem block ~0 ~-4 ~-3 slot.container 14 emerald 9
loot insert ~0 ~-4 ~-3 loot "rsf/ice_plains"
loot insert ~0 ~-4 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 blue_ice []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 stone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~-9 ~0 ~-6 ~-9 ~7 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~7 ~6 packed_ice []
setblock ~-9 ~8 ~-6 blue_ice []
setblock ~9 ~8 ~6 blue_ice []
setblock ~-2 ~5 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 11
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
