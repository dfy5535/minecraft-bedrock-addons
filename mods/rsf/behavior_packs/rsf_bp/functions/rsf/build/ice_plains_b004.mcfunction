# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2052/4224 | 主题内编号: b004/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子火盆高台神坛 (ice_plains_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 blue_ice [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 blue_ice [] replace water
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 snow []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 blue_ice []
fill ~2 ~1 ~-4 ~7 ~9 ~4 blue_ice []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 packed_ice []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-4 ~-7 ~10 ~-4 quartz_block []
setblock ~-7 ~11 ~-4 soul_lantern []
fill ~-7 ~8 ~4 ~-7 ~10 ~4 quartz_block []
setblock ~-7 ~11 ~4 soul_lantern []
fill ~7 ~8 ~-4 ~7 ~10 ~-4 quartz_block []
setblock ~7 ~11 ~-4 soul_lantern []
fill ~7 ~8 ~4 ~7 ~10 ~4 quartz_block []
setblock ~7 ~11 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 quartz_block []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 quartz_block []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x5x3) ---
fill ~-10 ~0 ~-5 ~-10 ~7 ~-5 packed_ice []
fill ~10 ~0 ~5 ~10 ~7 ~5 packed_ice []
setblock ~-10 ~8 ~-5 blue_ice []
setblock ~10 ~8 ~5 blue_ice []
setblock ~3 ~5 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 snowball 21
replaceitem block ~-6 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 7
replaceitem block ~-6 ~1 ~2 slot.container 10 emerald 5
replaceitem block ~-6 ~1 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~-6 ~1 ~2 slot.container 12 lantern 8
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 7
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_cod 14
loot insert ~-6 ~1 ~2 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
