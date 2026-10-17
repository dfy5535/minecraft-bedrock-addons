# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2649/4224 | 主题内编号: b089/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·四柱挑檐祈愿凉亭 (river_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks [] replace water
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~6 ~3 spruce_planks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 spruce_slab []
fill ~-3 ~7 ~-2 ~3 ~8 ~2 stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 stone_brick_slab []
setblock ~0 ~10 ~0 barrel []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 oak_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~5 ~-1 ~-1 ~5 ~3 ~1 spruce_planks []
setblock ~5 ~2 ~0 barrel ["facing_direction"=1]
setblock ~5 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 copper_ingot 9
replaceitem block ~3 ~1 ~1 slot.container 1 nautilus_shell 3
replaceitem block ~3 ~1 ~1 slot.container 2 bone 11
replaceitem block ~3 ~1 ~1 slot.container 3 string 14
replaceitem block ~3 ~1 ~1 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 5 ink_sac 14
replaceitem block ~3 ~1 ~1 slot.container 9 bucket 1
replaceitem block ~3 ~1 ~1 slot.container 10 boat 1
replaceitem block ~3 ~1 ~1 slot.container 11 lantern 9
replaceitem block ~3 ~1 ~1 slot.container 12 cooked_salmon 16
replaceitem block ~3 ~1 ~1 slot.container 13 cooked_cod 10
replaceitem block ~3 ~1 ~1 slot.container 14 clay_ball 17
loot insert ~3 ~1 ~1 loot "rsf/river"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 1 string 17
replaceitem block ~-3 ~1 ~2 slot.container 2 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 3 ink_sac 9
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 10 boat 1
replaceitem block ~-3 ~1 ~2 slot.container 11 lantern 7
replaceitem block ~-3 ~1 ~2 slot.container 12 cooked_salmon 14
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_cod 15
replaceitem block ~-3 ~1 ~2 slot.container 14 clay_ball 22
loot insert ~-3 ~1 ~2 loot "rsf/river"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1
