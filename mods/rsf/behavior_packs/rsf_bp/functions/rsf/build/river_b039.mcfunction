# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2599/4224 | 主题内编号: b039/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·永恒圣火图腾方尖塔 (river_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks [] replace water
fill ~-5 ~1 ~-4 ~5 ~11 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 oak_planks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 bone 8
replaceitem block ~2 ~-2 ~1 slot.container 1 string 11
replaceitem block ~2 ~-2 ~1 slot.container 2 slime_ball 8
replaceitem block ~2 ~-2 ~1 slot.container 3 ink_sac 11
replaceitem block ~2 ~-2 ~1 slot.container 4 gunpowder 10
replaceitem block ~2 ~-2 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-2 ~1 slot.container 9 iron_ingot 7
replaceitem block ~2 ~-2 ~1 slot.container 10 coal 14
replaceitem block ~2 ~-2 ~1 slot.container 11 fishing_rod 1
replaceitem block ~2 ~-2 ~1 slot.container 12 lead 6
replaceitem block ~2 ~-2 ~1 slot.container 13 bucket 1
replaceitem block ~2 ~-2 ~1 slot.container 14 boat 1
loot insert ~2 ~-2 ~1 loot "rsf/river"
loot insert ~2 ~-2 ~1 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 oak_planks []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 stripped_oak_log []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 stripped_oak_log []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 stripped_oak_log []
fill ~4 ~1 ~3 ~4 ~9 ~3 stripped_oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 oak_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 oak_log []
setblock ~-7 ~4 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 oak_log []
setblock ~-7 ~4 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 oak_log []
setblock ~7 ~4 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~3 ~6 oak_log []
setblock ~7 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 5x4x2) ---
fill ~5 ~-1 ~-1 ~5 ~3 ~1 spruce_planks []
setblock ~5 ~2 ~0 barrel ["facing_direction"=1]
setblock ~5 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 gunpowder 13
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 copper_ingot 9
replaceitem block ~3 ~1 ~1 slot.container 3 nautilus_shell 3
replaceitem block ~3 ~1 ~1 slot.container 4 bone 11
replaceitem block ~3 ~1 ~1 slot.container 5 string 14
replaceitem block ~3 ~1 ~1 slot.container 9 bucket 1
replaceitem block ~3 ~1 ~1 slot.container 10 boat 1
replaceitem block ~3 ~1 ~1 slot.container 11 lantern 8
replaceitem block ~3 ~1 ~1 slot.container 12 cooked_salmon 15
replaceitem block ~3 ~1 ~1 slot.container 13 cooked_cod 16
replaceitem block ~3 ~1 ~1 slot.container 14 clay_ball 16
loot insert ~3 ~1 ~1 loot "rsf/river"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 copper_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 1 nautilus_shell 6
replaceitem block ~-3 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 3 string 17
replaceitem block ~-3 ~1 ~2 slot.container 4 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 5 ink_sac 9
replaceitem block ~-3 ~1 ~2 slot.container 9 bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 10 boat 1
replaceitem block ~-3 ~1 ~2 slot.container 11 lantern 6
replaceitem block ~-3 ~1 ~2 slot.container 12 cooked_salmon 13
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_cod 14
replaceitem block ~-3 ~1 ~2 slot.container 14 clay_ball 21
loot insert ~-3 ~1 ~2 loot "rsf/river"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
