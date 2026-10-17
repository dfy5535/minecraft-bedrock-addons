# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0612/4224 | 主题内编号: b100/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·半地下暗堡火力点 (pale_garden_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 resin_clump 17
replaceitem block ~3 ~-4 ~2 slot.container 1 bone 16
replaceitem block ~3 ~-4 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 3 string 10
replaceitem block ~3 ~-4 ~2 slot.container 4 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 5 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 9 pale_oak_sapling 6
replaceitem block ~3 ~-4 ~2 slot.container 10 pale_moss_block 11
replaceitem block ~3 ~-4 ~2 slot.container 11 iron_ingot 12
replaceitem block ~3 ~-4 ~2 slot.container 12 diamond 7
replaceitem block ~3 ~-4 ~2 slot.container 13 golden_apple 8
replaceitem block ~3 ~-4 ~2 slot.container 14 iron_axe 1
loot insert ~3 ~-4 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-4 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 pale_oak_planks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 resin_brick_wall []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 pale_oak_log []
setblock ~-5 ~8 ~-4 soul_lantern []
setblock ~-5 ~7 ~4 pale_oak_log []
setblock ~-5 ~8 ~4 soul_lantern []
setblock ~5 ~7 ~-4 pale_oak_log []
setblock ~5 ~8 ~-4 soul_lantern []
setblock ~5 ~7 ~4 pale_oak_log []
setblock ~5 ~8 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~-1 pale_oak_log []
fill ~8 ~0 ~-1 ~8 ~5 ~-1 pale_oak_log []
setblock ~-8 ~6 ~-1 resin_block []
setblock ~8 ~6 ~-1 chiseled_resin_bricks []
setblock ~-8 ~7 ~-1 soul_lantern []
setblock ~8 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_deepslate []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 4 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 resin_brick 12
replaceitem block ~-4 ~1 ~2 slot.container 14 pale_oak_log 17
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
