# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0551/4224 | 主题内编号: b039/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·永恒圣火图腾方尖塔 (pale_garden_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 deepslate_bricks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 string 10
replaceitem block ~2 ~-2 ~1 slot.container 1 gunpowder 9
replaceitem block ~2 ~-2 ~1 slot.container 2 ender_pearl 5
replaceitem block ~2 ~-2 ~1 slot.container 3 spider_eye 9
replaceitem block ~2 ~-2 ~1 slot.container 4 phantom_membrane 7
replaceitem block ~2 ~-2 ~1 slot.container 5 resin_clump 17
replaceitem block ~2 ~-2 ~1 slot.container 9 soul_lantern 8
replaceitem block ~2 ~-2 ~1 slot.container 10 resin_brick 17
replaceitem block ~2 ~-2 ~1 slot.container 11 pale_oak_log 22
replaceitem block ~2 ~-2 ~1 slot.container 12 pale_oak_sapling 4
replaceitem block ~2 ~-2 ~1 slot.container 13 pale_moss_block 9
replaceitem block ~2 ~-2 ~1 slot.container 14 iron_ingot 10
loot insert ~2 ~-2 ~1 loot "rsf/pale_garden"
loot insert ~2 ~-2 ~1 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 pale_oak_log []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 pale_oak_log []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 pale_oak_log []
fill ~4 ~1 ~3 ~4 ~11 ~3 pale_oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 pale_oak_fence []
setblock ~4 ~2 ~0 pale_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 pale_oak_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 deepslate_bricks []
fill ~0 ~17 ~0 ~0 ~18 ~0 chiseled_deepslate []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 pale_oak_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 pale_oak_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 pale_oak_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~0 ~-7 ~9 ~0 pale_oak_log []
fill ~7 ~0 ~0 ~7 ~9 ~0 pale_oak_log []
setblock ~-7 ~10 ~0 resin_block []
setblock ~7 ~10 ~0 chiseled_resin_bricks []
setblock ~-7 ~11 ~0 soul_lantern []
setblock ~7 ~11 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 phantom_membrane 10
replaceitem block ~3 ~1 ~1 slot.container 1 resin_clump 12
replaceitem block ~3 ~1 ~1 slot.container 2 bone 11
replaceitem block ~3 ~1 ~1 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 4 string 13
replaceitem block ~3 ~1 ~1 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 9 pale_moss_block 13
replaceitem block ~3 ~1 ~1 slot.container 10 iron_ingot 14
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 2
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 3
replaceitem block ~3 ~1 ~1 slot.container 13 iron_axe 1
replaceitem block ~3 ~1 ~1 slot.container 14 shield 1
loot insert ~3 ~1 ~1 loot "rsf/pale_garden"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 2 string 16
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 5 spider_eye 7
replaceitem block ~-3 ~1 ~2 slot.container 9 pale_moss_block 11
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 7
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 13 iron_axe 1
replaceitem block ~-3 ~1 ~2 slot.container 14 shield 1
loot insert ~-3 ~1 ~2 loot "rsf/pale_garden"
loot insert ~-3 ~1 ~2 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
