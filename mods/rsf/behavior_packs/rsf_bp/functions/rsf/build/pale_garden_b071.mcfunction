# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0583/4224 | 主题内编号: b071/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·残破双子哨所遗迹 (pale_garden_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 pale_moss_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~6 ~9 ~4 deepslate_bricks []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 pale_oak_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 deepslate_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~5 ~-7 pale_oak_log []
setblock ~-9 ~6 ~-7 soul_lantern []
fill ~-9 ~0 ~7 ~-9 ~5 ~7 pale_oak_log []
setblock ~-9 ~6 ~7 soul_lantern []
fill ~9 ~0 ~-7 ~9 ~5 ~-7 pale_oak_log []
setblock ~9 ~6 ~-7 soul_lantern []
fill ~9 ~0 ~7 ~9 ~5 ~7 pale_oak_log []
setblock ~9 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~-9 ~0 ~-2 ~-9 ~6 ~-2 pale_oak_log []
fill ~9 ~0 ~-2 ~9 ~6 ~-2 pale_oak_log []
setblock ~-9 ~7 ~-2 resin_block []
setblock ~9 ~7 ~-2 chiseled_resin_bricks []
setblock ~-9 ~8 ~-2 soul_lantern []
setblock ~9 ~8 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 phantom_membrane 10
replaceitem block ~5 ~1 ~2 slot.container 1 resin_clump 12
replaceitem block ~5 ~1 ~2 slot.container 2 bone 11
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 string 13
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 9 soul_lantern 6
replaceitem block ~5 ~1 ~2 slot.container 10 resin_brick 15
replaceitem block ~5 ~1 ~2 slot.container 11 pale_oak_log 20
replaceitem block ~5 ~1 ~2 slot.container 12 pale_oak_sapling 9
replaceitem block ~5 ~1 ~2 slot.container 13 pale_moss_block 14
replaceitem block ~5 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~5 ~1 ~2 loot "rsf/pale_garden"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 string 16
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 3
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 7
replaceitem block ~-5 ~1 ~3 slot.container 9 soul_lantern 4
replaceitem block ~-5 ~1 ~3 slot.container 10 resin_brick 13
replaceitem block ~-5 ~1 ~3 slot.container 11 pale_oak_log 18
replaceitem block ~-5 ~1 ~3 slot.container 12 pale_oak_sapling 7
replaceitem block ~-5 ~1 ~3 slot.container 13 pale_moss_block 12
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 13
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
