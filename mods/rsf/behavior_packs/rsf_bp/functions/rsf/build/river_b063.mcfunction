# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2623/4224 | 主题内编号: b063/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·方尖碑镇压古墓穴 (river_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~2 slot.container 1 ink_sac 11
replaceitem block ~0 ~-3 ~2 slot.container 2 gunpowder 10
replaceitem block ~0 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~2 slot.container 4 copper_ingot 14
replaceitem block ~0 ~-3 ~2 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-3 ~2 slot.container 9 cooked_cod 14
replaceitem block ~0 ~-3 ~2 slot.container 10 clay_ball 21
replaceitem block ~0 ~-3 ~2 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-3 ~2 slot.container 12 coal 12
replaceitem block ~0 ~-3 ~2 slot.container 13 fishing_rod 1
replaceitem block ~0 ~-3 ~2 slot.container 14 lead 4
loot insert ~0 ~-3 ~2 loot "rsf/river"
loot insert ~0 ~-3 ~2 loot "chests/shipwrecksupply"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 slime_ball 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 ink_sac 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 8
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 copper_ingot 12
replaceitem block ~0 ~-3 ~-2 slot.container 5 nautilus_shell 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 cooked_cod 13
replaceitem block ~0 ~-3 ~-2 slot.container 10 clay_ball 20
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 12 coal 18
replaceitem block ~0 ~-3 ~-2 slot.container 13 fishing_rod 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 lead 3
loot insert ~0 ~-3 ~-2 loot "rsf/river"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 stripped_oak_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 stripped_oak_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 stripped_oak_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 stripped_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 oak_planks []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~6 ~-1 ~-1 ~6 ~7 ~1 spruce_planks []
setblock ~6 ~6 ~0 barrel ["facing_direction"=1]
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 3 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 4 bone 11
replaceitem block ~4 ~1 ~2 slot.container 5 string 14
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 10 cooked_salmon 16
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_cod 10
replaceitem block ~4 ~1 ~2 slot.container 12 clay_ball 17
replaceitem block ~4 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 14 coal 15
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 1 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 3 string 17
replaceitem block ~-4 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 5 ink_sac 9
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 10 cooked_salmon 14
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_cod 15
replaceitem block ~-4 ~1 ~3 slot.container 12 clay_ball 22
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~3 slot.container 14 coal 13
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
