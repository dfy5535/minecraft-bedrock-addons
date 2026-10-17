# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2092/4224 | 主题内编号: b044/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子祭台勇士角斗场 (ice_plains_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 blue_ice [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 blue_ice [] replace water
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 stone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 snow []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~8 ~5 blue_ice []
fill ~2 ~1 ~-5 ~7 ~8 ~5 blue_ice []
fill ~-6 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~6 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 packed_ice []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-5 ~-7 ~9 ~-5 quartz_block []
setblock ~-7 ~10 ~-5 soul_lantern []
fill ~-7 ~7 ~5 ~-7 ~9 ~5 quartz_block []
setblock ~-7 ~10 ~5 soul_lantern []
fill ~7 ~7 ~-5 ~7 ~9 ~-5 quartz_block []
setblock ~7 ~10 ~-5 soul_lantern []
fill ~7 ~7 ~5 ~7 ~9 ~5 quartz_block []
setblock ~7 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~5 ~-7 quartz_block []
setblock ~-9 ~6 ~-7 soul_lantern []
fill ~-9 ~0 ~7 ~-9 ~5 ~7 quartz_block []
setblock ~-9 ~6 ~7 soul_lantern []
fill ~9 ~0 ~-7 ~9 ~5 ~-7 quartz_block []
setblock ~9 ~6 ~-7 soul_lantern []
fill ~9 ~0 ~7 ~9 ~5 ~7 quartz_block []
setblock ~9 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~-10 ~0 ~-7 ~-10 ~7 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~7 ~7 packed_ice []
setblock ~-10 ~8 ~-7 blue_ice []
setblock ~10 ~8 ~7 blue_ice []
setblock ~1 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 1 snowball 21
replaceitem block ~-6 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 21
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 10 emerald 3
replaceitem block ~-6 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~-6 ~1 ~3 slot.container 12 lantern 6
replaceitem block ~-6 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-6 ~1 ~3 slot.container 14 cooked_cod 12
loot insert ~-6 ~1 ~3 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
