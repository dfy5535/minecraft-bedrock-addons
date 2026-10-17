# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2134/4224 | 主题内编号: b086/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·重装矿石金库碉堡 (ice_plains_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 arrow 26
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 9 coal 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~-3 ~2 slot.container 11 emerald 8
replaceitem block ~-3 ~-3 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 lantern 4
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_apple 3
loot insert ~-3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 packed_ice []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 snow []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 snow []
setblock ~-6 ~10 ~4 soul_lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 snow []
setblock ~5 ~10 ~-5 soul_lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 snow []
setblock ~5 ~10 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 snow []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 chiseled_stone_bricks []
setblock ~-6 ~9 ~-5 soul_lantern []
setblock ~-6 ~8 ~5 chiseled_stone_bricks []
setblock ~-6 ~9 ~5 soul_lantern []
setblock ~6 ~8 ~-5 chiseled_stone_bricks []
setblock ~6 ~9 ~-5 soul_lantern []
setblock ~6 ~8 ~5 chiseled_stone_bricks []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~-7 ~-9 ~9 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~9 ~7 packed_ice []
setblock ~-9 ~10 ~-7 blue_ice []
setblock ~9 ~10 ~7 blue_ice []
setblock ~2 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_salmon 14
replaceitem block ~-5 ~1 ~3 slot.container 10 packed_ice 16
replaceitem block ~-5 ~1 ~3 slot.container 11 blue_ice 9
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 7
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
