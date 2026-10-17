# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0553/4224 | 主题内编号: b041/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·八角看台古罗马斗技场 (pale_garden_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 pale_oak_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 pale_oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 pale_oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 pale_oak_planks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_resin_bricks []
setblock ~-5 ~-4 ~-4 soul_lantern []
setblock ~5 ~-4 ~4 soul_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 bone 16
replaceitem block ~0 ~-2 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 2 string 10
replaceitem block ~0 ~-2 ~4 slot.container 3 gunpowder 9
replaceitem block ~0 ~-2 ~4 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-2 ~4 slot.container 5 spider_eye 9
replaceitem block ~0 ~-2 ~4 slot.container 9 pale_oak_log 20
replaceitem block ~0 ~-2 ~4 slot.container 10 pale_oak_sapling 9
replaceitem block ~0 ~-2 ~4 slot.container 11 pale_moss_block 14
replaceitem block ~0 ~-2 ~4 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-2 ~4 slot.container 13 diamond 3
replaceitem block ~0 ~-2 ~4 slot.container 14 golden_apple 4
loot insert ~0 ~-2 ~4 loot "rsf/pale_garden"
loot insert ~0 ~-2 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 pale_oak_planks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 air []
fill ~7 ~1 ~6 ~7 ~8 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 pale_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 pale_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 pale_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 pale_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 pale_oak_log []
setblock ~-7 ~10 ~-6 soul_lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 pale_oak_log []
setblock ~-7 ~10 ~6 soul_lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 pale_oak_log []
setblock ~7 ~10 ~-6 soul_lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 pale_oak_log []
setblock ~7 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 resin_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 pale_oak_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~-10 ~0 ~-3 ~-10 ~6 ~-3 pale_oak_log []
fill ~10 ~0 ~-3 ~10 ~6 ~-3 pale_oak_log []
setblock ~-10 ~7 ~-3 resin_block []
setblock ~10 ~7 ~-3 chiseled_resin_bricks []
setblock ~-10 ~8 ~-3 soul_lantern []
setblock ~10 ~8 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 11
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 13
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~6 ~1 ~4 slot.container 9 soul_lantern 4
replaceitem block ~6 ~1 ~4 slot.container 10 resin_brick 13
replaceitem block ~6 ~1 ~4 slot.container 11 pale_oak_log 18
replaceitem block ~6 ~1 ~4 slot.container 12 pale_oak_sapling 7
replaceitem block ~6 ~1 ~4 slot.container 13 pale_moss_block 12
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 13
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 16
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 3 spider_eye 7
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 5
replaceitem block ~-6 ~1 ~5 slot.container 5 resin_clump 15
replaceitem block ~-6 ~1 ~5 slot.container 9 soul_lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 10 resin_brick 18
replaceitem block ~-6 ~1 ~5 slot.container 11 pale_oak_log 16
replaceitem block ~-6 ~1 ~5 slot.container 12 pale_oak_sapling 5
replaceitem block ~-6 ~1 ~5 slot.container 13 pale_moss_block 10
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
