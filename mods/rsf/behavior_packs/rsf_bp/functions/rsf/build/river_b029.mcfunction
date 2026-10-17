# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2589/4224 | 主题内编号: b029/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·奥术星象琉璃塔 (river_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cobblestone []
setblock ~0 ~-5 ~0 prismarine []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~-3 slot.container 1 ink_sac 11
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 10
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 copper_ingot 14
replaceitem block ~0 ~-2 ~-3 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-2 ~-3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 lead 7
replaceitem block ~0 ~-2 ~-3 slot.container 11 bucket 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 boat 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 lantern 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 cooked_salmon 12
loot insert ~0 ~-2 ~-3 loot "rsf/river"
loot insert ~0 ~-2 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 sea_lantern []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 sea_lantern []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 sea_lantern []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 sea_lantern []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~-1 ~-1 ~6 ~3 ~1 spruce_planks []
setblock ~6 ~2 ~0 barrel ["facing_direction"=1]
setblock ~6 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 5 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 9 bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 boat 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 5
replaceitem block ~4 ~1 ~2 slot.container 12 cooked_salmon 12
replaceitem block ~4 ~1 ~2 slot.container 13 cooked_cod 13
replaceitem block ~4 ~1 ~2 slot.container 14 clay_ball 20
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 3 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 5 string 17
replaceitem block ~-4 ~1 ~3 slot.container 9 bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 boat 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_salmon 10
replaceitem block ~-4 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~-4 ~1 ~3 slot.container 14 clay_ball 18
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1
