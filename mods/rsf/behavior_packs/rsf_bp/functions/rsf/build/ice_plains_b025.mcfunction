# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2073/4224 | 主题内编号: b025/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·雉堞女墙四方哨塔 (ice_plains_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 snow [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 snow [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 snow []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~11 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~11 ~-3 ~4 ~11 ~3 packed_ice []
fill ~-4 ~12 ~-3 ~4 ~12 ~3 spruce_fence []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~-4 ~12 ~-3 spruce_log []
setblock ~-4 ~13 ~-3 lantern []
setblock ~-4 ~12 ~3 spruce_log []
setblock ~-4 ~13 ~3 lantern []
setblock ~4 ~12 ~-3 spruce_log []
setblock ~4 ~13 ~-3 lantern []
setblock ~4 ~12 ~3 spruce_log []
setblock ~4 ~13 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 packed_ice []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 spruce_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 stone_brick_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 7x4x4) ---
fill ~-7 ~0 ~-4 ~-7 ~8 ~-4 packed_ice []
fill ~7 ~0 ~4 ~7 ~8 ~4 packed_ice []
setblock ~-7 ~9 ~-4 blue_ice []
setblock ~7 ~9 ~4 blue_ice []
setblock ~-2 ~6 ~4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 snowball 21
replaceitem block ~3 ~1 ~1 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 5
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 11 cooked_cod 11
replaceitem block ~3 ~1 ~1 slot.container 12 cooked_salmon 12
replaceitem block ~3 ~1 ~1 slot.container 13 packed_ice 21
replaceitem block ~3 ~1 ~1 slot.container 14 blue_ice 14
loot insert ~3 ~1 ~1 loot "rsf/ice_plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 snowball 16
replaceitem block ~-3 ~1 ~2 slot.container 3 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 10
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~-3 ~1 ~2 slot.container 11 cooked_cod 9
replaceitem block ~-3 ~1 ~2 slot.container 12 cooked_salmon 10
replaceitem block ~-3 ~1 ~2 slot.container 13 packed_ice 19
replaceitem block ~-3 ~1 ~2 slot.container 14 blue_ice 12
loot insert ~-3 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
