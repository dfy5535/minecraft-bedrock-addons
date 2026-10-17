# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0525/4224 | 主题内编号: b013/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·地底熔炉苦工地牢 (pale_garden_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 pale_oak_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 pale_oak_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 pale_oak_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 pale_moss_block []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 resin_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 resin_clump 17
replaceitem block ~0 ~-5 ~4 slot.container 1 bone 16
replaceitem block ~0 ~-5 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 3 string 10
replaceitem block ~0 ~-5 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-5 ~4 slot.container 9 shield 1
replaceitem block ~0 ~-5 ~4 slot.container 10 soul_lantern 8
replaceitem block ~0 ~-5 ~4 slot.container 11 resin_brick 17
replaceitem block ~0 ~-5 ~4 slot.container 12 pale_oak_log 22
replaceitem block ~0 ~-5 ~4 slot.container 13 pale_oak_sapling 4
replaceitem block ~0 ~-5 ~4 slot.container 14 pale_moss_block 9
loot insert ~0 ~-5 ~4 loot "rsf/pale_garden"
loot insert ~0 ~-5 ~4 loot "chests/woodland_mansion"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 resin_clump 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 bone 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 16
replaceitem block ~0 ~-5 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 3
replaceitem block ~0 ~-5 ~-4 slot.container 9 shield 1
replaceitem block ~0 ~-5 ~-4 slot.container 10 soul_lantern 7
replaceitem block ~0 ~-5 ~-4 slot.container 11 resin_brick 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 pale_oak_log 21
replaceitem block ~0 ~-5 ~-4 slot.container 13 pale_oak_sapling 10
replaceitem block ~0 ~-5 ~-4 slot.container 14 pale_moss_block 8
loot insert ~0 ~-5 ~-4 loot "rsf/pale_garden"
loot insert ~0 ~-5 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~7 ~6 pale_oak_planks []
fill ~-5 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~7 ~-6 pale_oak_log []
fill ~-6 ~1 ~6 ~-6 ~7 ~6 pale_oak_log []
fill ~6 ~1 ~-6 ~6 ~7 ~-6 pale_oak_log []
fill ~6 ~1 ~6 ~6 ~7 ~6 pale_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 pale_oak_fence []
setblock ~6 ~2 ~0 pale_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 resin_bricks []
fill ~-6 ~8 ~-6 ~6 ~8 ~6 pale_oak_fence []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 air []
setblock ~-6 ~8 ~-6 pale_oak_log []
setblock ~-6 ~9 ~-6 soul_lantern []
setblock ~-6 ~8 ~6 pale_oak_log []
setblock ~-6 ~9 ~6 soul_lantern []
setblock ~6 ~8 ~-6 pale_oak_log []
setblock ~6 ~9 ~-6 soul_lantern []
setblock ~6 ~8 ~6 pale_oak_log []
setblock ~6 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~-1 ~-9 ~8 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~8 ~-1 pale_oak_log []
setblock ~-9 ~9 ~-1 resin_block []
setblock ~9 ~9 ~-1 chiseled_resin_bricks []
setblock ~-9 ~10 ~-1 soul_lantern []
setblock ~9 ~10 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 2 phantom_membrane 10
replaceitem block ~5 ~1 ~4 slot.container 3 resin_clump 12
replaceitem block ~5 ~1 ~4 slot.container 4 bone 11
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 2
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~5 ~1 ~4 slot.container 13 soul_lantern 8
replaceitem block ~5 ~1 ~4 slot.container 14 resin_brick 17
loot insert ~5 ~1 ~4 loot "rsf/pale_garden"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 phantom_membrane 5
replaceitem block ~-5 ~1 ~5 slot.container 1 resin_clump 15
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 4 string 16
replaceitem block ~-5 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 9 diamond 7
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 8
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_axe 1
replaceitem block ~-5 ~1 ~5 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~5 slot.container 13 soul_lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 14 resin_brick 15
loot insert ~-5 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
