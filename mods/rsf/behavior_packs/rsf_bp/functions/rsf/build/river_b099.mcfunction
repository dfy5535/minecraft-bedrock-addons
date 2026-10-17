# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2659/4224 | 主题内编号: b099/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·铁闸门瓮城防御堡 (river_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 oak_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 oak_planks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 oak_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 mossy_cobblestone []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 gunpowder 10
replaceitem block ~4 ~-2 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~2 slot.container 2 copper_ingot 14
replaceitem block ~4 ~-2 ~2 slot.container 3 nautilus_shell 8
replaceitem block ~4 ~-2 ~2 slot.container 4 bone 8
replaceitem block ~4 ~-2 ~2 slot.container 5 string 11
replaceitem block ~4 ~-2 ~2 slot.container 9 cooked_cod 12
replaceitem block ~4 ~-2 ~2 slot.container 10 clay_ball 19
replaceitem block ~4 ~-2 ~2 slot.container 11 iron_ingot 10
replaceitem block ~4 ~-2 ~2 slot.container 12 coal 17
replaceitem block ~4 ~-2 ~2 slot.container 13 fishing_rod 1
replaceitem block ~4 ~-2 ~2 slot.container 14 lead 2
loot insert ~4 ~-2 ~2 loot "rsf/river"
loot insert ~4 ~-2 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 oak_planks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 cobblestone []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 oak_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 stripped_oak_log []
setblock ~-6 ~8 ~-4 torch []
setblock ~-6 ~7 ~4 stripped_oak_log []
setblock ~-6 ~8 ~4 torch []
setblock ~6 ~7 ~-4 stripped_oak_log []
setblock ~6 ~8 ~-4 torch []
setblock ~6 ~7 ~4 stripped_oak_log []
setblock ~6 ~8 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 bone 11
replaceitem block ~5 ~1 ~2 slot.container 1 string 14
replaceitem block ~5 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~2 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 9 bucket 1
replaceitem block ~5 ~1 ~2 slot.container 10 boat 1
replaceitem block ~5 ~1 ~2 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~2 slot.container 12 cooked_salmon 12
replaceitem block ~5 ~1 ~2 slot.container 13 cooked_cod 13
replaceitem block ~5 ~1 ~2 slot.container 14 clay_ball 20
loot insert ~5 ~1 ~2 loot "rsf/river"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~3 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 9 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 10 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_salmon 10
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~-5 ~1 ~3 slot.container 14 clay_ball 18
loot insert ~-5 ~1 ~3 loot "rsf/river"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
