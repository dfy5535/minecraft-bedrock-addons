# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2060/4224 | 主题内编号: b012/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子暗门地底宝库 (ice_plains_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 blue_ice [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 blue_ice [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 snow []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 snow []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 bone 17
replaceitem block ~5 ~-4 ~2 slot.container 1 arrow 26
replaceitem block ~5 ~-4 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-4 ~2 slot.container 3 string 8
replaceitem block ~5 ~-4 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~-4 ~2 slot.container 5 snowball 18
replaceitem block ~5 ~-4 ~2 slot.container 9 blue_ice 13
replaceitem block ~5 ~-4 ~2 slot.container 10 coal 22
replaceitem block ~5 ~-4 ~2 slot.container 11 iron_ingot 6
replaceitem block ~5 ~-4 ~2 slot.container 12 emerald 4
replaceitem block ~5 ~-4 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~5 ~-4 ~2 slot.container 14 lantern 7
loot insert ~5 ~-4 ~2 loot "rsf/ice_plains"
loot insert ~5 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 blue_ice []
fill ~2 ~1 ~-4 ~7 ~8 ~4 blue_ice []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 packed_ice []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-5 ~-8 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-5 ~8 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-4 ~-7 ~9 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-4 ~7 ~9 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~6 ~9 ~4 stone_brick_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 quartz_block []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 quartz_block []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 quartz_block []
fill ~8 ~0 ~2 ~8 ~6 ~2 quartz_block []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-10 ~0 ~-7 ~-10 ~10 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~10 ~7 packed_ice []
setblock ~-10 ~11 ~-7 blue_ice []
setblock ~10 ~11 ~7 blue_ice []
setblock ~-3 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 snowball 21
replaceitem block ~-6 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_cod 11
replaceitem block ~-6 ~1 ~2 slot.container 11 cooked_salmon 12
replaceitem block ~-6 ~1 ~2 slot.container 12 packed_ice 21
replaceitem block ~-6 ~1 ~2 slot.container 13 blue_ice 14
replaceitem block ~-6 ~1 ~2 slot.container 14 coal 16
loot insert ~-6 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
