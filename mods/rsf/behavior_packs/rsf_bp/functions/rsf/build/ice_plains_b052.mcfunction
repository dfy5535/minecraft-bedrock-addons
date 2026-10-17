# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2100/4224 | 主题内编号: b052/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·重檐行商旅店客栈 (ice_plains_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 blue_ice [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 blue_ice [] replace water
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 snow []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 snow []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 17
replaceitem block ~4 ~-3 ~4 slot.container 1 arrow 26
replaceitem block ~4 ~-3 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 3 string 8
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 5 snowball 18
replaceitem block ~4 ~-3 ~4 slot.container 9 blue_ice 11
replaceitem block ~4 ~-3 ~4 slot.container 10 coal 20
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 11
replaceitem block ~4 ~-3 ~4 slot.container 12 emerald 9
replaceitem block ~4 ~-3 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~-3 ~4 slot.container 14 lantern 5
loot insert ~4 ~-3 ~4 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 blue_ice []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 stone_brick_slab []
fill ~-5 ~5 ~-5 ~5 ~8 ~5 snow []
fill ~-4 ~5 ~-4 ~4 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-7 ~7 ~8 ~7 stone_brick_slab []
fill ~-5 ~9 ~-5 ~5 ~10 ~5 snow []
fill ~-6 ~11 ~-6 ~6 ~11 ~6 stone_brick_slab []
setblock ~0 ~12 ~0 diamond_block []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 packed_ice []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 quartz_block []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 quartz_block []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-7 ~-9 ~10 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~10 ~7 packed_ice []
setblock ~-9 ~11 ~-7 blue_ice []
setblock ~9 ~11 ~7 blue_ice []
setblock ~-2 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 snowball 21
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_cod 9
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 10
replaceitem block ~-5 ~1 ~4 slot.container 12 packed_ice 19
replaceitem block ~-5 ~1 ~4 slot.container 13 blue_ice 12
replaceitem block ~-5 ~1 ~4 slot.container 14 coal 21
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
