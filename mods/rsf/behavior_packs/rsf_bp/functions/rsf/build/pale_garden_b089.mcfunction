# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0601/4224 | 主题内编号: b089/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·四柱挑檐祈愿凉亭 (pale_garden_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 pale_oak_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 pale_oak_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_oak_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 resin_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~8 ~3 pale_oak_planks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 pale_oak_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 pale_oak_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 pale_oak_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 pale_oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 pale_oak_fence []
setblock ~4 ~2 ~0 pale_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 pale_oak_slab []
fill ~-3 ~9 ~-2 ~3 ~10 ~2 resin_bricks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 resin_brick_slab []
setblock ~0 ~12 ~0 chiseled_resin_bricks []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 pale_oak_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 pale_oak_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 pale_oak_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-7 ~0 ~-1 ~-7 ~9 ~-1 pale_oak_log []
fill ~7 ~0 ~-1 ~7 ~9 ~-1 pale_oak_log []
setblock ~-7 ~10 ~-1 resin_block []
setblock ~7 ~10 ~-1 chiseled_resin_bricks []
setblock ~-7 ~11 ~-1 soul_lantern []
setblock ~7 ~11 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 resin_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 11
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 13
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~1 slot.container 9 pale_moss_block 14
replaceitem block ~3 ~1 ~1 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 3
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 13 iron_axe 1
replaceitem block ~3 ~1 ~1 slot.container 14 shield 1
loot insert ~3 ~1 ~1 loot "rsf/pale_garden"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 16
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 3 spider_eye 7
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 5
replaceitem block ~-3 ~1 ~2 slot.container 5 resin_clump 15
replaceitem block ~-3 ~1 ~2 slot.container 9 pale_moss_block 12
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 13
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 8
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~2 slot.container 13 iron_axe 1
replaceitem block ~-3 ~1 ~2 slot.container 14 shield 1
loot insert ~-3 ~1 ~2 loot "rsf/pale_garden"
loot insert ~-3 ~1 ~2 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
