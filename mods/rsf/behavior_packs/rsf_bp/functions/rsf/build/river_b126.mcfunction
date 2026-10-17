# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2686/4224 | 主题内编号: b126/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子主塔天桥宫殿与暗牢 (river_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 stone_bricks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 stone_bricks [] replace water
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 stone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 oak_planks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 campfire []
setblock ~5 ~-6 ~-3 campfire []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-4 ~3 slot.container 1 copper_ingot 14
replaceitem block ~5 ~-4 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~5 ~-4 ~3 slot.container 3 bone 8
replaceitem block ~5 ~-4 ~3 slot.container 4 string 11
replaceitem block ~5 ~-4 ~3 slot.container 5 slime_ball 8
replaceitem block ~5 ~-4 ~3 slot.container 9 cooked_salmon 10
replaceitem block ~5 ~-4 ~3 slot.container 10 cooked_cod 11
replaceitem block ~5 ~-4 ~3 slot.container 11 clay_ball 18
replaceitem block ~5 ~-4 ~3 slot.container 12 iron_ingot 9
replaceitem block ~5 ~-4 ~3 slot.container 13 coal 16
replaceitem block ~5 ~-4 ~3 slot.container 14 fishing_rod 1
loot insert ~5 ~-4 ~3 loot "rsf/river"
loot insert ~5 ~-4 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~9 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~7 ~9 ~5 stone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~6 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 sea_lantern []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~-1 ~-1 ~8 ~5 ~1 spruce_planks []
setblock ~8 ~4 ~0 barrel ["facing_direction"=1]
setblock ~8 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-6 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-6 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-6 ~1 ~3 slot.container 9 boat 1
replaceitem block ~-6 ~1 ~3 slot.container 10 lantern 10
replaceitem block ~-6 ~1 ~3 slot.container 11 cooked_salmon 10
replaceitem block ~-6 ~1 ~3 slot.container 12 cooked_cod 11
replaceitem block ~-6 ~1 ~3 slot.container 13 clay_ball 18
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~-6 ~1 ~3 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
