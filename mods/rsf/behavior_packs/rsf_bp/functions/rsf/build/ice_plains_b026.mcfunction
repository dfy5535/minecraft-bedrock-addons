# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2074/4224 | 主题内编号: b026/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·尖顶信标引航高塔 (ice_plains_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 packed_ice [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 packed_ice [] replace water
fill ~-5 ~1 ~-4 ~5 ~14 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 stone_bricks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 ender_pearl 5
replaceitem block ~2 ~-3 ~1 slot.container 1 phantom_membrane 6
replaceitem block ~2 ~-3 ~1 slot.container 2 bone 17
replaceitem block ~2 ~-3 ~1 slot.container 3 arrow 26
replaceitem block ~2 ~-3 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-3 ~1 slot.container 5 string 8
replaceitem block ~2 ~-3 ~1 slot.container 9 iron_ingot 11
replaceitem block ~2 ~-3 ~1 slot.container 10 emerald 9
replaceitem block ~2 ~-3 ~1 slot.container 11 flint_and_steel 1
replaceitem block ~2 ~-3 ~1 slot.container 12 lantern 5
replaceitem block ~2 ~-3 ~1 slot.container 13 golden_apple 4
replaceitem block ~2 ~-3 ~1 slot.container 14 cooked_cod 11
loot insert ~2 ~-3 ~1 loot "rsf/ice_plains"
loot insert ~2 ~-3 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~12 ~3 packed_ice []
fill ~-3 ~1 ~-2 ~3 ~11 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~13 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~13 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~13 ~3 air []
fill ~4 ~1 ~3 ~4 ~13 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~12 ~-2 chiseled_stone_bricks []
fill ~3 ~1 ~-2 ~3 ~12 ~-2 chiseled_stone_bricks []
fill ~-3 ~1 ~2 ~-3 ~12 ~2 chiseled_stone_bricks []
fill ~3 ~1 ~2 ~3 ~12 ~2 chiseled_stone_bricks []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 snow []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 packed_ice []
fill ~0 ~18 ~0 ~0 ~19 ~0 sea_lantern []
setblock ~0 ~20 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~11 ~-2 chiseled_stone_bricks []
fill ~-5 ~0 ~2 ~-5 ~11 ~2 chiseled_stone_bricks []
fill ~5 ~0 ~-2 ~5 ~11 ~-2 chiseled_stone_bricks []
fill ~5 ~0 ~2 ~5 ~11 ~2 chiseled_stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~-5 ~-7 ~9 ~-5 packed_ice []
fill ~7 ~0 ~5 ~7 ~9 ~5 packed_ice []
setblock ~-7 ~10 ~-5 blue_ice []
setblock ~7 ~10 ~5 blue_ice []
setblock ~-1 ~7 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~1 slot.container 1 string 11
replaceitem block ~-3 ~1 ~1 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~1 slot.container 3 snowball 21
replaceitem block ~-3 ~1 ~1 slot.container 4 ender_pearl 8
replaceitem block ~-3 ~1 ~1 slot.container 5 phantom_membrane 9
replaceitem block ~-3 ~1 ~1 slot.container 9 cooked_salmon 10
replaceitem block ~-3 ~1 ~1 slot.container 10 packed_ice 19
replaceitem block ~-3 ~1 ~1 slot.container 11 blue_ice 12
replaceitem block ~-3 ~1 ~1 slot.container 12 coal 21
replaceitem block ~-3 ~1 ~1 slot.container 13 iron_ingot 12
replaceitem block ~-3 ~1 ~1 slot.container 14 emerald 3
loot insert ~-3 ~1 ~1 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
