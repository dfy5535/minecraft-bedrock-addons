# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0628/4224 | 主题内编号: b116/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·U型围合秘密花园驿站 (pale_garden_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 pale_moss_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 pale_oak_planks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 pale_oak_log []
setblock ~-7 ~6 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 pale_oak_log []
setblock ~-7 ~6 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 pale_oak_log []
setblock ~7 ~6 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 pale_oak_log []
setblock ~7 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 4 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_axe 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 7
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
