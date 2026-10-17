# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0597/4224 | 主题内编号: b085/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子烟囱砖石窑厂 (pale_garden_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~13 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~13 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~13 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~13 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 pale_oak_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 pale_oak_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 pale_oak_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 pale_moss_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 pale_oak_planks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 bone 16
replaceitem block ~4 ~-2 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~2 slot.container 2 string 10
replaceitem block ~4 ~-2 ~2 slot.container 3 gunpowder 9
replaceitem block ~4 ~-2 ~2 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-2 ~2 slot.container 5 spider_eye 9
replaceitem block ~4 ~-2 ~2 slot.container 9 iron_axe 1
replaceitem block ~4 ~-2 ~2 slot.container 10 shield 1
replaceitem block ~4 ~-2 ~2 slot.container 11 soul_lantern 7
replaceitem block ~4 ~-2 ~2 slot.container 12 resin_brick 16
replaceitem block ~4 ~-2 ~2 slot.container 13 pale_oak_log 21
replaceitem block ~4 ~-2 ~2 slot.container 14 pale_oak_sapling 10
loot insert ~4 ~-2 ~2 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~10 ~4 pale_oak_planks []
fill ~2 ~1 ~-4 ~6 ~10 ~4 pale_oak_planks []
fill ~-5 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~5 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 resin_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 resin_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 pale_oak_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 chiseled_resin_bricks []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x5x2) ---
fill ~-9 ~0 ~0 ~-9 ~5 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~5 ~0 pale_oak_log []
setblock ~-9 ~6 ~0 resin_block []
setblock ~9 ~6 ~0 chiseled_resin_bricks []
setblock ~-9 ~7 ~0 soul_lantern []
setblock ~9 ~7 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~2 slot.container 2 phantom_membrane 10
replaceitem block ~5 ~1 ~2 slot.container 3 resin_clump 12
replaceitem block ~5 ~1 ~2 slot.container 4 bone 11
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 9 pale_oak_log 18
replaceitem block ~5 ~1 ~2 slot.container 10 pale_oak_sapling 7
replaceitem block ~5 ~1 ~2 slot.container 11 pale_moss_block 12
replaceitem block ~5 ~1 ~2 slot.container 12 iron_ingot 13
replaceitem block ~5 ~1 ~2 slot.container 13 diamond 8
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~5 ~1 ~2 loot "rsf/pale_garden"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~-5 ~1 ~3 slot.container 1 resin_clump 15
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 16
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 pale_oak_log 16
replaceitem block ~-5 ~1 ~3 slot.container 10 pale_oak_sapling 5
replaceitem block ~-5 ~1 ~3 slot.container 11 pale_moss_block 10
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~3 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
