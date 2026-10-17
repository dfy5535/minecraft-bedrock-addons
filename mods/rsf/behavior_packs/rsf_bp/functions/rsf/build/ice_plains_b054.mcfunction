# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2102/4224 | 主题内编号: b054/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·切石与伐木工匠棚屋 (ice_plains_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 packed_ice [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 packed_ice [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 quartz_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 quartz_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 packed_ice []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_lantern []
setblock ~5 ~-7 ~0 soul_lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 17
replaceitem block ~0 ~-5 ~4 slot.container 1 arrow 26
replaceitem block ~0 ~-5 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-5 ~4 slot.container 5 snowball 18
replaceitem block ~0 ~-5 ~4 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-5 ~4 slot.container 10 emerald 3
replaceitem block ~0 ~-5 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-5 ~4 slot.container 12 lantern 6
replaceitem block ~0 ~-5 ~4 slot.container 13 golden_apple 5
replaceitem block ~0 ~-5 ~4 slot.container 14 cooked_cod 12
loot insert ~0 ~-5 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-5 ~4 loot "chests/igloo_chest"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 arrow 24
replaceitem block ~0 ~-5 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-5 ~-4 slot.container 5 snowball 16
replaceitem block ~0 ~-5 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-5 ~-4 slot.container 10 emerald 9
replaceitem block ~0 ~-5 ~-4 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 lantern 5
replaceitem block ~0 ~-5 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-5 ~-4 slot.container 14 cooked_cod 11
loot insert ~0 ~-5 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-5 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 packed_ice []
fill ~2 ~1 ~-4 ~6 ~8 ~4 packed_ice []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 snow []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-5 ~-7 ~8 ~5 quartz_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-5 ~7 ~8 ~5 quartz_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~-6 ~9 ~4 quartz_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-4 ~6 ~9 ~4 quartz_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~5 ~9 ~4 quartz_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 packed_ice []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-7 ~-9 ~7 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~7 ~7 packed_ice []
setblock ~-9 ~8 ~-7 blue_ice []
setblock ~9 ~8 ~7 blue_ice []
setblock ~0 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 11
replaceitem block ~-5 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~-5 ~1 ~2 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_cod 8
loot insert ~-5 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~2 ~0
