# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2680/4224 | 主题内编号: b120/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·引水渠跨桥水培温室 (river_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-5 ~7 ~7 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 campfire []
setblock ~5 ~-7 ~0 campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 1 copper_ingot 14
replaceitem block ~0 ~-5 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-5 ~4 slot.container 3 bone 8
replaceitem block ~0 ~-5 ~4 slot.container 4 string 11
replaceitem block ~0 ~-5 ~4 slot.container 5 slime_ball 8
replaceitem block ~0 ~-5 ~4 slot.container 9 clay_ball 16
replaceitem block ~0 ~-5 ~4 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-5 ~4 slot.container 11 coal 14
replaceitem block ~0 ~-5 ~4 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-5 ~4 slot.container 13 lead 6
replaceitem block ~0 ~-5 ~4 slot.container 14 bucket 1
loot insert ~0 ~-5 ~4 loot "rsf/river"
loot insert ~0 ~-5 ~4 loot "chests/shipwrecksupply"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 copper_ingot 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 nautilus_shell 6
replaceitem block ~0 ~-5 ~-4 slot.container 3 bone 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 string 17
replaceitem block ~0 ~-5 ~-4 slot.container 5 slime_ball 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 clay_ball 22
replaceitem block ~0 ~-5 ~-4 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-5 ~-4 slot.container 11 coal 13
replaceitem block ~0 ~-5 ~-4 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 lead 5
replaceitem block ~0 ~-5 ~-4 slot.container 14 bucket 1
loot insert ~0 ~-5 ~-4 loot "rsf/river"
loot insert ~0 ~-5 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~5 ~4 mossy_cobblestone []
fill ~-5 ~1 ~-3 ~5 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-4 ~6 ~5 ~4 spruce_planks []
fill ~-5 ~6 ~-3 ~5 ~7 ~3 glass []
fill ~-4 ~6 ~-2 ~4 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 2 nautilus_shell 3
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 4 string 14
replaceitem block ~-5 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_salmon 16
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_cod 10
replaceitem block ~-5 ~1 ~2 slot.container 11 clay_ball 17
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~2 slot.container 13 coal 15
replaceitem block ~-5 ~1 ~2 slot.container 14 fishing_rod 1
loot insert ~-5 ~1 ~2 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
