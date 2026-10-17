# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2657/4224 | 主题内编号: b097/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·八角射击孔防御棱堡 (river_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 1 ink_sac 11
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 10
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 4 copper_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~4 ~-2 ~3 slot.container 9 fishing_rod 1
replaceitem block ~4 ~-2 ~3 slot.container 10 lead 3
replaceitem block ~4 ~-2 ~3 slot.container 11 bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 12 boat 1
replaceitem block ~4 ~-2 ~3 slot.container 13 lantern 8
replaceitem block ~4 ~-2 ~3 slot.container 14 cooked_salmon 15
loot insert ~4 ~-2 ~3 loot "rsf/river"
loot insert ~4 ~-2 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 lantern []
setblock ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 lantern []
setblock ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 lantern []
setblock ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 1 nautilus_shell 3
replaceitem block ~5 ~1 ~3 slot.container 2 bone 11
replaceitem block ~5 ~1 ~3 slot.container 3 string 14
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_cod 14
replaceitem block ~5 ~1 ~3 slot.container 10 clay_ball 21
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 12 coal 12
replaceitem block ~5 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~5 ~1 ~3 slot.container 14 lead 4
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 string 17
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 3 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_cod 12
replaceitem block ~-5 ~1 ~4 slot.container 10 clay_ball 19
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lead 2
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
