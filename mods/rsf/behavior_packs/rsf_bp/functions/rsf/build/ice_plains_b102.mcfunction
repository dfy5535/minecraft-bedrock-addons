# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2150/4224 | 主题内编号: b102/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子箭塔联防碉楼 (ice_plains_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 packed_ice [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 packed_ice [] replace water
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 quartz_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 quartz_block []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 packed_ice []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 soul_lantern []
setblock ~5 ~-5 ~-2 soul_lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 bone 17
replaceitem block ~5 ~-3 ~2 slot.container 1 arrow 26
replaceitem block ~5 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-3 ~2 slot.container 3 string 8
replaceitem block ~5 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~-3 ~2 slot.container 5 snowball 18
replaceitem block ~5 ~-3 ~2 slot.container 9 cooked_salmon 11
replaceitem block ~5 ~-3 ~2 slot.container 10 packed_ice 20
replaceitem block ~5 ~-3 ~2 slot.container 11 blue_ice 13
replaceitem block ~5 ~-3 ~2 slot.container 12 coal 22
replaceitem block ~5 ~-3 ~2 slot.container 13 iron_ingot 6
replaceitem block ~5 ~-3 ~2 slot.container 14 emerald 4
loot insert ~5 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~5 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~10 ~4 packed_ice []
fill ~2 ~1 ~-4 ~7 ~10 ~4 packed_ice []
fill ~-6 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~6 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 snow []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-4 ~7 ~9 ~4 snow []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 cobblestone_wall []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 air []
setblock ~-7 ~10 ~-4 chiseled_stone_bricks []
setblock ~-7 ~11 ~-4 soul_lantern []
setblock ~-7 ~10 ~4 chiseled_stone_bricks []
setblock ~-7 ~11 ~4 soul_lantern []
setblock ~7 ~10 ~-4 chiseled_stone_bricks []
setblock ~7 ~11 ~-4 soul_lantern []
setblock ~7 ~10 ~4 chiseled_stone_bricks []
setblock ~7 ~11 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 chiseled_stone_bricks []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 chiseled_stone_bricks []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 chiseled_stone_bricks []
fill ~8 ~0 ~2 ~8 ~8 ~2 chiseled_stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-10 ~0 ~-7 ~-10 ~10 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~10 ~7 packed_ice []
setblock ~-10 ~11 ~-7 blue_ice []
setblock ~10 ~11 ~7 blue_ice []
setblock ~3 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 string 11
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_cod 10
replaceitem block ~-6 ~1 ~2 slot.container 11 cooked_salmon 11
replaceitem block ~-6 ~1 ~2 slot.container 12 packed_ice 20
replaceitem block ~-6 ~1 ~2 slot.container 13 blue_ice 13
replaceitem block ~-6 ~1 ~2 slot.container 14 coal 22
loot insert ~-6 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
