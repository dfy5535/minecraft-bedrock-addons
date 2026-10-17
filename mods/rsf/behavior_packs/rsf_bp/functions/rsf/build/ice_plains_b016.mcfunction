# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2064/4224 | 主题内编号: b016/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·要塞地底重装暗牢 (ice_plains_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blue_ice [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blue_ice [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 snow []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 soul_lantern []
setblock ~5 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-4 ~4 slot.container 1 phantom_membrane 6
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 26
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 5 string 8
replaceitem block ~0 ~-4 ~4 slot.container 9 blue_ice 13
replaceitem block ~0 ~-4 ~4 slot.container 10 coal 22
replaceitem block ~0 ~-4 ~4 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-4 ~4 slot.container 12 emerald 4
replaceitem block ~0 ~-4 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-4 ~4 slot.container 14 lantern 7
loot insert ~0 ~-4 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-4 ~4 loot "chests/igloo_chest"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 ender_pearl 3
replaceitem block ~0 ~-4 ~-4 slot.container 1 phantom_membrane 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 arrow 24
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 blue_ice 12
replaceitem block ~0 ~-4 ~-4 slot.container 10 coal 21
replaceitem block ~0 ~-4 ~-4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-4 ~-4 slot.container 12 emerald 3
replaceitem block ~0 ~-4 ~-4 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 lantern 6
loot insert ~0 ~-4 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-4 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 blue_ice []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 packed_ice []
setblock ~-7 ~10 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 packed_ice []
setblock ~-7 ~10 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 packed_ice []
setblock ~6 ~10 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 packed_ice []
setblock ~6 ~10 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 packed_ice []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 quartz_block []
setblock ~-7 ~9 ~-6 soul_lantern []
setblock ~-7 ~8 ~6 quartz_block []
setblock ~-7 ~9 ~6 soul_lantern []
setblock ~7 ~8 ~-6 quartz_block []
setblock ~7 ~9 ~-6 soul_lantern []
setblock ~7 ~8 ~6 quartz_block []
setblock ~7 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x5) ---
fill ~-10 ~0 ~-7 ~-10 ~9 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~9 ~7 packed_ice []
setblock ~-10 ~10 ~-7 blue_ice []
setblock ~10 ~10 ~7 blue_ice []
setblock ~1 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 snowball 21
replaceitem block ~-6 ~1 ~4 slot.container 9 cooked_salmon 14
replaceitem block ~-6 ~1 ~4 slot.container 10 packed_ice 16
replaceitem block ~-6 ~1 ~4 slot.container 11 blue_ice 9
replaceitem block ~-6 ~1 ~4 slot.container 12 coal 18
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 14 emerald 7
loot insert ~-6 ~1 ~4 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
