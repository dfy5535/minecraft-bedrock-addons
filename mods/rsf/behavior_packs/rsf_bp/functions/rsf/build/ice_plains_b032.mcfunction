# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2080/4224 | 主题内编号: b032/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·断顶残垣古哨塔 (ice_plains_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 blue_ice [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 blue_ice [] replace water
fill ~-5 ~1 ~-5 ~5 ~12 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 snow []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 snow []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 blue_ice []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 3 snowball 18
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 emerald 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 lantern 4
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_cod 10
loot insert ~0 ~-3 ~-2 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~10 ~4 blue_ice []
fill ~-3 ~1 ~-3 ~3 ~9 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~10 ~-4 quartz_block []
fill ~-4 ~1 ~4 ~-4 ~10 ~4 quartz_block []
fill ~4 ~1 ~-4 ~4 ~10 ~-4 quartz_block []
fill ~4 ~1 ~4 ~4 ~10 ~4 quartz_block []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~10 ~-4 ~4 ~10 ~4 stone_brick_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-4 ~9 ~-1 ~-4 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 quartz_block []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 quartz_block []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 quartz_block []
fill ~5 ~0 ~2 ~5 ~9 ~2 quartz_block []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~-6 ~-7 ~10 ~-6 packed_ice []
fill ~7 ~0 ~6 ~7 ~10 ~6 packed_ice []
setblock ~-7 ~11 ~-6 blue_ice []
setblock ~7 ~11 ~6 blue_ice []
setblock ~1 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-3 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 5 snowball 21
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~-3 ~1 ~2 slot.container 10 cooked_cod 10
replaceitem block ~-3 ~1 ~2 slot.container 11 cooked_salmon 11
replaceitem block ~-3 ~1 ~2 slot.container 12 packed_ice 20
replaceitem block ~-3 ~1 ~2 slot.container 13 blue_ice 13
replaceitem block ~-3 ~1 ~2 slot.container 14 coal 22
loot insert ~-3 ~1 ~2 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
