# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2620/4224 | 主题内编号: b060/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·圆形穹顶万骨祠堂 (river_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 8
replaceitem block ~0 ~-4 ~3 slot.container 2 string 11
replaceitem block ~0 ~-4 ~3 slot.container 3 slime_ball 8
replaceitem block ~0 ~-4 ~3 slot.container 4 ink_sac 11
replaceitem block ~0 ~-4 ~3 slot.container 5 gunpowder 10
replaceitem block ~0 ~-4 ~3 slot.container 9 clay_ball 17
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 11 coal 15
replaceitem block ~0 ~-4 ~3 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-4 ~3 slot.container 13 lead 7
replaceitem block ~0 ~-4 ~3 slot.container 14 bucket 1
loot insert ~0 ~-4 ~3 loot "rsf/river"
loot insert ~0 ~-4 ~3 loot "chests/shipwrecksupply"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 nautilus_shell 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 slime_ball 6
replaceitem block ~0 ~-4 ~-3 slot.container 4 ink_sac 9
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 clay_ball 16
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 coal 14
replaceitem block ~0 ~-4 ~-3 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 lead 6
replaceitem block ~0 ~-4 ~-3 slot.container 14 bucket 1
loot insert ~0 ~-4 ~-3 loot "rsf/river"
loot insert ~0 ~-4 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~5 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~5 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~5 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 prismarine []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 14
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 11 clay_ball 20
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 13 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 14 fishing_rod 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
