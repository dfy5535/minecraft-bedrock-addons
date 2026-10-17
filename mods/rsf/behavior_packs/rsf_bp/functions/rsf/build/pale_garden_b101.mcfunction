# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0613/4224 | 主题内编号: b101/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·L型驻军兵营军械所 (pale_garden_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 resin_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 16
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 2 string 10
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 5 spider_eye 9
replaceitem block ~4 ~-2 ~3 slot.container 9 pale_moss_block 8
replaceitem block ~4 ~-2 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 11 diamond 4
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_axe 1
replaceitem block ~4 ~-2 ~3 slot.container 14 shield 1
loot insert ~4 ~-2 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~8 ~5 pale_oak_planks []
fill ~-6 ~1 ~0 ~6 ~7 ~5 resin_bricks []
fill ~-5 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 pale_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_deepslate []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~10 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~9 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~11 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 3 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 11
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~5 ~1 ~3 slot.container 10 resin_brick 17
replaceitem block ~5 ~1 ~3 slot.container 11 pale_oak_log 22
replaceitem block ~5 ~1 ~3 slot.container 12 pale_oak_sapling 4
replaceitem block ~5 ~1 ~3 slot.container 13 pale_moss_block 9
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 1 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 10 resin_brick 15
replaceitem block ~-5 ~1 ~4 slot.container 11 pale_oak_log 20
replaceitem block ~-5 ~1 ~4 slot.container 12 pale_oak_sapling 9
replaceitem block ~-5 ~1 ~4 slot.container 13 pale_moss_block 14
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
