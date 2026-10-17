# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2166/4224 | 主题内编号: b118/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·L型蜂农与林果采集屋 (ice_plains_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 packed_ice []
fill ~-6 ~1 ~0 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 quartz_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 quartz_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 quartz_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 quartz_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 quartz_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 packed_ice []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-9 ~0 ~-6 ~-9 ~6 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~6 ~6 packed_ice []
setblock ~-9 ~7 ~-6 blue_ice []
setblock ~9 ~7 ~6 blue_ice []
setblock ~-2 ~4 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 14
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 8
replaceitem block ~-5 ~1 ~3 slot.container 14 packed_ice 17
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
