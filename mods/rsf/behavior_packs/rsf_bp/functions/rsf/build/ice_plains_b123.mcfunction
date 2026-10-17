# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2171/4224 | 主题内编号: b123/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·四角塔楼领主城堡复合体 (ice_plains_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 campfire []
setblock ~5 ~-5 ~-4 campfire []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 snowball 18
replaceitem block ~5 ~-3 ~4 slot.container 1 ender_pearl 5
replaceitem block ~5 ~-3 ~4 slot.container 2 phantom_membrane 6
replaceitem block ~5 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~5 ~-3 ~4 slot.container 4 arrow 26
replaceitem block ~5 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 9 coal 19
replaceitem block ~5 ~-3 ~4 slot.container 10 iron_ingot 10
replaceitem block ~5 ~-3 ~4 slot.container 11 emerald 8
replaceitem block ~5 ~-3 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~-3 ~4 slot.container 13 lantern 4
replaceitem block ~5 ~-3 ~4 slot.container 14 golden_apple 3
loot insert ~5 ~-3 ~4 loot "rsf/ice_plains"
loot insert ~5 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~11 ~-5 snow []
setblock ~-7 ~12 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~11 ~6 snow []
setblock ~-7 ~12 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~11 ~-5 snow []
setblock ~6 ~12 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~11 ~6 snow []
setblock ~6 ~12 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 snow []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 spruce_fence []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 air []
setblock ~-7 ~10 ~-6 spruce_log []
setblock ~-7 ~11 ~-6 campfire []
setblock ~-7 ~10 ~6 spruce_log []
setblock ~-7 ~11 ~6 campfire []
setblock ~7 ~10 ~-6 spruce_log []
setblock ~7 ~11 ~-6 campfire []
setblock ~7 ~10 ~6 spruce_log []
setblock ~7 ~11 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~9 ~2 stone_bricks []
fill ~8 ~1 ~-1 ~9 ~8 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x9x2) ---
fill ~-10 ~0 ~-9 ~-10 ~6 ~-9 packed_ice []
fill ~10 ~0 ~9 ~10 ~6 ~9 packed_ice []
setblock ~-10 ~7 ~-9 blue_ice []
setblock ~10 ~7 ~9 blue_ice []
setblock ~3 ~4 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 snowball 21
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 packed_ice 17
replaceitem block ~6 ~1 ~4 slot.container 10 blue_ice 10
replaceitem block ~6 ~1 ~4 slot.container 11 coal 19
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 13 emerald 8
replaceitem block ~6 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 snowball 16
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 24
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 packed_ice 22
replaceitem block ~-6 ~1 ~5 slot.container 10 blue_ice 8
replaceitem block ~-6 ~1 ~5 slot.container 11 coal 17
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 13 emerald 6
replaceitem block ~-6 ~1 ~5 slot.container 14 flint_and_steel 1
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
