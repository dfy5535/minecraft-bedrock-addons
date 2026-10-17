# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2682/4224 | 主题内编号: b122/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·十字穹顶宏伟圣堂与墓窟 (river_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_stone_bricks []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 string 11
replaceitem block ~0 ~-4 ~-4 slot.container 1 slime_ball 8
replaceitem block ~0 ~-4 ~-4 slot.container 2 ink_sac 11
replaceitem block ~0 ~-4 ~-4 slot.container 3 gunpowder 10
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 copper_ingot 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 clay_ball 20
replaceitem block ~0 ~-4 ~-4 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-4 ~-4 slot.container 11 coal 18
replaceitem block ~0 ~-4 ~-4 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 lead 3
replaceitem block ~0 ~-4 ~-4 slot.container 14 bucket 1
loot insert ~0 ~-4 ~-4 loot "rsf/river"
loot insert ~0 ~-4 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 sea_lantern []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~-1 ~-1 ~8 ~6 ~1 spruce_planks []
setblock ~8 ~5 ~0 barrel ["facing_direction"=1]
setblock ~8 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 2 string 14
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 ink_sac 14
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~4 slot.container 9 lead 3
replaceitem block ~-6 ~1 ~4 slot.container 10 bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-6 ~1 ~4 slot.container 13 cooked_salmon 15
replaceitem block ~-6 ~1 ~4 slot.container 14 cooked_cod 16
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
