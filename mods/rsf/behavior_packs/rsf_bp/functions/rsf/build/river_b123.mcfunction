# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2683/4224 | 主题内编号: b123/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·四角塔楼领主城堡复合体 (river_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 torch []
setblock ~5 ~-5 ~-4 torch []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 slime_ball 8
replaceitem block ~5 ~-3 ~4 slot.container 1 ink_sac 11
replaceitem block ~5 ~-3 ~4 slot.container 2 gunpowder 10
replaceitem block ~5 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 4 copper_ingot 14
replaceitem block ~5 ~-3 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~5 ~-3 ~4 slot.container 9 cooked_cod 14
replaceitem block ~5 ~-3 ~4 slot.container 10 clay_ball 21
replaceitem block ~5 ~-3 ~4 slot.container 11 iron_ingot 12
replaceitem block ~5 ~-3 ~4 slot.container 12 coal 12
replaceitem block ~5 ~-3 ~4 slot.container 13 fishing_rod 1
replaceitem block ~5 ~-3 ~4 slot.container 14 lead 4
loot insert ~5 ~-3 ~4 loot "rsf/river"
loot insert ~5 ~-3 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 oak_planks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 cobblestone []
setblock ~-7 ~10 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 cobblestone []
setblock ~-7 ~10 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 cobblestone []
setblock ~6 ~10 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~9 ~6 cobblestone []
setblock ~6 ~10 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 oak_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 stripped_oak_log []
setblock ~-7 ~9 ~-6 torch []
setblock ~-7 ~8 ~6 stripped_oak_log []
setblock ~-7 ~9 ~6 torch []
setblock ~7 ~8 ~-6 stripped_oak_log []
setblock ~7 ~9 ~-6 torch []
setblock ~7 ~8 ~6 stripped_oak_log []
setblock ~7 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~-1 ~-1 ~8 ~7 ~1 spruce_planks []
setblock ~8 ~6 ~0 barrel ["facing_direction"=1]
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 11
replaceitem block ~6 ~1 ~4 slot.container 1 string 14
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 ink_sac 14
replaceitem block ~6 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 10 cooked_salmon 13
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_cod 14
replaceitem block ~6 ~1 ~4 slot.container 12 clay_ball 21
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 14 coal 12
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ink_sac 9
replaceitem block ~-6 ~1 ~5 slot.container 2 gunpowder 8
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 copper_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 5 nautilus_shell 6
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 10 cooked_salmon 11
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_cod 12
replaceitem block ~-6 ~1 ~5 slot.container 12 clay_ball 19
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 14 coal 17
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
