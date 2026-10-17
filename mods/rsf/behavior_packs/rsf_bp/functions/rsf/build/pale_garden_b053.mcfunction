# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0565/4224 | 主题内编号: b053/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·测绘师观景制图站 (pale_garden_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_deepslate []
setblock ~-4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 10
replaceitem block ~0 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 3 spider_eye 9
replaceitem block ~0 ~-3 ~3 slot.container 4 phantom_membrane 7
replaceitem block ~0 ~-3 ~3 slot.container 5 resin_clump 17
replaceitem block ~0 ~-3 ~3 slot.container 9 pale_oak_log 18
replaceitem block ~0 ~-3 ~3 slot.container 10 pale_oak_sapling 7
replaceitem block ~0 ~-3 ~3 slot.container 11 pale_moss_block 12
replaceitem block ~0 ~-3 ~3 slot.container 12 iron_ingot 13
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 8
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 2
loot insert ~0 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~3 loot "chests/woodland_mansion"

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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 resin_bricks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 resin_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_resin_bricks []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 resin_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 pale_oak_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~0 ~-8 ~8 ~0 pale_oak_log []
fill ~8 ~0 ~0 ~8 ~8 ~0 pale_oak_log []
setblock ~-8 ~9 ~0 resin_block []
setblock ~8 ~9 ~0 chiseled_resin_bricks []
setblock ~-8 ~10 ~0 soul_lantern []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 10
replaceitem block ~4 ~1 ~2 slot.container 3 resin_clump 12
replaceitem block ~4 ~1 ~2 slot.container 4 bone 11
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~2 slot.container 12 shield 1
replaceitem block ~4 ~1 ~2 slot.container 13 soul_lantern 6
replaceitem block ~4 ~1 ~2 slot.container 14 resin_brick 15
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~-4 ~1 ~3 slot.container 1 resin_clump 15
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 16
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 5
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~-4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_lantern 4
replaceitem block ~-4 ~1 ~3 slot.container 14 resin_brick 13
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
