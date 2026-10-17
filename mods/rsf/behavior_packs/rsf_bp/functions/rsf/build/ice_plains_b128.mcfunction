# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2176/4224 | 主题内编号: b128/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·U型紫禁朝堂大殿与地底金库 (ice_plains_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blue_ice [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blue_ice [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 snow []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blue_ice []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 9
replaceitem block ~5 ~-4 ~4 slot.container 1 snowball 18
replaceitem block ~5 ~-4 ~4 slot.container 2 ender_pearl 5
replaceitem block ~5 ~-4 ~4 slot.container 3 phantom_membrane 6
replaceitem block ~5 ~-4 ~4 slot.container 4 bone 17
replaceitem block ~5 ~-4 ~4 slot.container 5 arrow 26
replaceitem block ~5 ~-4 ~4 slot.container 9 blue_ice 13
replaceitem block ~5 ~-4 ~4 slot.container 10 coal 22
replaceitem block ~5 ~-4 ~4 slot.container 11 iron_ingot 6
replaceitem block ~5 ~-4 ~4 slot.container 12 emerald 4
replaceitem block ~5 ~-4 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~5 ~-4 ~4 slot.container 14 lantern 7
loot insert ~5 ~-4 ~4 loot "rsf/ice_plains"
loot insert ~5 ~-4 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 blue_ice []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~9 ~-7 ~8 ~9 ~7 stone_brick_slab []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 snow []
fill ~-7 ~12 ~-6 ~7 ~12 ~6 stone_brick_slab []
setblock ~0 ~13 ~0 diamond_block []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~-10 ~0 ~-8 ~-10 ~6 ~-8 packed_ice []
fill ~10 ~0 ~8 ~10 ~6 ~8 packed_ice []
setblock ~-10 ~7 ~-8 blue_ice []
setblock ~10 ~7 ~8 blue_ice []
setblock ~1 ~4 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 snowball 21
replaceitem block ~-6 ~1 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_cod 10
replaceitem block ~-6 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-6 ~1 ~4 slot.container 14 packed_ice 20
loot insert ~-6 ~1 ~4 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
