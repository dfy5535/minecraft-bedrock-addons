# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0521/4224 | 主题内编号: b009/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·铁栏双室地下死牢 (pale_garden_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 soul_lantern []
setblock ~4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 10
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 4 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 5 resin_clump 17
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond 7
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 8
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_axe 1
replaceitem block ~4 ~-3 ~3 slot.container 12 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 13 soul_lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 14 resin_brick 15
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 pale_oak_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 resin_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 resin_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 resin_bricks []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 pale_oak_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 pale_oak_log []
setblock ~-6 ~8 ~-5 soul_lantern []
setblock ~-6 ~7 ~5 pale_oak_log []
setblock ~-6 ~8 ~5 soul_lantern []
setblock ~6 ~7 ~-5 pale_oak_log []
setblock ~6 ~8 ~-5 soul_lantern []
setblock ~6 ~7 ~5 pale_oak_log []
setblock ~6 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 pale_moss_block []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~2 ~-9 ~9 ~2 pale_oak_log []
fill ~9 ~0 ~2 ~9 ~9 ~2 pale_oak_log []
setblock ~-9 ~10 ~2 resin_block []
setblock ~9 ~10 ~2 chiseled_resin_bricks []
setblock ~-9 ~11 ~2 soul_lantern []
setblock ~9 ~11 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 chiseled_resin_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 13
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 9 pale_moss_block 11
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 7
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 13 iron_axe 1
replaceitem block ~5 ~1 ~3 slot.container 14 shield 1
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 5 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 9 pale_moss_block 9
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 14 shield 1
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
