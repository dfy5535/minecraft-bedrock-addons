# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0635/4224 | 主题内编号: b123/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·四角塔楼领主城堡复合体 (pale_garden_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 soul_lantern []
setblock ~5 ~-5 ~-4 soul_lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~-3 ~4 slot.container 1 spider_eye 9
replaceitem block ~5 ~-3 ~4 slot.container 2 phantom_membrane 7
replaceitem block ~5 ~-3 ~4 slot.container 3 resin_clump 17
replaceitem block ~5 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~5 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 9 iron_axe 1
replaceitem block ~5 ~-3 ~4 slot.container 10 shield 1
replaceitem block ~5 ~-3 ~4 slot.container 11 soul_lantern 6
replaceitem block ~5 ~-3 ~4 slot.container 12 resin_brick 15
replaceitem block ~5 ~-3 ~4 slot.container 13 pale_oak_log 20
replaceitem block ~5 ~-3 ~4 slot.container 14 pale_oak_sapling 9
loot insert ~5 ~-3 ~4 loot "rsf/pale_garden"
loot insert ~5 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 deepslate_bricks []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~11 ~-5 pale_oak_planks []
setblock ~-7 ~12 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~11 ~6 pale_oak_planks []
setblock ~-7 ~12 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~11 ~-5 pale_oak_planks []
setblock ~6 ~12 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~11 ~6 pale_oak_planks []
setblock ~6 ~12 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 pale_oak_planks []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 pale_oak_fence []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 air []
setblock ~-7 ~10 ~-6 pale_oak_log []
setblock ~-7 ~11 ~-6 soul_lantern []
setblock ~-7 ~10 ~6 pale_oak_log []
setblock ~-7 ~11 ~6 soul_lantern []
setblock ~7 ~10 ~-6 pale_oak_log []
setblock ~7 ~11 ~-6 soul_lantern []
setblock ~7 ~10 ~6 pale_oak_log []
setblock ~7 ~11 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 pale_oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x9x5) ---
fill ~-10 ~0 ~1 ~-10 ~8 ~1 pale_oak_log []
fill ~10 ~0 ~1 ~10 ~8 ~1 pale_oak_log []
setblock ~-10 ~9 ~1 resin_block []
setblock ~10 ~9 ~1 chiseled_resin_bricks []
setblock ~-10 ~10 ~1 soul_lantern []
setblock ~10 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 13
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 10
replaceitem block ~6 ~1 ~4 slot.container 5 resin_clump 12
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~6 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~6 ~1 ~4 slot.container 12 shield 1
replaceitem block ~6 ~1 ~4 slot.container 13 soul_lantern 6
replaceitem block ~6 ~1 ~4 slot.container 14 resin_brick 15
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 1 spider_eye 7
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 5
replaceitem block ~-6 ~1 ~5 slot.container 3 resin_clump 15
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 5
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_axe 1
replaceitem block ~-6 ~1 ~5 slot.container 12 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 13 soul_lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 14 resin_brick 13
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
