# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0600/4224 | 主题内编号: b088/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·矿车铁轨转运仓库 (pale_garden_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 pale_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 resin_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 pale_oak_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 pale_oak_planks []
setblock ~0 ~-6 ~0 chiseled_resin_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 10
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~-2 slot.container 4 spider_eye 9
replaceitem block ~0 ~-3 ~-2 slot.container 5 phantom_membrane 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 shield 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 soul_lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 resin_brick 15
replaceitem block ~0 ~-3 ~-2 slot.container 12 pale_oak_log 20
replaceitem block ~0 ~-3 ~-2 slot.container 13 pale_oak_sapling 9
replaceitem block ~0 ~-3 ~-2 slot.container 14 pale_moss_block 14
loot insert ~0 ~-3 ~-2 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~-2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 pale_oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 pale_oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 pale_oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 pale_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 resin_brick_wall []
setblock ~5 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 pale_oak_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 pale_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 pale_oak_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~2 ~-8 ~8 ~2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~8 ~2 pale_oak_log []
setblock ~-8 ~9 ~2 resin_block []
setblock ~8 ~9 ~2 chiseled_resin_bricks []
setblock ~-8 ~10 ~2 soul_lantern []
setblock ~8 ~10 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 resin_clump 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 13
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~-4 ~1 ~4 slot.container 9 resin_brick 17
replaceitem block ~-4 ~1 ~4 slot.container 10 pale_oak_log 22
replaceitem block ~-4 ~1 ~4 slot.container 11 pale_oak_sapling 4
replaceitem block ~-4 ~1 ~4 slot.container 12 pale_moss_block 9
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 14 diamond 5
loot insert ~-4 ~1 ~4 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
