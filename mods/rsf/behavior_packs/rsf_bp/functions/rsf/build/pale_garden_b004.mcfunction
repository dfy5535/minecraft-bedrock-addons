# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0516/4224 | 主题内编号: b004/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子火盆高台神坛 (pale_garden_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 pale_oak_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 resin_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 pale_oak_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-4 ~-7 ~10 ~-4 pale_oak_log []
setblock ~-7 ~11 ~-4 soul_lantern []
fill ~-7 ~8 ~4 ~-7 ~10 ~4 pale_oak_log []
setblock ~-7 ~11 ~4 soul_lantern []
fill ~7 ~8 ~-4 ~7 ~10 ~-4 pale_oak_log []
setblock ~7 ~11 ~-4 soul_lantern []
fill ~7 ~8 ~4 ~7 ~10 ~4 pale_oak_log []
setblock ~7 ~11 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x5x6) ---
fill ~-10 ~0 ~-1 ~-10 ~9 ~-1 pale_oak_log []
fill ~10 ~0 ~-1 ~10 ~9 ~-1 pale_oak_log []
setblock ~-10 ~10 ~-1 resin_block []
setblock ~10 ~10 ~-1 chiseled_resin_bricks []
setblock ~-10 ~11 ~-1 soul_lantern []
setblock ~10 ~11 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 10
replaceitem block ~-6 ~1 ~2 slot.container 4 resin_clump 12
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-6 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 10 soul_lantern 10
replaceitem block ~-6 ~1 ~2 slot.container 11 resin_brick 12
replaceitem block ~-6 ~1 ~2 slot.container 12 pale_oak_log 17
replaceitem block ~-6 ~1 ~2 slot.container 13 pale_oak_sapling 6
replaceitem block ~-6 ~1 ~2 slot.container 14 pale_moss_block 11
loot insert ~-6 ~1 ~2 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
