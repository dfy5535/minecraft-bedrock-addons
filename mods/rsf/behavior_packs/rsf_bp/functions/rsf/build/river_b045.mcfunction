# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2605/4224 | 主题内编号: b045/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·十二柱神殿试炼场 (river_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 barrel []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~4 slot.container 1 ink_sac 11
replaceitem block ~0 ~-2 ~4 slot.container 2 gunpowder 10
replaceitem block ~0 ~-2 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 4 copper_ingot 14
replaceitem block ~0 ~-2 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-2 ~4 slot.container 9 bucket 1
replaceitem block ~0 ~-2 ~4 slot.container 10 boat 1
replaceitem block ~0 ~-2 ~4 slot.container 11 lantern 4
replaceitem block ~0 ~-2 ~4 slot.container 12 cooked_salmon 11
replaceitem block ~0 ~-2 ~4 slot.container 13 cooked_cod 12
replaceitem block ~0 ~-2 ~4 slot.container 14 clay_ball 19
loot insert ~0 ~-2 ~4 loot "rsf/river"
loot insert ~0 ~-2 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 spruce_log []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 spruce_log []
fill ~7 ~1 ~6 ~7 ~5 ~6 spruce_log []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 spruce_log []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 spruce_log []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 spruce_log []
fill ~7 ~1 ~0 ~7 ~5 ~0 spruce_log []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~1 ~2 ~7 ~5 ~2 spruce_log []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 spruce_log []
fill ~7 ~1 ~4 ~7 ~5 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 spruce_log []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 spruce_log []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 spruce_log []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 spruce_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~-1 ~-1 ~8 ~4 ~1 spruce_planks []
setblock ~8 ~3 ~0 barrel ["facing_direction"=1]
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 barrel []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 copper_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~6 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~6 ~1 ~4 slot.container 10 lead 4
replaceitem block ~6 ~1 ~4 slot.container 11 bucket 1
replaceitem block ~6 ~1 ~4 slot.container 12 boat 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_salmon 16
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 8
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 copper_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 5 string 17
replaceitem block ~-6 ~1 ~5 slot.container 9 fishing_rod 1
replaceitem block ~-6 ~1 ~5 slot.container 10 lead 2
replaceitem block ~-6 ~1 ~5 slot.container 11 bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 12 boat 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_salmon 14
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
