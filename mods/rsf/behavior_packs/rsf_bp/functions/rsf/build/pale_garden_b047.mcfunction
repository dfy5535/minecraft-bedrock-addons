# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0559/4224 | 主题内编号: b047/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·深渊跨桥决斗长台 (pale_garden_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 pale_moss_block []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 pale_oak_planks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 bone 16
replaceitem block ~-5 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 10
replaceitem block ~-5 ~-3 ~2 slot.container 3 gunpowder 9
replaceitem block ~-5 ~-3 ~2 slot.container 4 ender_pearl 5
replaceitem block ~-5 ~-3 ~2 slot.container 5 spider_eye 9
replaceitem block ~-5 ~-3 ~2 slot.container 9 pale_moss_block 8
replaceitem block ~-5 ~-3 ~2 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~-3 ~2 slot.container 11 diamond 4
replaceitem block ~-5 ~-3 ~2 slot.container 12 golden_apple 5
replaceitem block ~-5 ~-3 ~2 slot.container 13 iron_axe 1
replaceitem block ~-5 ~-3 ~2 slot.container 14 shield 1
loot insert ~-5 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~-5 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~7 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 pale_oak_planks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 resin_brick_wall []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 pale_oak_log []
setblock ~-6 ~10 ~-4 soul_lantern []
setblock ~-6 ~9 ~4 pale_oak_log []
setblock ~-6 ~10 ~4 soul_lantern []
setblock ~6 ~9 ~-4 pale_oak_log []
setblock ~6 ~10 ~-4 soul_lantern []
setblock ~6 ~9 ~4 pale_oak_log []
setblock ~6 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~5 ~-6 pale_oak_log []
setblock ~-9 ~6 ~-6 soul_lantern []
fill ~-9 ~0 ~6 ~-9 ~5 ~6 pale_oak_log []
setblock ~-9 ~6 ~6 soul_lantern []
fill ~9 ~0 ~-6 ~9 ~5 ~-6 pale_oak_log []
setblock ~9 ~6 ~-6 soul_lantern []
fill ~9 ~0 ~6 ~9 ~5 ~6 pale_oak_log []
setblock ~9 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x6x4) ---
fill ~-10 ~0 ~-2 ~-10 ~7 ~-2 pale_oak_log []
fill ~10 ~0 ~-2 ~10 ~7 ~-2 pale_oak_log []
setblock ~-10 ~8 ~-2 resin_block []
setblock ~10 ~8 ~-2 chiseled_resin_bricks []
setblock ~-10 ~9 ~-2 soul_lantern []
setblock ~10 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 phantom_membrane 10
replaceitem block ~6 ~1 ~2 slot.container 1 resin_clump 12
replaceitem block ~6 ~1 ~2 slot.container 2 bone 11
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 4 string 13
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~2 slot.container 9 iron_axe 1
replaceitem block ~6 ~1 ~2 slot.container 10 shield 1
replaceitem block ~6 ~1 ~2 slot.container 11 soul_lantern 5
replaceitem block ~6 ~1 ~2 slot.container 12 resin_brick 14
replaceitem block ~6 ~1 ~2 slot.container 13 pale_oak_log 19
replaceitem block ~6 ~1 ~2 slot.container 14 pale_oak_sapling 8
loot insert ~6 ~1 ~2 loot "rsf/pale_garden"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 2 string 16
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 4 ender_pearl 3
replaceitem block ~-6 ~1 ~3 slot.container 5 spider_eye 7
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_axe 1
replaceitem block ~-6 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-6 ~1 ~3 slot.container 11 soul_lantern 10
replaceitem block ~-6 ~1 ~3 slot.container 12 resin_brick 12
replaceitem block ~-6 ~1 ~3 slot.container 13 pale_oak_log 17
replaceitem block ~-6 ~1 ~3 slot.container 14 pale_oak_sapling 6
loot insert ~-6 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
