# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0541/4224 | 主题内编号: b029/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·奥术星象琉璃塔 (pale_garden_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 resin_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_resin_bricks []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-2 ~0 slot.container 1 spider_eye 9
replaceitem block ~3 ~-2 ~0 slot.container 2 phantom_membrane 7
replaceitem block ~3 ~-2 ~0 slot.container 3 resin_clump 17
replaceitem block ~3 ~-2 ~0 slot.container 4 bone 16
replaceitem block ~3 ~-2 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 9 soul_lantern 4
replaceitem block ~3 ~-2 ~0 slot.container 10 resin_brick 13
replaceitem block ~3 ~-2 ~0 slot.container 11 pale_oak_log 18
replaceitem block ~3 ~-2 ~0 slot.container 12 pale_oak_sapling 7
replaceitem block ~3 ~-2 ~0 slot.container 13 pale_moss_block 12
replaceitem block ~3 ~-2 ~0 slot.container 14 iron_ingot 13
loot insert ~3 ~-2 ~0 loot "rsf/pale_garden"
loot insert ~3 ~-2 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~11 ~4 pale_oak_planks []
fill ~-4 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 resin_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~11 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~11 ~-4 ~5 ~11 ~4 resin_bricks []
fill ~-4 ~12 ~-3 ~4 ~13 ~3 glass []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 pale_oak_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~0 ~-8 ~9 ~0 pale_oak_log []
fill ~8 ~0 ~0 ~8 ~9 ~0 pale_oak_log []
setblock ~-8 ~10 ~0 resin_block []
setblock ~8 ~10 ~0 chiseled_resin_bricks []
setblock ~-8 ~11 ~0 soul_lantern []
setblock ~8 ~11 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 10
replaceitem block ~4 ~1 ~2 slot.container 3 resin_clump 12
replaceitem block ~4 ~1 ~2 slot.container 4 bone 11
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 pale_moss_block 10
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 11 diamond 6
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~4 ~1 ~2 slot.container 13 iron_axe 1
replaceitem block ~4 ~1 ~2 slot.container 14 shield 1
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~-4 ~1 ~3 slot.container 1 resin_clump 15
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 16
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 9 pale_moss_block 8
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 4
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_axe 1
replaceitem block ~-4 ~1 ~3 slot.container 14 shield 1
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
