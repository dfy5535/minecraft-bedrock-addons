# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0515/4224 | 主题内编号: b003/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·环柱巨石方尖祭坛 (pale_garden_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 pale_oak_planks []
setblock ~0 ~-5 ~0 resin_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-2 ~-3 slot.container 1 spider_eye 9
replaceitem block ~0 ~-2 ~-3 slot.container 2 phantom_membrane 7
replaceitem block ~0 ~-2 ~-3 slot.container 3 resin_clump 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 bone 16
replaceitem block ~0 ~-2 ~-3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 pale_oak_log 16
replaceitem block ~0 ~-2 ~-3 slot.container 10 pale_oak_sapling 5
replaceitem block ~0 ~-2 ~-3 slot.container 11 pale_moss_block 10
replaceitem block ~0 ~-2 ~-3 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 13 diamond 6
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 7
loot insert ~0 ~-2 ~-3 loot "rsf/pale_garden"
loot insert ~0 ~-2 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 pale_oak_planks []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 pale_oak_log []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 pale_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 pale_oak_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 pale_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~9 ~-5 pale_oak_log []
fill ~-2 ~1 ~5 ~-2 ~9 ~5 pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~9 ~-5 pale_oak_log []
fill ~0 ~1 ~5 ~0 ~9 ~5 pale_oak_log []
fill ~2 ~1 ~-5 ~2 ~9 ~-5 pale_oak_log []
fill ~2 ~1 ~5 ~2 ~9 ~5 pale_oak_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 pale_oak_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 pale_oak_log []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 pale_oak_log []
fill ~6 ~1 ~5 ~6 ~9 ~5 pale_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~9 ~-3 pale_oak_log []
fill ~6 ~1 ~-3 ~6 ~9 ~-3 pale_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~9 ~-1 pale_oak_log []
fill ~6 ~1 ~-1 ~6 ~9 ~-1 pale_oak_log []
fill ~-6 ~1 ~1 ~-6 ~9 ~1 pale_oak_log []
fill ~6 ~1 ~1 ~6 ~9 ~1 pale_oak_log []
fill ~-6 ~1 ~3 ~-6 ~9 ~3 pale_oak_log []
fill ~6 ~1 ~3 ~6 ~9 ~3 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 pale_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_deepslate []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~1 ~-9 ~8 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~8 ~1 pale_oak_log []
setblock ~-9 ~9 ~1 resin_block []
setblock ~9 ~9 ~1 chiseled_resin_bricks []
setblock ~-9 ~10 ~1 soul_lantern []
setblock ~9 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_deepslate []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 13
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 5 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~5 ~1 ~3 slot.container 13 soul_lantern 5
replaceitem block ~5 ~1 ~3 slot.container 14 resin_brick 14
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 3 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 14 resin_brick 12
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
