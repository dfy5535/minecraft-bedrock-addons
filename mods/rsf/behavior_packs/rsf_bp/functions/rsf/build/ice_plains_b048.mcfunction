# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2096/4224 | 主题内编号: b048/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·阶梯王座巅峰试炼台 (ice_plains_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 blue_ice [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 blue_ice [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 snow []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 blue_ice []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 3 snowball 18
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 blue_ice 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 lantern 8
loot insert ~0 ~-3 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 blue_ice []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 packed_ice []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 snow []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 quartz_block []
setblock ~-7 ~11 ~-6 soul_lantern []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 quartz_block []
setblock ~-7 ~11 ~6 soul_lantern []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 quartz_block []
setblock ~7 ~11 ~-6 soul_lantern []
fill ~7 ~8 ~6 ~7 ~10 ~6 quartz_block []
setblock ~7 ~11 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 quartz_block []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 quartz_block []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x9x2) ---
fill ~-10 ~0 ~-9 ~-10 ~6 ~-9 packed_ice []
fill ~10 ~0 ~9 ~10 ~6 ~9 packed_ice []
setblock ~-10 ~7 ~-9 blue_ice []
setblock ~10 ~7 ~9 blue_ice []
setblock ~-2 ~4 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 soul_lantern []
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
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_cod 14
replaceitem block ~-6 ~1 ~4 slot.container 13 cooked_salmon 8
replaceitem block ~-6 ~1 ~4 slot.container 14 packed_ice 17
loot insert ~-6 ~1 ~4 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
