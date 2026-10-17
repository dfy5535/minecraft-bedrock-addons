# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2146/4224 | 主题内编号: b098/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·四角炮楼重装要塞 (ice_plains_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 packed_ice [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 packed_ice [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 quartz_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 soul_lantern []
setblock ~5 ~-6 ~-4 soul_lantern []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 9
replaceitem block ~5 ~-4 ~4 slot.container 1 snowball 18
replaceitem block ~5 ~-4 ~4 slot.container 2 ender_pearl 5
replaceitem block ~5 ~-4 ~4 slot.container 3 phantom_membrane 6
replaceitem block ~5 ~-4 ~4 slot.container 4 bone 17
replaceitem block ~5 ~-4 ~4 slot.container 5 arrow 26
replaceitem block ~5 ~-4 ~4 slot.container 9 golden_apple 8
replaceitem block ~5 ~-4 ~4 slot.container 10 cooked_cod 8
replaceitem block ~5 ~-4 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~5 ~-4 ~4 slot.container 12 packed_ice 18
replaceitem block ~5 ~-4 ~4 slot.container 13 blue_ice 11
replaceitem block ~5 ~-4 ~4 slot.container 14 coal 20
loot insert ~5 ~-4 ~4 loot "rsf/ice_plains"
loot insert ~5 ~-4 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 packed_ice []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 snow []
setblock ~-7 ~11 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 snow []
setblock ~-7 ~11 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 snow []
setblock ~6 ~11 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 snow []
setblock ~6 ~11 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 snow []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 cobblestone_wall []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 chiseled_stone_bricks []
setblock ~-7 ~10 ~-6 soul_lantern []
setblock ~-7 ~9 ~6 chiseled_stone_bricks []
setblock ~-7 ~10 ~6 soul_lantern []
setblock ~7 ~9 ~-6 chiseled_stone_bricks []
setblock ~7 ~10 ~-6 soul_lantern []
setblock ~7 ~9 ~6 chiseled_stone_bricks []
setblock ~7 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 spruce_log []
setblock ~-8 ~6 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 spruce_log []
setblock ~-8 ~6 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 spruce_log []
setblock ~8 ~6 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~5 ~7 spruce_log []
setblock ~8 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~-10 ~0 ~-8 ~-10 ~6 ~-8 packed_ice []
fill ~10 ~0 ~8 ~10 ~6 ~8 packed_ice []
setblock ~-10 ~7 ~-8 blue_ice []
setblock ~10 ~7 ~8 blue_ice []
setblock ~-1 ~4 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 snowball 21
replaceitem block ~-6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_cod 8
replaceitem block ~-6 ~1 ~4 slot.container 13 cooked_salmon 9
replaceitem block ~-6 ~1 ~4 slot.container 14 packed_ice 18
loot insert ~-6 ~1 ~4 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
