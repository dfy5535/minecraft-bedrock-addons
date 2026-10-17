# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0569/4224 | 主题内编号: b057/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·中央石棺帝王地下陵寝 (pale_garden_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 pale_oak_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 pale_oak_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 pale_oak_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 pale_moss_block []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 2 spider_eye 9
replaceitem block ~3 ~-4 ~2 slot.container 3 phantom_membrane 7
replaceitem block ~3 ~-4 ~2 slot.container 4 resin_clump 17
replaceitem block ~3 ~-4 ~2 slot.container 5 bone 16
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 10 diamond 6
replaceitem block ~3 ~-4 ~2 slot.container 11 golden_apple 7
replaceitem block ~3 ~-4 ~2 slot.container 12 iron_axe 1
replaceitem block ~3 ~-4 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-4 ~2 slot.container 14 soul_lantern 5
loot insert ~3 ~-4 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-4 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 pale_oak_planks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 resin_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 resin_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 resin_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 resin_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_resin_bricks []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 resin_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 pale_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 pale_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 pale_oak_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~1 ~-9 ~7 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~7 ~1 pale_oak_log []
setblock ~-9 ~8 ~1 resin_block []
setblock ~9 ~8 ~1 chiseled_resin_bricks []
setblock ~-9 ~9 ~1 soul_lantern []
setblock ~9 ~9 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_resin_bricks []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 11
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 13
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~5 ~1 ~4 slot.container 11 soul_lantern 8
replaceitem block ~5 ~1 ~4 slot.container 12 resin_brick 17
replaceitem block ~5 ~1 ~4 slot.container 13 pale_oak_log 22
replaceitem block ~5 ~1 ~4 slot.container 14 pale_oak_sapling 4
loot insert ~5 ~1 ~4 loot "rsf/pale_garden"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 16
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 3
replaceitem block ~-5 ~1 ~5 slot.container 3 spider_eye 7
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 5
replaceitem block ~-5 ~1 ~5 slot.container 5 resin_clump 15
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_axe 1
replaceitem block ~-5 ~1 ~5 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~5 slot.container 11 soul_lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 12 resin_brick 15
replaceitem block ~-5 ~1 ~5 slot.container 13 pale_oak_log 20
replaceitem block ~-5 ~1 ~5 slot.container 14 pale_oak_sapling 9
loot insert ~-5 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~5 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
