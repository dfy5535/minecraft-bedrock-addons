# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2170/4224 | 主题内编号: b122/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字穹顶宏伟圣堂与墓窟 (ice_plains_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 packed_ice [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 packed_ice [] replace water
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 quartz_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 snow []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-4 ~-4 slot.container 1 snowball 18
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-4 ~-4 slot.container 3 phantom_membrane 6
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 arrow 26
replaceitem block ~0 ~-4 ~-4 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-4 ~-4 slot.container 10 emerald 7
replaceitem block ~0 ~-4 ~-4 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 lantern 10
replaceitem block ~0 ~-4 ~-4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~-4 slot.container 14 cooked_cod 9
loot insert ~0 ~-4 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-4 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~10 ~6 packed_ice []
fill ~-7 ~1 ~-2 ~7 ~10 ~2 packed_ice []
fill ~-1 ~1 ~-5 ~1 ~9 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~9 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 snow []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 packed_ice []
fill ~0 ~16 ~0 ~0 ~17 ~0 sea_lantern []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 chiseled_stone_bricks []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 chiseled_stone_bricks []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 chiseled_stone_bricks []
fill ~8 ~0 ~2 ~8 ~9 ~2 chiseled_stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x8x6) ---
fill ~-10 ~0 ~-8 ~-10 ~10 ~-8 packed_ice []
fill ~10 ~0 ~8 ~10 ~10 ~8 packed_ice []
setblock ~-10 ~11 ~-8 blue_ice []
setblock ~10 ~11 ~8 blue_ice []
setblock ~2 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 snowball 21
replaceitem block ~-6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_cod 9
replaceitem block ~-6 ~1 ~4 slot.container 11 cooked_salmon 10
replaceitem block ~-6 ~1 ~4 slot.container 12 packed_ice 19
replaceitem block ~-6 ~1 ~4 slot.container 13 blue_ice 12
replaceitem block ~-6 ~1 ~4 slot.container 14 coal 21
loot insert ~-6 ~1 ~4 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
