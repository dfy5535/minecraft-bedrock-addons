# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2635/4224 | 主题内编号: b075/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·远古巨石环廊法阵 (river_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mossy_cobblestone []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cobblestone []
setblock ~0 ~-5 ~0 prismarine []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~-4 slot.container 1 ink_sac 11
replaceitem block ~0 ~-2 ~-4 slot.container 2 gunpowder 10
replaceitem block ~0 ~-2 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~-4 slot.container 4 copper_ingot 14
replaceitem block ~0 ~-2 ~-4 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-2 ~-4 slot.container 9 cooked_cod 16
replaceitem block ~0 ~-2 ~-4 slot.container 10 clay_ball 16
replaceitem block ~0 ~-2 ~-4 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-2 ~-4 slot.container 12 coal 14
replaceitem block ~0 ~-2 ~-4 slot.container 13 fishing_rod 1
replaceitem block ~0 ~-2 ~-4 slot.container 14 lead 6
loot insert ~0 ~-2 ~-4 loot "rsf/river"
loot insert ~0 ~-2 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 stripped_oak_log []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 stripped_oak_log []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 stripped_oak_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 stripped_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 stripped_oak_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 stripped_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 stripped_oak_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 stripped_oak_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 stripped_oak_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 stripped_oak_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 stripped_oak_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 stripped_oak_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 stripped_oak_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 stripped_oak_log []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 stripped_oak_log []
fill ~7 ~1 ~6 ~7 ~5 ~6 stripped_oak_log []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 stripped_oak_log []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 stripped_oak_log []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 stripped_oak_log []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 stripped_oak_log []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 stripped_oak_log []
fill ~7 ~1 ~0 ~7 ~5 ~0 stripped_oak_log []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 stripped_oak_log []
fill ~7 ~1 ~2 ~7 ~5 ~2 stripped_oak_log []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 stripped_oak_log []
fill ~7 ~1 ~4 ~7 ~5 ~4 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 spruce_planks []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 spruce_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 spruce_log []
setblock ~-6 ~8 ~-4 lantern []
setblock ~-6 ~7 ~4 spruce_log []
setblock ~-6 ~8 ~4 lantern []
setblock ~6 ~7 ~-4 spruce_log []
setblock ~6 ~8 ~-4 lantern []
setblock ~6 ~7 ~4 spruce_log []
setblock ~6 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_oak_log []
setblock ~0 ~4 ~-8 prismarine []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_oak_log []
setblock ~0 ~4 ~8 prismarine []
setblock ~0 ~5 ~8 torch []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stripped_oak_log []
setblock ~-9 ~4 ~0 prismarine []
setblock ~-9 ~5 ~0 torch []
fill ~9 ~0 ~0 ~9 ~3 ~0 stripped_oak_log []
setblock ~9 ~4 ~0 prismarine []
setblock ~9 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~-1 ~-1 ~8 ~4 ~1 spruce_planks []
setblock ~8 ~3 ~0 barrel ["facing_direction"=1]
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 11
replaceitem block ~6 ~1 ~4 slot.container 1 string 14
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 ink_sac 14
replaceitem block ~6 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~6 ~1 ~4 slot.container 10 lead 6
replaceitem block ~6 ~1 ~4 slot.container 11 bucket 1
replaceitem block ~6 ~1 ~4 slot.container 12 boat 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_salmon 11
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ink_sac 9
replaceitem block ~-6 ~1 ~5 slot.container 2 gunpowder 8
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 copper_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 5 nautilus_shell 6
replaceitem block ~-6 ~1 ~5 slot.container 9 fishing_rod 1
replaceitem block ~-6 ~1 ~5 slot.container 10 lead 4
replaceitem block ~-6 ~1 ~5 slot.container 11 bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 12 boat 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_salmon 16
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
