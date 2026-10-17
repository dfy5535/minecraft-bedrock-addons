# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2090/4224 | 主题内编号: b042/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·地底铁栏死斗深坑 (ice_plains_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 soul_lantern []
setblock ~4 ~-6 ~-3 soul_lantern []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-4 ~3 slot.container 1 snowball 18
replaceitem block ~4 ~-4 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-4 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-4 ~3 slot.container 4 bone 17
replaceitem block ~4 ~-4 ~3 slot.container 5 arrow 26
replaceitem block ~4 ~-4 ~3 slot.container 9 cooked_salmon 14
replaceitem block ~4 ~-4 ~3 slot.container 10 packed_ice 16
replaceitem block ~4 ~-4 ~3 slot.container 11 blue_ice 9
replaceitem block ~4 ~-4 ~3 slot.container 12 coal 18
replaceitem block ~4 ~-4 ~3 slot.container 13 iron_ingot 9
replaceitem block ~4 ~-4 ~3 slot.container 14 emerald 7
loot insert ~4 ~-4 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-4 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 packed_ice []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 snow []
fill ~0 ~1 ~-5 ~0 ~2 ~5 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_stone_bricks []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_stone_bricks []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_stone_bricks []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_stone_bricks []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-9 ~10 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~10 ~8 packed_ice []
setblock ~-9 ~11 ~-8 blue_ice []
setblock ~9 ~11 ~8 blue_ice []
setblock ~0 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_salmon 14
replaceitem block ~-5 ~1 ~3 slot.container 12 packed_ice 16
replaceitem block ~-5 ~1 ~3 slot.container 13 blue_ice 9
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 18
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
