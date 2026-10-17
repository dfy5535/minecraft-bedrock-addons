# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0606/4224 | 主题内编号: b094/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·圆形圣泉祈祷亭 (pale_garden_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 pale_oak_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 resin_clump 17
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 16
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 3 string 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-3 ~-3 ~2 slot.container 9 iron_ingot 13
replaceitem block ~-3 ~-3 ~2 slot.container 10 diamond 8
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 2
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_axe 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 soul_lantern 7
loot insert ~-3 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~-3 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 stripped_pale_oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 stripped_pale_oak_log []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_pale_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_pale_oak_log []
fill ~-1 ~1 ~-4 ~-1 ~7 ~-4 stripped_pale_oak_log []
fill ~-1 ~1 ~4 ~-1 ~7 ~4 stripped_pale_oak_log []
fill ~1 ~1 ~-4 ~1 ~7 ~-4 stripped_pale_oak_log []
fill ~1 ~1 ~4 ~1 ~7 ~4 stripped_pale_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_pale_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_pale_oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 stripped_pale_oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 stripped_pale_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 stripped_pale_oak_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 stripped_pale_oak_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 stripped_pale_oak_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 stripped_pale_oak_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 stripped_pale_oak_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 stripped_pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-8 ~0 ~1 ~-8 ~9 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~9 ~1 pale_oak_log []
setblock ~-8 ~10 ~1 resin_block []
setblock ~8 ~10 ~1 chiseled_resin_bricks []
setblock ~-8 ~11 ~1 soul_lantern []
setblock ~8 ~11 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 resin_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 2 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 13
replaceitem block ~-4 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 resin_brick 18
replaceitem block ~-4 ~1 ~2 slot.container 12 pale_oak_log 16
replaceitem block ~-4 ~1 ~2 slot.container 13 pale_oak_sapling 5
replaceitem block ~-4 ~1 ~2 slot.container 14 pale_moss_block 10
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
