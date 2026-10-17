# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2642/4224 | 主题内编号: b082/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·竖井井架矿工物资站 (river_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 6格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 campfire []
setblock ~3 ~-7 ~-2 campfire []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 string 11
replaceitem block ~3 ~-5 ~2 slot.container 1 slime_ball 8
replaceitem block ~3 ~-5 ~2 slot.container 2 ink_sac 11
replaceitem block ~3 ~-5 ~2 slot.container 3 gunpowder 10
replaceitem block ~3 ~-5 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-5 ~2 slot.container 5 copper_ingot 14
replaceitem block ~3 ~-5 ~2 slot.container 9 boat 1
replaceitem block ~3 ~-5 ~2 slot.container 10 lantern 10
replaceitem block ~3 ~-5 ~2 slot.container 11 cooked_salmon 10
replaceitem block ~3 ~-5 ~2 slot.container 12 cooked_cod 11
replaceitem block ~3 ~-5 ~2 slot.container 13 clay_ball 18
replaceitem block ~3 ~-5 ~2 slot.container 14 iron_ingot 9
loot insert ~3 ~-5 ~2 loot "rsf/river"
loot insert ~3 ~-5 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 stone_brick_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 oak_planks []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 oak_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sea_lantern []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~-1 ~-1 ~6 ~6 ~1 spruce_planks []
setblock ~6 ~5 ~0 barrel ["facing_direction"=1]
setblock ~6 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 nautilus_shell 3
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 2 string 14
replaceitem block ~-4 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 4 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 9 lead 5
replaceitem block ~-4 ~1 ~2 slot.container 10 bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_salmon 10
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_cod 11
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-5 ~0
