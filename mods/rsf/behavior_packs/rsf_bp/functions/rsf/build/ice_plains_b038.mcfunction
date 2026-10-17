# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2086/4224 | 主题内编号: b038/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·四方凯旋衣冠冢 (ice_plains_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 snow []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 arrow 26
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 5 snowball 18
replaceitem block ~0 ~-3 ~-2 slot.container 9 blue_ice 11
replaceitem block ~0 ~-3 ~-2 slot.container 10 coal 20
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 12 emerald 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 lantern 5
loot insert ~0 ~-3 ~-2 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~9 ~4 packed_ice []
fill ~-5 ~1 ~-2 ~5 ~9 ~2 packed_ice []
fill ~-1 ~1 ~-3 ~1 ~8 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~8 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 snow []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-6 ~-8 ~6 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~6 ~6 packed_ice []
setblock ~-8 ~7 ~-6 blue_ice []
setblock ~8 ~7 ~6 blue_ice []
setblock ~2 ~4 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 5
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_cod 11
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_salmon 12
replaceitem block ~-4 ~1 ~2 slot.container 14 packed_ice 21
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
