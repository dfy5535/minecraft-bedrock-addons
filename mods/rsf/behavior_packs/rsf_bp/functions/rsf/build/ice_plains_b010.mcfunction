# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2058/4224 | 主题内编号: b010/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字交叉深层地牢 (ice_plains_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 6格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 packed_ice [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 packed_ice [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 quartz_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
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

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 packed_ice []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 packed_ice []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 quartz_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 chiseled_stone_bricks []
setblock ~-9 ~6 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 chiseled_stone_bricks []
setblock ~-9 ~6 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 chiseled_stone_bricks []
setblock ~9 ~6 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 chiseled_stone_bricks []
setblock ~9 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-10 ~0 ~-7 ~-10 ~8 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~8 ~7 packed_ice []
setblock ~-10 ~9 ~-7 blue_ice []
setblock ~10 ~9 ~7 blue_ice []
setblock ~2 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 snowball 21
replaceitem block ~-6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 9 blue_ice 8
replaceitem block ~-6 ~1 ~4 slot.container 10 coal 17
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-6 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-6 ~1 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 9
loot insert ~-6 ~1 ~4 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
