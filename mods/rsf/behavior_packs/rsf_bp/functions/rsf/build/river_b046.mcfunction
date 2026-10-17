# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2606/4224 | 主题内编号: b046/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·要塞校场比武演武台 (river_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~5 ~-3 ~4 slot.container 1 bone 8
replaceitem block ~5 ~-3 ~4 slot.container 2 string 11
replaceitem block ~5 ~-3 ~4 slot.container 3 slime_ball 8
replaceitem block ~5 ~-3 ~4 slot.container 4 ink_sac 11
replaceitem block ~5 ~-3 ~4 slot.container 5 gunpowder 10
replaceitem block ~5 ~-3 ~4 slot.container 9 clay_ball 21
replaceitem block ~5 ~-3 ~4 slot.container 10 iron_ingot 12
replaceitem block ~5 ~-3 ~4 slot.container 11 coal 12
replaceitem block ~5 ~-3 ~4 slot.container 12 fishing_rod 1
replaceitem block ~5 ~-3 ~4 slot.container 13 lead 4
replaceitem block ~5 ~-3 ~4 slot.container 14 bucket 1
loot insert ~5 ~-3 ~4 loot "rsf/river"
loot insert ~5 ~-3 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 mossy_stone_bricks []
setblock ~-7 ~8 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 mossy_stone_bricks []
setblock ~-7 ~8 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 mossy_stone_bricks []
setblock ~6 ~8 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~7 ~6 mossy_stone_bricks []
setblock ~6 ~8 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 mossy_stone_bricks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone_wall []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 oak_log []
setblock ~-7 ~7 ~-6 campfire []
setblock ~-7 ~6 ~6 oak_log []
setblock ~-7 ~7 ~6 campfire []
setblock ~7 ~6 ~-6 oak_log []
setblock ~7 ~7 ~-6 campfire []
setblock ~7 ~6 ~6 oak_log []
setblock ~7 ~7 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~-1 ~-1 ~8 ~5 ~1 spruce_planks []
setblock ~8 ~4 ~0 barrel ["facing_direction"=1]
setblock ~8 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 copper_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-6 ~1 ~4 slot.container 11 cooked_salmon 14
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_cod 15
replaceitem block ~-6 ~1 ~4 slot.container 13 clay_ball 22
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0
