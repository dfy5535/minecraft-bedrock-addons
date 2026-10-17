# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2583/4224 | 主题内编号: b023/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双层露台阁楼宝室 (river_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 oak_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 oak_planks [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gunpowder 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 nautilus_shell 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 string 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 cooked_cod 14
replaceitem block ~-3 ~-3 ~2 slot.container 10 clay_ball 21
replaceitem block ~-3 ~-3 ~2 slot.container 11 iron_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 12 coal 12
replaceitem block ~-3 ~-3 ~2 slot.container 13 fishing_rod 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 lead 4
loot insert ~-3 ~-3 ~2 loot "rsf/river"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~3 ~5 oak_planks []
fill ~-4 ~1 ~-4 ~4 ~2 ~4 air []
fill ~-6 ~3 ~-6 ~6 ~3 ~6 oak_slab []
fill ~-4 ~4 ~-4 ~4 ~7 ~4 mossy_cobblestone []
fill ~-3 ~4 ~-3 ~3 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 oak_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 mossy_cobblestone []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 mossy_cobblestone []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~6 ~-1 ~-1 ~6 ~7 ~1 spruce_planks []
setblock ~6 ~6 ~0 barrel ["facing_direction"=1]
setblock ~6 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 3 nautilus_shell 3
replaceitem block ~4 ~1 ~3 slot.container 4 bone 11
replaceitem block ~4 ~1 ~3 slot.container 5 string 14
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~4 ~1 ~3 slot.container 10 cooked_salmon 11
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_cod 12
replaceitem block ~4 ~1 ~3 slot.container 12 clay_ball 19
replaceitem block ~4 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 14 coal 17
loot insert ~4 ~1 ~3 loot "rsf/river"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 copper_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 3 string 17
replaceitem block ~-4 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~4 slot.container 5 ink_sac 9
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_salmon 16
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_cod 10
replaceitem block ~-4 ~1 ~4 slot.container 12 clay_ball 17
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 14 coal 15
loot insert ~-4 ~1 ~4 loot "rsf/river"
loot insert ~-4 ~1 ~4 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1
