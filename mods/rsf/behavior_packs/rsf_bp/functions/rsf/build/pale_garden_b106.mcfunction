# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0618/4224 | 主题内编号: b106/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·琉璃穹顶魔药炼金室 (pale_garden_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 bone 16
replaceitem block ~0 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~2 slot.container 2 string 10
replaceitem block ~0 ~-3 ~2 slot.container 3 gunpowder 9
replaceitem block ~0 ~-3 ~2 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-3 ~2 slot.container 5 spider_eye 9
replaceitem block ~0 ~-3 ~2 slot.container 9 pale_moss_block 8
replaceitem block ~0 ~-3 ~2 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-3 ~2 slot.container 11 diamond 4
replaceitem block ~0 ~-3 ~2 slot.container 12 golden_apple 5
replaceitem block ~0 ~-3 ~2 slot.container 13 iron_axe 1
replaceitem block ~0 ~-3 ~2 slot.container 14 shield 1
loot insert ~0 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~2 loot "chests/woodland_mansion"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 3
replaceitem block ~0 ~-3 ~-2 slot.container 5 spider_eye 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 pale_moss_block 14
replaceitem block ~0 ~-3 ~-2 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 diamond 3
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_apple 4
replaceitem block ~0 ~-3 ~-2 slot.container 13 iron_axe 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 shield 1
loot insert ~0 ~-3 ~-2 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~-2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 resin_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 stripped_pale_oak_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 stripped_pale_oak_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 stripped_pale_oak_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 stripped_pale_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 stripped_pale_oak_log []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 stripped_pale_oak_log []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 stripped_pale_oak_log []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 stripped_pale_oak_log []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-8 ~0 ~1 ~-8 ~6 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~6 ~1 pale_oak_log []
setblock ~-8 ~7 ~1 resin_block []
setblock ~8 ~7 ~1 chiseled_resin_bricks []
setblock ~-8 ~8 ~1 soul_lantern []
setblock ~8 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 resin_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 13
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 5
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_axe 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 4
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
