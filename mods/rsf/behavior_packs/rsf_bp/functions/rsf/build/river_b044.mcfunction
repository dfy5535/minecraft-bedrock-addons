# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2604/4224 | 主题内编号: b044/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子祭台勇士角斗场 (river_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-8 ~1 ~-6 ~8 ~7 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 stone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 spruce_planks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~3 slot.container 1 copper_ingot 14
replaceitem block ~5 ~-3 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~5 ~-3 ~3 slot.container 3 bone 8
replaceitem block ~5 ~-3 ~3 slot.container 4 string 11
replaceitem block ~5 ~-3 ~3 slot.container 5 slime_ball 8
replaceitem block ~5 ~-3 ~3 slot.container 9 lead 5
replaceitem block ~5 ~-3 ~3 slot.container 10 bucket 1
replaceitem block ~5 ~-3 ~3 slot.container 11 boat 1
replaceitem block ~5 ~-3 ~3 slot.container 12 lantern 10
replaceitem block ~5 ~-3 ~3 slot.container 13 cooked_salmon 10
replaceitem block ~5 ~-3 ~3 slot.container 14 cooked_cod 11
loot insert ~5 ~-3 ~3 loot "rsf/river"
loot insert ~5 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~6 ~5 mossy_cobblestone []
fill ~2 ~1 ~-5 ~7 ~6 ~5 mossy_cobblestone []
fill ~-6 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~6 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 spruce_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-5 ~-7 ~7 ~-5 spruce_log []
setblock ~-7 ~8 ~-5 lantern []
fill ~-7 ~5 ~5 ~-7 ~7 ~5 spruce_log []
setblock ~-7 ~8 ~5 lantern []
fill ~7 ~5 ~-5 ~7 ~7 ~-5 spruce_log []
setblock ~7 ~8 ~-5 lantern []
fill ~7 ~5 ~5 ~7 ~7 ~5 spruce_log []
setblock ~7 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~-1 ~-1 ~8 ~3 ~1 spruce_planks []
setblock ~8 ~2 ~0 barrel ["facing_direction"=1]
setblock ~8 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 barrel []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 string 14
replaceitem block ~-6 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~3 slot.container 2 ink_sac 14
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 9 clay_ball 16
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-6 ~1 ~3 slot.container 11 coal 14
replaceitem block ~-6 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-6 ~1 ~3 slot.container 13 lead 6
replaceitem block ~-6 ~1 ~3 slot.container 14 bucket 1
loot insert ~-6 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
