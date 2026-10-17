# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2587/4224 | 主题内编号: b027/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子连廊警戒塔楼 (river_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 oak_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 oak_planks []
fill ~2 ~1 ~-3 ~6 ~9 ~3 oak_planks []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cobblestone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-3 ~6 ~8 ~3 cobblestone []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 oak_fence []
fill ~-5 ~9 ~-2 ~5 ~9 ~2 air []
setblock ~-6 ~9 ~-3 stripped_oak_log []
setblock ~-6 ~10 ~-3 torch []
setblock ~-6 ~9 ~3 stripped_oak_log []
setblock ~-6 ~10 ~3 torch []
setblock ~6 ~9 ~-3 stripped_oak_log []
setblock ~6 ~10 ~-3 torch []
setblock ~6 ~9 ~3 stripped_oak_log []
setblock ~6 ~10 ~3 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x4x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 bone 11
replaceitem block ~5 ~1 ~1 slot.container 1 string 14
replaceitem block ~5 ~1 ~1 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~1 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~1 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 9 cooked_cod 14
replaceitem block ~5 ~1 ~1 slot.container 10 clay_ball 21
replaceitem block ~5 ~1 ~1 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~1 slot.container 12 coal 12
replaceitem block ~5 ~1 ~1 slot.container 13 fishing_rod 1
replaceitem block ~5 ~1 ~1 slot.container 14 lead 4
loot insert ~5 ~1 ~1 loot "rsf/river"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_cod 12
replaceitem block ~-5 ~1 ~2 slot.container 10 clay_ball 19
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 12 coal 17
replaceitem block ~-5 ~1 ~2 slot.container 13 fishing_rod 1
replaceitem block ~-5 ~1 ~2 slot.container 14 lead 2
loot insert ~-5 ~1 ~2 loot "rsf/river"
loot insert ~-5 ~1 ~2 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
