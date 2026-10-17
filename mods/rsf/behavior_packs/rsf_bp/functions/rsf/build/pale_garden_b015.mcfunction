# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0527/4224 | 主题内编号: b015/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·竖井阶梯深渊地牢 (pale_garden_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 soul_lantern []
setblock ~3 ~-6 ~-2 soul_lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 2 string 10
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 4 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 5 spider_eye 9
replaceitem block ~3 ~-4 ~2 slot.container 9 pale_moss_block 12
replaceitem block ~3 ~-4 ~2 slot.container 10 iron_ingot 13
replaceitem block ~3 ~-4 ~2 slot.container 11 diamond 8
replaceitem block ~3 ~-4 ~2 slot.container 12 golden_apple 2
replaceitem block ~3 ~-4 ~2 slot.container 13 iron_axe 1
replaceitem block ~3 ~-4 ~2 slot.container 14 shield 1
loot insert ~3 ~-4 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-4 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 pale_oak_planks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 pale_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 pale_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 deepslate_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_deepslate []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 pale_oak_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 pale_oak_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 pale_oak_log []
setblock ~-8 ~6 ~-2 resin_block []
setblock ~8 ~6 ~-2 chiseled_resin_bricks []
setblock ~-8 ~7 ~-2 soul_lantern []
setblock ~8 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 10
replaceitem block ~4 ~1 ~2 slot.container 1 resin_clump 12
replaceitem block ~4 ~1 ~2 slot.container 2 bone 11
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 string 13
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 pale_oak_log 18
replaceitem block ~4 ~1 ~2 slot.container 10 pale_oak_sapling 7
replaceitem block ~4 ~1 ~2 slot.container 11 pale_moss_block 12
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 13
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 8
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 16
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 5 spider_eye 7
replaceitem block ~-4 ~1 ~3 slot.container 9 pale_oak_log 16
replaceitem block ~-4 ~1 ~3 slot.container 10 pale_oak_sapling 5
replaceitem block ~-4 ~1 ~3 slot.container 11 pale_moss_block 10
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 6
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
