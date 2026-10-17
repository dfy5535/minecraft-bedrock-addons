# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0566/4224 | 主题内编号: b054/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·切石与伐木工匠棚屋 (pale_garden_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 resin_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 resin_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 resin_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_deepslate []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 resin_bricks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 resin_bricks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 pale_oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 deepslate_brick_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 stone_bricks []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 pale_oak_slab []
setblock ~0 ~12 ~0 chiseled_deepslate []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 pale_moss_block []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~1 ~-9 ~9 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~9 ~1 pale_oak_log []
setblock ~-9 ~10 ~1 resin_block []
setblock ~9 ~10 ~1 chiseled_resin_bricks []
setblock ~-9 ~11 ~1 soul_lantern []
setblock ~9 ~11 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 10
replaceitem block ~-5 ~1 ~2 slot.container 2 resin_clump 12
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 13
replaceitem block ~-5 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 10 soul_lantern 4
replaceitem block ~-5 ~1 ~2 slot.container 11 resin_brick 13
replaceitem block ~-5 ~1 ~2 slot.container 12 pale_oak_log 18
replaceitem block ~-5 ~1 ~2 slot.container 13 pale_oak_sapling 7
replaceitem block ~-5 ~1 ~2 slot.container 14 pale_moss_block 12
loot insert ~-5 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~2 ~0
