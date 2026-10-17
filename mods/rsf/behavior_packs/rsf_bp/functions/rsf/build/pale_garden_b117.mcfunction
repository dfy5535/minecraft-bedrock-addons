# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0629/4224 | 主题内编号: b117/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·环柱生态标本采集馆 (pale_garden_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
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
replaceitem block ~4 ~-2 ~3 slot.container 9 pale_oak_log 18
replaceitem block ~4 ~-2 ~3 slot.container 10 pale_oak_sapling 7
replaceitem block ~4 ~-2 ~3 slot.container 11 pale_moss_block 12
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 13
replaceitem block ~4 ~-2 ~3 slot.container 13 diamond 8
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 2
loot insert ~4 ~-2 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 resin_bricks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 pale_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 pale_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 pale_oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 pale_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 pale_oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 pale_oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 pale_oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 pale_oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 pale_oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 pale_oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 pale_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 pale_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 pale_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 pale_oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 pale_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 pale_oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 pale_oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 pale_oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 pale_oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 pale_oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 resin_bricks []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 glass []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~7 ~0 pale_oak_log []
setblock ~-9 ~8 ~0 resin_block []
setblock ~9 ~8 ~0 chiseled_resin_bricks []
setblock ~-9 ~9 ~0 soul_lantern []
setblock ~9 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_resin_bricks []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 3 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 11
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~3 slot.container 10 shield 1
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 5
replaceitem block ~5 ~1 ~3 slot.container 12 resin_brick 14
replaceitem block ~5 ~1 ~3 slot.container 13 pale_oak_log 19
replaceitem block ~5 ~1 ~3 slot.container 14 pale_oak_sapling 8
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 1 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 12 resin_brick 12
replaceitem block ~-5 ~1 ~4 slot.container 13 pale_oak_log 17
replaceitem block ~-5 ~1 ~4 slot.container 14 pale_oak_sapling 6
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
