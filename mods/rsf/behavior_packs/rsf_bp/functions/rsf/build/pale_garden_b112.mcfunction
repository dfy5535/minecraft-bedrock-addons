# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0624/4224 | 主题内编号: b112/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·U型回廊学者修道院 (pale_garden_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 pale_oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 4 resin_clump 17
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_axe 1
replaceitem block ~4 ~-3 ~3 slot.container 11 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 12 soul_lantern 4
replaceitem block ~4 ~-3 ~3 slot.container 13 resin_brick 13
replaceitem block ~4 ~-3 ~3 slot.container 14 pale_oak_log 18
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 pale_moss_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 pale_oak_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 pale_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 pale_oak_log []
setblock ~-7 ~6 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 pale_oak_log []
setblock ~-7 ~6 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 pale_oak_log []
setblock ~7 ~6 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 pale_oak_log []
setblock ~7 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~7 ~0 pale_oak_log []
setblock ~-9 ~8 ~0 resin_block []
setblock ~9 ~8 ~0 chiseled_resin_bricks []
setblock ~-9 ~9 ~0 soul_lantern []
setblock ~9 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 13
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 9 pale_oak_sapling 5
replaceitem block ~-5 ~1 ~3 slot.container 10 pale_moss_block 10
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_axe 1
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
