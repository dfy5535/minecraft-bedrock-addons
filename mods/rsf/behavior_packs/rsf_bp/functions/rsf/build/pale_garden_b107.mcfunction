# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0619/4224 | 主题内编号: b107/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·观星高塔与秘术地宫 (pale_garden_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_deepslate []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 string 10
replaceitem block ~3 ~-3 ~0 slot.container 1 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-3 ~0 slot.container 3 spider_eye 9
replaceitem block ~3 ~-3 ~0 slot.container 4 phantom_membrane 7
replaceitem block ~3 ~-3 ~0 slot.container 5 resin_clump 17
replaceitem block ~3 ~-3 ~0 slot.container 9 pale_moss_block 9
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_ingot 10
replaceitem block ~3 ~-3 ~0 slot.container 11 diamond 5
replaceitem block ~3 ~-3 ~0 slot.container 12 golden_apple 6
replaceitem block ~3 ~-3 ~0 slot.container 13 iron_axe 1
replaceitem block ~3 ~-3 ~0 slot.container 14 shield 1
loot insert ~3 ~-3 ~0 loot "rsf/pale_garden"
loot insert ~3 ~-3 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 pale_oak_planks []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 pale_oak_log []
setblock ~-8 ~8 ~-2 resin_block []
setblock ~8 ~8 ~-2 chiseled_resin_bricks []
setblock ~-8 ~9 ~-2 soul_lantern []
setblock ~8 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 13
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~2 slot.container 4 phantom_membrane 10
replaceitem block ~4 ~1 ~2 slot.container 5 resin_clump 12
replaceitem block ~4 ~1 ~2 slot.container 9 iron_axe 1
replaceitem block ~4 ~1 ~2 slot.container 10 shield 1
replaceitem block ~4 ~1 ~2 slot.container 11 soul_lantern 9
replaceitem block ~4 ~1 ~2 slot.container 12 resin_brick 18
replaceitem block ~4 ~1 ~2 slot.container 13 pale_oak_log 16
replaceitem block ~4 ~1 ~2 slot.container 14 pale_oak_sapling 5
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 1 spider_eye 7
replaceitem block ~-4 ~1 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~-4 ~1 ~3 slot.container 3 resin_clump 15
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_axe 1
replaceitem block ~-4 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 11 soul_lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 12 resin_brick 16
replaceitem block ~-4 ~1 ~3 slot.container 13 pale_oak_log 21
replaceitem block ~-4 ~1 ~3 slot.container 14 pale_oak_sapling 10
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
