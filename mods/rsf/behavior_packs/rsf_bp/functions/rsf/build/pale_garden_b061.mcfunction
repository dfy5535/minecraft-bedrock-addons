# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0573/4224 | 主题内编号: b061/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子封土古墓地宫 (pale_garden_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 pale_oak_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 pale_oak_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 pale_oak_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 pale_moss_block []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 resin_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 resin_bricks []
setblock ~0 ~-6 ~0 resin_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 phantom_membrane 7
replaceitem block ~0 ~-3 ~-2 slot.container 1 resin_clump 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 10
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 9 diamond 4
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_axe 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 shield 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 soul_lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 resin_brick 12
loot insert ~0 ~-3 ~-2 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~-2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 pale_oak_planks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 pale_oak_planks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 resin_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 resin_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 resin_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_resin_bricks []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x5x3) ---
fill ~-10 ~0 ~0 ~-10 ~6 ~0 pale_oak_log []
fill ~10 ~0 ~0 ~10 ~6 ~0 pale_oak_log []
setblock ~-10 ~7 ~0 resin_block []
setblock ~10 ~7 ~0 chiseled_resin_bricks []
setblock ~-10 ~8 ~0 soul_lantern []
setblock ~10 ~8 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~6 ~1 ~2 slot.container 1 spider_eye 12
replaceitem block ~6 ~1 ~2 slot.container 2 phantom_membrane 10
replaceitem block ~6 ~1 ~2 slot.container 3 resin_clump 12
replaceitem block ~6 ~1 ~2 slot.container 4 bone 11
replaceitem block ~6 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 9 soul_lantern 10
replaceitem block ~6 ~1 ~2 slot.container 10 resin_brick 12
replaceitem block ~6 ~1 ~2 slot.container 11 pale_oak_log 17
replaceitem block ~6 ~1 ~2 slot.container 12 pale_oak_sapling 6
replaceitem block ~6 ~1 ~2 slot.container 13 pale_moss_block 11
replaceitem block ~6 ~1 ~2 slot.container 14 iron_ingot 12
loot insert ~6 ~1 ~2 loot "rsf/pale_garden"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~-6 ~1 ~3 slot.container 1 resin_clump 15
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 4 string 16
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~-6 ~1 ~3 slot.container 10 resin_brick 17
replaceitem block ~-6 ~1 ~3 slot.container 11 pale_oak_log 22
replaceitem block ~-6 ~1 ~3 slot.container 12 pale_oak_sapling 4
replaceitem block ~-6 ~1 ~3 slot.container 13 pale_moss_block 9
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~-6 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~3 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
