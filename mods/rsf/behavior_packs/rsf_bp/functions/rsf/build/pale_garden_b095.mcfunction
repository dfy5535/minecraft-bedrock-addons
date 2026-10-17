# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0607/4224 | 主题内编号: b095/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子灯笼守卫神龛 (pale_garden_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 deepslate_bricks []
fill ~2 ~1 ~-3 ~6 ~9 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 pale_oak_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 pale_oak_planks []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 glass []
fill ~-5 ~8 ~-2 ~5 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~5 ~-5 pale_oak_log []
setblock ~-8 ~6 ~-5 soul_lantern []
fill ~-8 ~0 ~5 ~-8 ~5 ~5 pale_oak_log []
setblock ~-8 ~6 ~5 soul_lantern []
fill ~8 ~0 ~-5 ~8 ~5 ~-5 pale_oak_log []
setblock ~8 ~6 ~-5 soul_lantern []
fill ~8 ~0 ~5 ~8 ~5 ~5 pale_oak_log []
setblock ~8 ~6 ~5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x5x2) ---
fill ~-9 ~0 ~-1 ~-9 ~5 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~5 ~-1 pale_oak_log []
setblock ~-9 ~6 ~-1 resin_block []
setblock ~9 ~6 ~-1 chiseled_resin_bricks []
setblock ~-9 ~7 ~-1 soul_lantern []
setblock ~9 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 phantom_membrane 10
replaceitem block ~5 ~1 ~1 slot.container 1 resin_clump 12
replaceitem block ~5 ~1 ~1 slot.container 2 bone 11
replaceitem block ~5 ~1 ~1 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 4 string 13
replaceitem block ~5 ~1 ~1 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 9 pale_oak_log 21
replaceitem block ~5 ~1 ~1 slot.container 10 pale_oak_sapling 10
replaceitem block ~5 ~1 ~1 slot.container 11 pale_moss_block 8
replaceitem block ~5 ~1 ~1 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~1 slot.container 13 diamond 4
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~1 loot "rsf/pale_garden"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 2 string 16
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 7
replaceitem block ~-5 ~1 ~2 slot.container 9 pale_oak_log 19
replaceitem block ~-5 ~1 ~2 slot.container 10 pale_oak_sapling 8
replaceitem block ~-5 ~1 ~2 slot.container 11 pale_moss_block 13
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond 2
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~2 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~2 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
