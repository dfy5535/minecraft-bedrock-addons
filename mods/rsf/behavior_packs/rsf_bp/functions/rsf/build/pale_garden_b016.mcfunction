# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0528/4224 | 主题内编号: b016/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·要塞地底重装暗牢 (pale_garden_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 pale_oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 soul_lantern []
setblock ~5 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 9
replaceitem block ~0 ~-4 ~4 slot.container 1 phantom_membrane 7
replaceitem block ~0 ~-4 ~4 slot.container 2 resin_clump 17
replaceitem block ~0 ~-4 ~4 slot.container 3 bone 16
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 5 string 10
replaceitem block ~0 ~-4 ~4 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~4 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~4 slot.container 11 shield 1
replaceitem block ~0 ~-4 ~4 slot.container 12 soul_lantern 9
replaceitem block ~0 ~-4 ~4 slot.container 13 resin_brick 18
replaceitem block ~0 ~-4 ~4 slot.container 14 pale_oak_log 16
loot insert ~0 ~-4 ~4 loot "rsf/pale_garden"
loot insert ~0 ~-4 ~4 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 spider_eye 7
replaceitem block ~0 ~-4 ~-4 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 resin_clump 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 16
replaceitem block ~0 ~-4 ~-4 slot.container 9 golden_apple 3
replaceitem block ~0 ~-4 ~-4 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 shield 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 soul_lantern 8
replaceitem block ~0 ~-4 ~-4 slot.container 13 resin_brick 17
replaceitem block ~0 ~-4 ~-4 slot.container 14 pale_oak_log 22
loot insert ~0 ~-4 ~-4 loot "rsf/pale_garden"
loot insert ~0 ~-4 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 pale_oak_planks []
setblock ~-7 ~10 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 pale_oak_planks []
setblock ~-7 ~10 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 pale_oak_planks []
setblock ~6 ~10 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 pale_oak_planks []
setblock ~6 ~10 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 pale_oak_planks []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 resin_brick_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 pale_oak_log []
setblock ~-7 ~9 ~-6 soul_lantern []
setblock ~-7 ~8 ~6 pale_oak_log []
setblock ~-7 ~9 ~6 soul_lantern []
setblock ~7 ~8 ~-6 pale_oak_log []
setblock ~7 ~9 ~-6 soul_lantern []
setblock ~7 ~8 ~6 pale_oak_log []
setblock ~7 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 pale_oak_log []
setblock ~-8 ~6 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 pale_oak_log []
setblock ~-8 ~6 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 pale_oak_log []
setblock ~8 ~6 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 pale_oak_log []
setblock ~8 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~-10 ~0 ~2 ~-10 ~6 ~2 pale_oak_log []
fill ~10 ~0 ~2 ~10 ~6 ~2 pale_oak_log []
setblock ~-10 ~7 ~2 resin_block []
setblock ~10 ~7 ~2 chiseled_resin_bricks []
setblock ~-10 ~8 ~2 soul_lantern []
setblock ~10 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 resin_clump 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 13
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 10 diamond 6
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~-6 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 14 soul_lantern 5
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
