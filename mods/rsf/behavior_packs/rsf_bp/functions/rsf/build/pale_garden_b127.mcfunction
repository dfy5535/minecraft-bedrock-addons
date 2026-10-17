# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0639/4224 | 主题内编号: b127/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·万神殿巨型穹顶与试炼宫 (pale_garden_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_deepslate []
setblock ~-5 ~-5 ~-4 soul_lantern []
setblock ~5 ~-5 ~4 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 phantom_membrane 7
replaceitem block ~0 ~-3 ~4 slot.container 1 resin_clump 17
replaceitem block ~0 ~-3 ~4 slot.container 2 bone 16
replaceitem block ~0 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 4 string 10
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 9 soul_lantern 10
replaceitem block ~0 ~-3 ~4 slot.container 10 resin_brick 12
replaceitem block ~0 ~-3 ~4 slot.container 11 pale_oak_log 17
replaceitem block ~0 ~-3 ~4 slot.container 12 pale_oak_sapling 6
replaceitem block ~0 ~-3 ~4 slot.container 13 pale_moss_block 11
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_ingot 12
loot insert ~0 ~-3 ~4 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 pale_oak_planks []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 pale_oak_log []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 pale_oak_log []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 pale_oak_log []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 pale_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 pale_oak_log []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 pale_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 pale_oak_log []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 pale_oak_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 pale_oak_log []
fill ~1 ~1 ~6 ~1 ~8 ~6 pale_oak_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 pale_oak_log []
fill ~3 ~1 ~6 ~3 ~8 ~6 pale_oak_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 pale_oak_log []
fill ~5 ~1 ~6 ~5 ~8 ~6 pale_oak_log []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 pale_oak_log []
fill ~7 ~1 ~6 ~7 ~8 ~6 pale_oak_log []
fill ~-7 ~1 ~-4 ~-7 ~8 ~-4 pale_oak_log []
fill ~7 ~1 ~-4 ~7 ~8 ~-4 pale_oak_log []
fill ~-7 ~1 ~-2 ~-7 ~8 ~-2 pale_oak_log []
fill ~7 ~1 ~-2 ~7 ~8 ~-2 pale_oak_log []
fill ~-7 ~1 ~0 ~-7 ~8 ~0 pale_oak_log []
fill ~7 ~1 ~0 ~7 ~8 ~0 pale_oak_log []
fill ~-7 ~1 ~2 ~-7 ~8 ~2 pale_oak_log []
fill ~7 ~1 ~2 ~7 ~8 ~2 pale_oak_log []
fill ~-7 ~1 ~4 ~-7 ~8 ~4 pale_oak_log []
fill ~7 ~1 ~4 ~7 ~8 ~4 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 pale_oak_planks []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 glass []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-10 ~0 ~-1 ~-10 ~7 ~-1 pale_oak_log []
fill ~10 ~0 ~-1 ~10 ~7 ~-1 pale_oak_log []
setblock ~-10 ~8 ~-1 resin_block []
setblock ~10 ~8 ~-1 chiseled_resin_bricks []
setblock ~-10 ~9 ~-1 soul_lantern []
setblock ~10 ~9 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 chiseled_deepslate []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 phantom_membrane 10
replaceitem block ~6 ~1 ~4 slot.container 1 resin_clump 12
replaceitem block ~6 ~1 ~4 slot.container 2 bone 11
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 string 13
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 9 iron_axe 1
replaceitem block ~6 ~1 ~4 slot.container 10 shield 1
replaceitem block ~6 ~1 ~4 slot.container 11 soul_lantern 8
replaceitem block ~6 ~1 ~4 slot.container 12 resin_brick 17
replaceitem block ~6 ~1 ~4 slot.container 13 pale_oak_log 22
replaceitem block ~6 ~1 ~4 slot.container 14 pale_oak_sapling 4
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 string 16
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 5 spider_eye 7
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_axe 1
replaceitem block ~-6 ~1 ~5 slot.container 10 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 11 soul_lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 12 resin_brick 15
replaceitem block ~-6 ~1 ~5 slot.container 13 pale_oak_log 20
replaceitem block ~-6 ~1 ~5 slot.container 14 pale_oak_sapling 9
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
