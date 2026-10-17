# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0625/4224 | 主题内编号: b113/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·八角全采光生态温室 (pale_garden_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 resin_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~2 slot.container 0 string 10
replaceitem block ~-3 ~-2 ~2 slot.container 1 gunpowder 9
replaceitem block ~-3 ~-2 ~2 slot.container 2 ender_pearl 5
replaceitem block ~-3 ~-2 ~2 slot.container 3 spider_eye 9
replaceitem block ~-3 ~-2 ~2 slot.container 4 phantom_membrane 7
replaceitem block ~-3 ~-2 ~2 slot.container 5 resin_clump 17
replaceitem block ~-3 ~-2 ~2 slot.container 9 pale_oak_log 19
replaceitem block ~-3 ~-2 ~2 slot.container 10 pale_oak_sapling 8
replaceitem block ~-3 ~-2 ~2 slot.container 11 pale_moss_block 13
replaceitem block ~-3 ~-2 ~2 slot.container 12 iron_ingot 14
replaceitem block ~-3 ~-2 ~2 slot.container 13 diamond 2
replaceitem block ~-3 ~-2 ~2 slot.container 14 golden_apple 3
loot insert ~-3 ~-2 ~2 loot "rsf/pale_garden"
loot insert ~-3 ~-2 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 pale_oak_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 pale_oak_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 pale_oak_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 pale_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 resin_bricks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~0 ~-8 ~8 ~0 pale_oak_log []
fill ~8 ~0 ~0 ~8 ~8 ~0 pale_oak_log []
setblock ~-8 ~9 ~0 resin_block []
setblock ~8 ~9 ~0 chiseled_resin_bricks []
setblock ~-8 ~10 ~0 soul_lantern []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 11
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 string 13
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 4
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~2 slot.container 12 shield 1
replaceitem block ~4 ~1 ~2 slot.container 13 soul_lantern 10
replaceitem block ~4 ~1 ~2 slot.container 14 resin_brick 12
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 16
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 3 spider_eye 7
replaceitem block ~-4 ~1 ~3 slot.container 4 phantom_membrane 5
replaceitem block ~-4 ~1 ~3 slot.container 5 resin_clump 15
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 2
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~-4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 14 resin_brick 17
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
