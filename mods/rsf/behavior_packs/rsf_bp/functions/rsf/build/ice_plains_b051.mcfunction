# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2099/4224 | 主题内编号: b051/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·带哨塔围栏探险营地 (ice_plains_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 snow []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 snow []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 spruce_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 campfire []
setblock ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 campfire []
setblock ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 campfire []
setblock ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~10 ~2 blue_ice []
fill ~7 ~1 ~-1 ~8 ~9 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~11 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-9 ~9 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~9 ~8 packed_ice []
setblock ~-9 ~10 ~-8 blue_ice []
setblock ~9 ~10 ~8 blue_ice []
setblock ~-3 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 9
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_salmon 10
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
