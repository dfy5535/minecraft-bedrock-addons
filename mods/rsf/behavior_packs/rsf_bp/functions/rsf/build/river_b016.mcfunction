# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2576/4224 | 主题内编号: b016/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·要塞地底重装暗牢 (river_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 lantern []
setblock ~5 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 ink_sac 11
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 10
replaceitem block ~0 ~-4 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 3 copper_ingot 14
replaceitem block ~0 ~-4 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 8
replaceitem block ~0 ~-4 ~4 slot.container 9 cooked_salmon 16
replaceitem block ~0 ~-4 ~4 slot.container 10 cooked_cod 10
replaceitem block ~0 ~-4 ~4 slot.container 11 clay_ball 17
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-4 ~4 slot.container 13 coal 15
replaceitem block ~0 ~-4 ~4 slot.container 14 fishing_rod 1
loot insert ~0 ~-4 ~4 loot "rsf/river"
loot insert ~0 ~-4 ~4 loot "chests/shipwrecksupply"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 ink_sac 9
replaceitem block ~0 ~-4 ~-4 slot.container 1 gunpowder 8
replaceitem block ~0 ~-4 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 copper_ingot 12
replaceitem block ~0 ~-4 ~-4 slot.container 4 nautilus_shell 6
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 cooked_salmon 15
replaceitem block ~0 ~-4 ~-4 slot.container 10 cooked_cod 16
replaceitem block ~0 ~-4 ~-4 slot.container 11 clay_ball 16
replaceitem block ~0 ~-4 ~-4 slot.container 12 iron_ingot 7
replaceitem block ~0 ~-4 ~-4 slot.container 13 coal 14
replaceitem block ~0 ~-4 ~-4 slot.container 14 fishing_rod 1
loot insert ~0 ~-4 ~-4 loot "rsf/river"
loot insert ~0 ~-4 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 mossy_cobblestone []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 spruce_planks []
setblock ~-7 ~8 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 spruce_planks []
setblock ~-7 ~8 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 spruce_planks []
setblock ~6 ~8 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~7 ~6 spruce_planks []
setblock ~6 ~8 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 spruce_planks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 spruce_fence []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 spruce_log []
setblock ~-7 ~7 ~-6 lantern []
setblock ~-7 ~6 ~6 spruce_log []
setblock ~-7 ~7 ~6 lantern []
setblock ~7 ~6 ~-6 spruce_log []
setblock ~7 ~7 ~-6 lantern []
setblock ~7 ~6 ~6 spruce_log []
setblock ~7 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_oak_log []
setblock ~0 ~4 ~-7 prismarine []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_oak_log []
setblock ~0 ~4 ~7 prismarine []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_oak_log []
setblock ~-8 ~4 ~0 prismarine []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_oak_log []
setblock ~8 ~4 ~0 prismarine []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~-1 ~-1 ~8 ~5 ~1 spruce_planks []
setblock ~8 ~4 ~0 barrel ["facing_direction"=1]
setblock ~8 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 4 string 14
replaceitem block ~-6 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~-6 ~1 ~4 slot.container 11 cooked_salmon 12
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_cod 13
replaceitem block ~-6 ~1 ~4 slot.container 13 clay_ball 20
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-4 ~0
