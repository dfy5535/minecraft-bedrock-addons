# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2128/4224 | 主题内编号: b080/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·悬灯祈福图腾花坛 (ice_plains_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blue_ice [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blue_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 blue_ice []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 snow []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 snow []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 diamond_block []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 quartz_block []
setblock ~0 ~4 ~-6 blue_ice []
setblock ~0 ~5 ~-6 soul_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 quartz_block []
setblock ~0 ~4 ~6 blue_ice []
setblock ~0 ~5 ~6 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 quartz_block []
setblock ~-7 ~4 ~0 blue_ice []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 quartz_block []
setblock ~7 ~4 ~0 blue_ice []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-6 ~-8 ~8 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~8 ~6 packed_ice []
setblock ~-8 ~9 ~-6 blue_ice []
setblock ~8 ~9 ~6 blue_ice []
setblock ~-1 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 9 blue_ice 8
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 17
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 9
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
