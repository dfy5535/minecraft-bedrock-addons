# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2598/4224 | 主题内编号: b038/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·四方凯旋衣冠冢 (river_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 copper_ingot 14
replaceitem block ~0 ~-3 ~-2 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 11
replaceitem block ~0 ~-3 ~-2 slot.container 5 slime_ball 8
replaceitem block ~0 ~-3 ~-2 slot.container 9 cooked_salmon 14
replaceitem block ~0 ~-3 ~-2 slot.container 10 cooked_cod 15
replaceitem block ~0 ~-3 ~-2 slot.container 11 clay_ball 22
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 coal 13
replaceitem block ~0 ~-3 ~-2 slot.container 14 fishing_rod 1
loot insert ~0 ~-3 ~-2 loot "rsf/river"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~7 ~4 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-3 ~1 ~6 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cobblestone []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 mossy_stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~-1 ~-1 ~6 ~7 ~1 spruce_planks []
setblock ~6 ~6 ~0 barrel ["facing_direction"=1]
setblock ~6 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 3
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 coal 13
replaceitem block ~-4 ~1 ~2 slot.container 10 fishing_rod 1
replaceitem block ~-4 ~1 ~2 slot.container 11 lead 5
replaceitem block ~-4 ~1 ~2 slot.container 12 bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 10
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
