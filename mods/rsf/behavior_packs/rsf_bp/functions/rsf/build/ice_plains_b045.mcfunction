# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2093/4224 | 主题内编号: b045/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十二柱神殿试炼场 (ice_plains_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 snow [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 snow [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 snow []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 blue_ice []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 snowball 18
replaceitem block ~0 ~-2 ~4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-2 ~4 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-2 ~4 slot.container 3 bone 17
replaceitem block ~0 ~-2 ~4 slot.container 4 arrow 26
replaceitem block ~0 ~-2 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-2 ~4 slot.container 10 cooked_salmon 13
replaceitem block ~0 ~-2 ~4 slot.container 11 packed_ice 22
replaceitem block ~0 ~-2 ~4 slot.container 12 blue_ice 8
replaceitem block ~0 ~-2 ~4 slot.container 13 coal 17
replaceitem block ~0 ~-2 ~4 slot.container 14 iron_ingot 8
loot insert ~0 ~-2 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-2 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 packed_ice []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 spruce_log []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 spruce_log []
fill ~7 ~1 ~6 ~7 ~7 ~6 spruce_log []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 spruce_log []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 spruce_log []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 spruce_log []
fill ~7 ~1 ~0 ~7 ~7 ~0 spruce_log []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 spruce_log []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 spruce_log []
fill ~7 ~1 ~4 ~7 ~7 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 spruce_log []
setblock ~-7 ~11 ~-6 lantern []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 spruce_log []
setblock ~-7 ~11 ~6 lantern []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 spruce_log []
setblock ~7 ~11 ~-6 lantern []
fill ~7 ~8 ~6 ~7 ~10 ~6 spruce_log []
setblock ~7 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 sea_lantern []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 sea_lantern []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 sea_lantern []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 sea_lantern []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x9x4) ---
fill ~-10 ~0 ~-9 ~-10 ~8 ~-9 packed_ice []
fill ~10 ~0 ~9 ~10 ~8 ~9 packed_ice []
setblock ~-10 ~9 ~-9 blue_ice []
setblock ~10 ~9 ~9 blue_ice []
setblock ~2 ~6 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 snowball 21
replaceitem block ~6 ~1 ~4 slot.container 1 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 2 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 3 bone 12
replaceitem block ~6 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 4
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_cod 10
replaceitem block ~6 ~1 ~4 slot.container 12 cooked_salmon 11
replaceitem block ~6 ~1 ~4 slot.container 13 packed_ice 20
replaceitem block ~6 ~1 ~4 slot.container 14 blue_ice 13
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 2 arrow 24
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 string 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 8
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_cod 8
replaceitem block ~-6 ~1 ~5 slot.container 12 cooked_salmon 9
replaceitem block ~-6 ~1 ~5 slot.container 13 packed_ice 18
replaceitem block ~-6 ~1 ~5 slot.container 14 blue_ice 11
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
