# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2172/4224 | 主题内编号: b124/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·三层重檐帝王阁楼与秘库 (ice_plains_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x15 | 地上高度 11格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 blue_ice [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 blue_ice [] replace water
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 snow []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 snow []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 bone 17
replaceitem block ~4 ~-4 ~4 slot.container 1 arrow 26
replaceitem block ~4 ~-4 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-4 ~4 slot.container 3 string 8
replaceitem block ~4 ~-4 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-4 ~4 slot.container 5 snowball 18
replaceitem block ~4 ~-4 ~4 slot.container 9 golden_apple 7
replaceitem block ~4 ~-4 ~4 slot.container 10 cooked_cod 14
replaceitem block ~4 ~-4 ~4 slot.container 11 cooked_salmon 8
replaceitem block ~4 ~-4 ~4 slot.container 12 packed_ice 17
replaceitem block ~4 ~-4 ~4 slot.container 13 blue_ice 10
replaceitem block ~4 ~-4 ~4 slot.container 14 coal 19
loot insert ~4 ~-4 ~4 loot "rsf/ice_plains"
loot insert ~4 ~-4 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 blue_ice []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 stone_brick_slab []
fill ~-5 ~6 ~-5 ~5 ~11 ~5 snow []
fill ~-4 ~6 ~-4 ~4 ~10 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~11 ~-7 ~7 ~11 ~7 stone_brick_slab []
fill ~-5 ~12 ~-5 ~5 ~13 ~5 snow []
fill ~-6 ~14 ~-6 ~6 ~14 ~6 stone_brick_slab []
setblock ~0 ~15 ~0 diamond_block []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 quartz_block []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 quartz_block []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 quartz_block []
fill ~8 ~0 ~2 ~8 ~6 ~2 quartz_block []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-7 ~-9 ~7 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~7 ~7 packed_ice []
setblock ~-9 ~8 ~-7 blue_ice []
setblock ~9 ~8 ~7 blue_ice []
setblock ~-2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_stone_bricks []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 snowball 21
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_cod 8
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
