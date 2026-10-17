# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2130/4224 | 主题内编号: b082/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·竖井井架矿工物资站 (ice_plains_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 6格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 packed_ice [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 packed_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 packed_ice []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 soul_lantern []
setblock ~3 ~-7 ~-2 soul_lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-5 ~2 slot.container 1 snowball 18
replaceitem block ~3 ~-5 ~2 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-5 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-5 ~2 slot.container 4 bone 17
replaceitem block ~3 ~-5 ~2 slot.container 5 arrow 26
replaceitem block ~3 ~-5 ~2 slot.container 9 cooked_salmon 12
replaceitem block ~3 ~-5 ~2 slot.container 10 packed_ice 21
replaceitem block ~3 ~-5 ~2 slot.container 11 blue_ice 14
replaceitem block ~3 ~-5 ~2 slot.container 12 coal 16
replaceitem block ~3 ~-5 ~2 slot.container 13 iron_ingot 7
replaceitem block ~3 ~-5 ~2 slot.container 14 emerald 5
loot insert ~3 ~-5 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-5 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 packed_ice []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 quartz_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 snow []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 packed_ice []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-8 ~0 ~-5 ~-8 ~10 ~-5 packed_ice []
fill ~8 ~0 ~5 ~8 ~10 ~5 packed_ice []
setblock ~-8 ~11 ~-5 blue_ice []
setblock ~8 ~11 ~5 blue_ice []
setblock ~1 ~8 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_cod 11
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_salmon 12
replaceitem block ~-4 ~1 ~2 slot.container 12 packed_ice 21
replaceitem block ~-4 ~1 ~2 slot.container 13 blue_ice 14
replaceitem block ~-4 ~1 ~2 slot.container 14 coal 16
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
