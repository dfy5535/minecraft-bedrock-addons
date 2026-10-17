# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0587/4224 | 主题内编号: b075/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·远古巨石环廊法阵 (pale_garden_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 pale_oak_planks []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 pale_oak_log []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 pale_oak_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 pale_oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 pale_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 pale_oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 pale_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 pale_oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 pale_oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 pale_oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 pale_oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 pale_oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 pale_oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 pale_oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 pale_oak_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 pale_oak_log []
fill ~7 ~1 ~6 ~7 ~7 ~6 pale_oak_log []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 pale_oak_log []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 pale_oak_log []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 pale_oak_log []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 pale_oak_log []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 pale_oak_log []
fill ~7 ~1 ~0 ~7 ~7 ~0 pale_oak_log []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 pale_oak_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 pale_oak_log []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 pale_oak_log []
fill ~7 ~1 ~4 ~7 ~7 ~4 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 pale_oak_log []
setblock ~-7 ~11 ~-6 soul_lantern []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 pale_oak_log []
setblock ~-7 ~11 ~6 soul_lantern []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 pale_oak_log []
setblock ~7 ~11 ~-6 soul_lantern []
fill ~7 ~8 ~6 ~7 ~10 ~6 pale_oak_log []
setblock ~7 ~11 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 pale_oak_log []
setblock ~0 ~4 ~-8 resin_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 pale_oak_log []
setblock ~0 ~4 ~8 resin_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 pale_oak_log []
setblock ~-9 ~4 ~0 resin_block []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 pale_oak_log []
setblock ~9 ~4 ~0 resin_block []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x9x2) ---
fill ~-10 ~0 ~1 ~-10 ~5 ~1 pale_oak_log []
fill ~10 ~0 ~1 ~10 ~5 ~1 pale_oak_log []
setblock ~-10 ~6 ~1 resin_block []
setblock ~10 ~6 ~1 chiseled_resin_bricks []
setblock ~-10 ~7 ~1 soul_lantern []
setblock ~10 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 13
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 10
replaceitem block ~6 ~1 ~4 slot.container 5 resin_clump 12
replaceitem block ~6 ~1 ~4 slot.container 9 pale_oak_log 22
replaceitem block ~6 ~1 ~4 slot.container 10 pale_oak_sapling 4
replaceitem block ~6 ~1 ~4 slot.container 11 pale_moss_block 9
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 1 spider_eye 7
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 5
replaceitem block ~-6 ~1 ~5 slot.container 3 resin_clump 15
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 pale_oak_log 20
replaceitem block ~-6 ~1 ~5 slot.container 10 pale_oak_sapling 9
replaceitem block ~-6 ~1 ~5 slot.container 11 pale_moss_block 14
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 3
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
