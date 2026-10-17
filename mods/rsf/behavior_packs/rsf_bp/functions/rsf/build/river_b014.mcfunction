# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2574/4224 | 主题内编号: b014/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·暗渠蓄水池秘境地牢 (river_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 6格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 string 11
replaceitem block ~5 ~-4 ~4 slot.container 1 slime_ball 8
replaceitem block ~5 ~-4 ~4 slot.container 2 ink_sac 11
replaceitem block ~5 ~-4 ~4 slot.container 3 gunpowder 10
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~-4 ~4 slot.container 5 copper_ingot 14
replaceitem block ~5 ~-4 ~4 slot.container 9 cooked_salmon 16
replaceitem block ~5 ~-4 ~4 slot.container 10 cooked_cod 10
replaceitem block ~5 ~-4 ~4 slot.container 11 clay_ball 17
replaceitem block ~5 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~5 ~-4 ~4 slot.container 13 coal 15
replaceitem block ~5 ~-4 ~4 slot.container 14 fishing_rod 1
loot insert ~5 ~-4 ~4 loot "rsf/river"
loot insert ~5 ~-4 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 21
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 12
replaceitem block ~-5 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lead 4
replaceitem block ~-5 ~1 ~3 slot.container 14 bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
