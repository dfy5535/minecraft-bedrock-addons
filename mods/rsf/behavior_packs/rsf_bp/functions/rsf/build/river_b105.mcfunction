# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2665/4224 | 主题内编号: b105/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·满书架奥术附魔书院 (river_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 spruce_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 spruce_planks [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 slime_ball 8
replaceitem block ~3 ~-2 ~3 slot.container 1 ink_sac 11
replaceitem block ~3 ~-2 ~3 slot.container 2 gunpowder 10
replaceitem block ~3 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-2 ~3 slot.container 4 copper_ingot 14
replaceitem block ~3 ~-2 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~3 ~-2 ~3 slot.container 9 lantern 5
replaceitem block ~3 ~-2 ~3 slot.container 10 cooked_salmon 12
replaceitem block ~3 ~-2 ~3 slot.container 11 cooked_cod 13
replaceitem block ~3 ~-2 ~3 slot.container 12 clay_ball 20
replaceitem block ~3 ~-2 ~3 slot.container 13 iron_ingot 11
replaceitem block ~3 ~-2 ~3 slot.container 14 coal 18
loot insert ~3 ~-2 ~3 loot "rsf/river"
loot insert ~3 ~-2 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 spruce_planks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 spruce_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 spruce_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 spruce_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 oak_log []
setblock ~-7 ~4 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 oak_log []
setblock ~-7 ~4 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 oak_log []
setblock ~7 ~4 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~3 ~6 oak_log []
setblock ~7 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 1 nautilus_shell 3
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 string 14
replaceitem block ~4 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~3 slot.container 10 lead 8
replaceitem block ~4 ~1 ~3 slot.container 11 bucket 1
replaceitem block ~4 ~1 ~3 slot.container 12 boat 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~3 slot.container 14 cooked_salmon 13
loot insert ~4 ~1 ~3 loot "rsf/river"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 1 string 17
replaceitem block ~-4 ~1 ~4 slot.container 2 slime_ball 6
replaceitem block ~-4 ~1 ~4 slot.container 3 ink_sac 9
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~-4 ~1 ~4 slot.container 10 lead 6
replaceitem block ~-4 ~1 ~4 slot.container 11 bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 12 boat 1
replaceitem block ~-4 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~-4 ~1 ~4 slot.container 14 cooked_salmon 11
loot insert ~-4 ~1 ~4 loot "rsf/river"
loot insert ~-4 ~1 ~4 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
