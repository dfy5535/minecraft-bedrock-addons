# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2615/4224 | 主题内编号: b055/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·木栅栏防御拓荒哨所 (river_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 8
replaceitem block ~4 ~-2 ~3 slot.container 1 string 11
replaceitem block ~4 ~-2 ~3 slot.container 2 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 3 ink_sac 11
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 10
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_salmon 11
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_cod 12
replaceitem block ~4 ~-2 ~3 slot.container 12 clay_ball 19
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 14 coal 17
loot insert ~4 ~-2 ~3 loot "rsf/river"
loot insert ~4 ~-2 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~7 ~-4 cobblestone []
setblock ~-6 ~8 ~-5 torch []
fill ~-6 ~1 ~4 ~-5 ~7 ~5 cobblestone []
setblock ~-6 ~8 ~4 torch []
fill ~5 ~1 ~-5 ~6 ~7 ~-4 cobblestone []
setblock ~5 ~8 ~-5 torch []
fill ~5 ~1 ~4 ~6 ~7 ~5 cobblestone []
setblock ~5 ~8 ~4 torch []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 cobblestone []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 oak_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 stripped_oak_log []
setblock ~-6 ~7 ~-5 torch []
setblock ~-6 ~6 ~5 stripped_oak_log []
setblock ~-6 ~7 ~5 torch []
setblock ~6 ~6 ~-5 stripped_oak_log []
setblock ~6 ~7 ~-5 torch []
setblock ~6 ~6 ~5 stripped_oak_log []
setblock ~6 ~7 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 copper_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 3 nautilus_shell 3
replaceitem block ~5 ~1 ~3 slot.container 4 bone 11
replaceitem block ~5 ~1 ~3 slot.container 5 string 14
replaceitem block ~5 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~5 ~1 ~3 slot.container 10 lead 7
replaceitem block ~5 ~1 ~3 slot.container 11 bucket 1
replaceitem block ~5 ~1 ~3 slot.container 12 boat 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 3 string 17
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 5 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lead 5
replaceitem block ~-5 ~1 ~4 slot.container 11 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 12 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_salmon 10
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
