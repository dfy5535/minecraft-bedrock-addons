# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2132/4224 | 主题内编号: b084/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·露天采石场与矿道库 (ice_plains_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blue_ice [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blue_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 snow []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-4 ~3 slot.container 1 arrow 26
replaceitem block ~4 ~-4 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-4 ~3 slot.container 3 string 8
replaceitem block ~4 ~-4 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~-4 ~3 slot.container 5 snowball 18
replaceitem block ~4 ~-4 ~3 slot.container 9 golden_apple 2
replaceitem block ~4 ~-4 ~3 slot.container 10 cooked_cod 9
replaceitem block ~4 ~-4 ~3 slot.container 11 cooked_salmon 10
replaceitem block ~4 ~-4 ~3 slot.container 12 packed_ice 19
replaceitem block ~4 ~-4 ~3 slot.container 13 blue_ice 12
replaceitem block ~4 ~-4 ~3 slot.container 14 coal 21
loot insert ~4 ~-4 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-4 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 blue_ice []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 packed_ice []
fill ~0 ~1 ~-5 ~0 ~2 ~5 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 quartz_block []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 quartz_block []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 quartz_block []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 quartz_block []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-9 ~7 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~7 ~8 packed_ice []
setblock ~-9 ~8 ~-8 blue_ice []
setblock ~9 ~8 ~8 blue_ice []
setblock ~0 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 10
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
