# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2687/4224 | 主题内编号: b127/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·万神殿巨型穹顶与试炼宫 (river_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-5 ~-5 ~-4 torch []
setblock ~5 ~-5 ~4 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 gunpowder 10
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 2 copper_ingot 14
replaceitem block ~0 ~-3 ~4 slot.container 3 nautilus_shell 8
replaceitem block ~0 ~-3 ~4 slot.container 4 bone 8
replaceitem block ~0 ~-3 ~4 slot.container 5 string 11
replaceitem block ~0 ~-3 ~4 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-3 ~4 slot.container 10 coal 16
replaceitem block ~0 ~-3 ~4 slot.container 11 fishing_rod 1
replaceitem block ~0 ~-3 ~4 slot.container 12 lead 8
replaceitem block ~0 ~-3 ~4 slot.container 13 bucket 1
replaceitem block ~0 ~-3 ~4 slot.container 14 boat 1
loot insert ~0 ~-3 ~4 loot "rsf/river"
loot insert ~0 ~-3 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 stripped_oak_log []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 stripped_oak_log []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_oak_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 stripped_oak_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 stripped_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 stripped_oak_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 stripped_oak_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 stripped_oak_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 stripped_oak_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 stripped_oak_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 stripped_oak_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_oak_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_oak_log []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 stripped_oak_log []
fill ~7 ~1 ~6 ~7 ~6 ~6 stripped_oak_log []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 stripped_oak_log []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 stripped_oak_log []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 stripped_oak_log []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 stripped_oak_log []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 stripped_oak_log []
fill ~7 ~1 ~0 ~7 ~6 ~0 stripped_oak_log []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 stripped_oak_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 stripped_oak_log []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 stripped_oak_log []
fill ~7 ~1 ~4 ~7 ~6 ~4 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 glass []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 spruce_log []
setblock ~-8 ~4 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 spruce_log []
setblock ~-8 ~4 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 spruce_log []
setblock ~8 ~4 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 spruce_log []
setblock ~8 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~-1 ~-1 ~8 ~6 ~1 spruce_planks []
setblock ~8 ~5 ~0 barrel ["facing_direction"=1]
setblock ~8 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 chiseled_stone_bricks []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 copper_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 3 nautilus_shell 3
replaceitem block ~6 ~1 ~4 slot.container 4 bone 11
replaceitem block ~6 ~1 ~4 slot.container 5 string 14
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_cod 16
replaceitem block ~6 ~1 ~4 slot.container 10 clay_ball 16
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 12 coal 14
replaceitem block ~6 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~6 ~1 ~4 slot.container 14 lead 6
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 copper_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 1 nautilus_shell 6
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 3 string 17
replaceitem block ~-6 ~1 ~5 slot.container 4 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 5 ink_sac 9
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_cod 14
replaceitem block ~-6 ~1 ~5 slot.container 10 clay_ball 21
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 12 coal 12
replaceitem block ~-6 ~1 ~5 slot.container 13 fishing_rod 1
replaceitem block ~-6 ~1 ~5 slot.container 14 lead 4
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
