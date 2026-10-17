# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0593/4224 | 主题内编号: b081/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双高炉重工冶炼密室 (pale_garden_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 pale_oak_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 pale_oak_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 pale_oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 pale_moss_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 pale_oak_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-3 ~3 slot.container 1 spider_eye 9
replaceitem block ~3 ~-3 ~3 slot.container 2 phantom_membrane 7
replaceitem block ~3 ~-3 ~3 slot.container 3 resin_clump 17
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 9 diamond 6
replaceitem block ~3 ~-3 ~3 slot.container 10 golden_apple 7
replaceitem block ~3 ~-3 ~3 slot.container 11 iron_axe 1
replaceitem block ~3 ~-3 ~3 slot.container 12 shield 1
replaceitem block ~3 ~-3 ~3 slot.container 13 soul_lantern 5
replaceitem block ~3 ~-3 ~3 slot.container 14 resin_brick 14
loot insert ~3 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~3 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 pale_oak_planks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~10 ~5 resin_bricks []
setblock ~-5 ~11 ~5 soul_lantern []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 pale_oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 pale_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 pale_oak_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 pale_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 pale_oak_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 resin_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 pale_oak_log []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 pale_oak_log []
setblock ~-8 ~7 ~-1 resin_block []
setblock ~8 ~7 ~-1 chiseled_resin_bricks []
setblock ~-8 ~8 ~-1 soul_lantern []
setblock ~8 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 11
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 13
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~3 slot.container 9 soul_lantern 9
replaceitem block ~4 ~1 ~3 slot.container 10 resin_brick 18
replaceitem block ~4 ~1 ~3 slot.container 11 pale_oak_log 16
replaceitem block ~4 ~1 ~3 slot.container 12 pale_oak_sapling 5
replaceitem block ~4 ~1 ~3 slot.container 13 pale_moss_block 10
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~3 loot "rsf/pale_garden"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 16
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 7
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~-4 ~1 ~4 slot.container 5 resin_clump 15
replaceitem block ~-4 ~1 ~4 slot.container 9 soul_lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 10 resin_brick 16
replaceitem block ~-4 ~1 ~4 slot.container 11 pale_oak_log 21
replaceitem block ~-4 ~1 ~4 slot.container 12 pale_oak_sapling 10
replaceitem block ~-4 ~1 ~4 slot.container 13 pale_moss_block 8
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
