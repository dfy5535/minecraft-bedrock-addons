# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2582/4224 | 主题内编号: b022/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·廊柱书库秘藏室 (river_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 8
replaceitem block ~4 ~-3 ~3 slot.container 2 string 11
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 4 ink_sac 11
replaceitem block ~4 ~-3 ~3 slot.container 5 gunpowder 10
replaceitem block ~4 ~-3 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_cod 13
replaceitem block ~4 ~-3 ~3 slot.container 11 clay_ball 20
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 13 coal 18
replaceitem block ~4 ~-3 ~3 slot.container 14 fishing_rod 1
loot insert ~4 ~-3 ~3 loot "rsf/river"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~5 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~5 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~5 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 lead 8
replaceitem block ~-5 ~1 ~3 slot.container 10 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 13
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 14
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0
