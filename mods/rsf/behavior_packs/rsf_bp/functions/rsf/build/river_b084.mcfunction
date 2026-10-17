# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2644/4224 | 主题内编号: b084/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·露天采石场与矿道库 (river_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 torch []
setblock ~4 ~-5 ~0 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~3 slot.container 1 ink_sac 11
replaceitem block ~0 ~-3 ~3 slot.container 2 gunpowder 10
replaceitem block ~0 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 4 copper_ingot 14
replaceitem block ~0 ~-3 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-3 ~3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-3 ~3 slot.container 10 lead 6
replaceitem block ~0 ~-3 ~3 slot.container 11 bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 12 boat 1
replaceitem block ~0 ~-3 ~3 slot.container 13 lantern 4
replaceitem block ~0 ~-3 ~3 slot.container 14 cooked_salmon 11
loot insert ~0 ~-3 ~3 loot "rsf/river"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecksupply"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 slime_ball 6
replaceitem block ~0 ~-3 ~-3 slot.container 1 ink_sac 9
replaceitem block ~0 ~-3 ~-3 slot.container 2 gunpowder 8
replaceitem block ~0 ~-3 ~-3 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-3 slot.container 4 copper_ingot 12
replaceitem block ~0 ~-3 ~-3 slot.container 5 nautilus_shell 6
replaceitem block ~0 ~-3 ~-3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-3 ~-3 slot.container 10 lead 5
replaceitem block ~0 ~-3 ~-3 slot.container 11 bucket 1
replaceitem block ~0 ~-3 ~-3 slot.container 12 boat 1
replaceitem block ~0 ~-3 ~-3 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-3 slot.container 14 cooked_salmon 10
loot insert ~0 ~-3 ~-3 loot "rsf/river"
loot insert ~0 ~-3 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~4 ~-5 ~-6 ~6 ~-5 spruce_log []
setblock ~-6 ~7 ~-5 lantern []
fill ~-6 ~4 ~5 ~-6 ~6 ~5 spruce_log []
setblock ~-6 ~7 ~5 lantern []
fill ~6 ~4 ~-5 ~6 ~6 ~-5 spruce_log []
setblock ~6 ~7 ~-5 lantern []
fill ~6 ~4 ~5 ~6 ~6 ~5 spruce_log []
setblock ~6 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 14
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 21
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 12
replaceitem block ~-5 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lead 4
replaceitem block ~-5 ~1 ~3 slot.container 14 bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
