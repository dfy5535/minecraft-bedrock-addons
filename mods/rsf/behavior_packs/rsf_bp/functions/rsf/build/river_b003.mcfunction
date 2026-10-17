# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2563/4224 | 主题内编号: b003/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·环柱巨石方尖祭坛 (river_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 stripped_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 stripped_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 stripped_oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 stripped_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 stripped_oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 stripped_oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 stripped_oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 stripped_oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 stripped_oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 stripped_oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 stripped_oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 stripped_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 stripped_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 stripped_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 stripped_oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 stripped_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 stripped_oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 stripped_oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 stripped_oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 stripped_oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 stripped_oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 oak_planks []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~-1 ~-1 ~7 ~7 ~1 spruce_planks []
setblock ~7 ~6 ~0 barrel ["facing_direction"=1]
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_stone_bricks []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 14
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 10 cooked_salmon 12
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_cod 13
replaceitem block ~5 ~1 ~3 slot.container 12 clay_ball 20
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 14 coal 18
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_salmon 10
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_cod 11
replaceitem block ~-5 ~1 ~4 slot.container 12 clay_ball 18
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 14 coal 16
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
