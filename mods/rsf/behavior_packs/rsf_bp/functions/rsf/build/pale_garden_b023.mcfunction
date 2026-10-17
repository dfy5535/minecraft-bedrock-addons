# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0535/4224 | 主题内编号: b023/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双层露台阁楼宝室 (pale_garden_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 pale_moss_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 deepslate_brick_slab []
fill ~-4 ~5 ~-4 ~4 ~9 ~4 stone_bricks []
fill ~-3 ~5 ~-3 ~3 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-6 ~6 ~9 ~6 deepslate_brick_slab []
fill ~-4 ~10 ~-4 ~4 ~11 ~4 stone_bricks []
fill ~-5 ~12 ~-5 ~5 ~12 ~5 pale_oak_slab []
setblock ~0 ~13 ~0 chiseled_deepslate []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 pale_moss_block []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~8 ~1 pale_oak_log []
setblock ~-8 ~9 ~1 resin_block []
setblock ~8 ~9 ~1 chiseled_resin_bricks []
setblock ~-8 ~10 ~1 soul_lantern []
setblock ~8 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 phantom_membrane 10
replaceitem block ~4 ~1 ~3 slot.container 1 resin_clump 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 13
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~4 ~1 ~3 slot.container 13 soul_lantern 4
replaceitem block ~4 ~1 ~3 slot.container 14 resin_brick 13
loot insert ~4 ~1 ~3 loot "rsf/pale_garden"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 16
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 7
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 3
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~-4 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~4 slot.container 13 soul_lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 14 resin_brick 18
loot insert ~-4 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~4 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
