# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2643/4224 | 主题内编号: b083/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·铁砧锻造与模具工坊 (river_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 gunpowder 10
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 2 copper_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~4 ~-2 ~3 slot.container 4 bone 8
replaceitem block ~4 ~-2 ~3 slot.container 5 string 11
replaceitem block ~4 ~-2 ~3 slot.container 9 fishing_rod 1
replaceitem block ~4 ~-2 ~3 slot.container 10 lead 6
replaceitem block ~4 ~-2 ~3 slot.container 11 bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 12 boat 1
replaceitem block ~4 ~-2 ~3 slot.container 13 lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 14 cooked_salmon 11
loot insert ~4 ~-2 ~3 loot "rsf/river"
loot insert ~4 ~-2 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 oak_planks []
fill ~-6 ~1 ~0 ~6 ~4 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 oak_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 oak_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~-1 ~-1 ~7 ~7 ~1 spruce_planks []
setblock ~7 ~6 ~0 barrel ["facing_direction"=1]
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 14
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 10 cooked_salmon 15
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_cod 16
replaceitem block ~5 ~1 ~3 slot.container 12 clay_ball 16
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 14 coal 14
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_salmon 13
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_cod 14
replaceitem block ~-5 ~1 ~4 slot.container 12 clay_ball 21
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 coal 12
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1
