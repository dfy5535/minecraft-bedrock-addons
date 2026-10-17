# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2572/4224 | 主题内编号: b012/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子暗门地底宝库 (river_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-3 torch []
setblock ~4 ~-5 ~3 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 bone 8
replaceitem block ~0 ~-3 ~3 slot.container 1 string 11
replaceitem block ~0 ~-3 ~3 slot.container 2 slime_ball 8
replaceitem block ~0 ~-3 ~3 slot.container 3 ink_sac 11
replaceitem block ~0 ~-3 ~3 slot.container 4 gunpowder 10
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-3 ~3 slot.container 10 lead 2
replaceitem block ~0 ~-3 ~3 slot.container 11 bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 12 boat 1
replaceitem block ~0 ~-3 ~3 slot.container 13 lantern 7
replaceitem block ~0 ~-3 ~3 slot.container 14 cooked_salmon 14
loot insert ~0 ~-3 ~3 loot "rsf/river"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 mossy_cobblestone []
fill ~2 ~1 ~-4 ~7 ~6 ~4 mossy_cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 spruce_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~6 ~-5 ~-8 ~6 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~8 ~6 ~-5 ~8 ~6 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-7 ~7 ~-4 ~-7 ~7 ~4 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-4 ~7 ~7 ~4 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_brick_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~8 ~-1 ~-1 ~8 ~6 ~1 spruce_planks []
setblock ~8 ~5 ~0 barrel ["facing_direction"=1]
setblock ~8 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 prismarine []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 14
replaceitem block ~-6 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 2 ink_sac 14
replaceitem block ~-6 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 9 lead 5
replaceitem block ~-6 ~1 ~2 slot.container 10 bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 11 boat 1
replaceitem block ~-6 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-6 ~1 ~2 slot.container 13 cooked_salmon 10
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_cod 11
loot insert ~-6 ~1 ~2 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
