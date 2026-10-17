# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0626/4224 | 主题内编号: b114/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双联拱顶植物培育馆 (pale_garden_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 resin_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 resin_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 resin_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_deepslate []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 resin_bricks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 resin_bricks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 pale_oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 pale_oak_planks []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 glass []
fill ~-5 ~8 ~-2 ~5 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 pale_oak_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 pale_oak_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-10 ~0 ~1 ~-10 ~9 ~1 pale_oak_log []
fill ~10 ~0 ~1 ~10 ~9 ~1 pale_oak_log []
setblock ~-10 ~10 ~1 resin_block []
setblock ~10 ~10 ~1 chiseled_resin_bricks []
setblock ~-10 ~11 ~1 soul_lantern []
setblock ~10 ~11 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 1 string 13
replaceitem block ~-6 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~2 slot.container 5 phantom_membrane 10
replaceitem block ~-6 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 10 soul_lantern 8
replaceitem block ~-6 ~1 ~2 slot.container 11 resin_brick 17
replaceitem block ~-6 ~1 ~2 slot.container 12 pale_oak_log 22
replaceitem block ~-6 ~1 ~2 slot.container 13 pale_oak_sapling 4
replaceitem block ~-6 ~1 ~2 slot.container 14 pale_moss_block 9
loot insert ~-6 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~2 ~0
