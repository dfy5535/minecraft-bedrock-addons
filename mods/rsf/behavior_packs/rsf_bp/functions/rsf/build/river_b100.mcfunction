# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2660/4224 | 主题内编号: b100/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·半地下暗堡火力点 (river_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 1 copper_ingot 14
replaceitem block ~3 ~-4 ~2 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~-4 ~2 slot.container 3 bone 8
replaceitem block ~3 ~-4 ~2 slot.container 4 string 11
replaceitem block ~3 ~-4 ~2 slot.container 5 slime_ball 8
replaceitem block ~3 ~-4 ~2 slot.container 9 lead 8
replaceitem block ~3 ~-4 ~2 slot.container 10 bucket 1
replaceitem block ~3 ~-4 ~2 slot.container 11 boat 1
replaceitem block ~3 ~-4 ~2 slot.container 12 lantern 6
replaceitem block ~3 ~-4 ~2 slot.container 13 cooked_salmon 13
replaceitem block ~3 ~-4 ~2 slot.container 14 cooked_cod 14
loot insert ~3 ~-4 ~2 loot "rsf/river"
loot insert ~3 ~-4 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 mossy_cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-4 ~5 ~4 ~4 spruce_planks []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 spruce_fence []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 air []
setblock ~-5 ~5 ~-4 spruce_log []
setblock ~-5 ~6 ~-4 lantern []
setblock ~-5 ~5 ~4 spruce_log []
setblock ~-5 ~6 ~4 lantern []
setblock ~5 ~5 ~-4 spruce_log []
setblock ~5 ~6 ~-4 lantern []
setblock ~5 ~5 ~4 spruce_log []
setblock ~5 ~6 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 prismarine []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 14
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_salmon 10
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_cod 11
replaceitem block ~-4 ~1 ~2 slot.container 11 clay_ball 18
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 13 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 14 fishing_rod 1
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-4 ~0
