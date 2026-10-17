# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0544/4224 | 主题内编号: b032/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·断顶残垣古哨塔 (pale_garden_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~14 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~14 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~14 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~14 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 pale_oak_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 resin_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 pale_oak_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 pale_oak_planks []
setblock ~0 ~-6 ~0 chiseled_resin_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 10
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~-2 slot.container 4 spider_eye 9
replaceitem block ~0 ~-3 ~-2 slot.container 5 phantom_membrane 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 shield 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 soul_lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 resin_brick 15
replaceitem block ~0 ~-3 ~-2 slot.container 12 pale_oak_log 20
replaceitem block ~0 ~-3 ~-2 slot.container 13 pale_oak_sapling 9
replaceitem block ~0 ~-3 ~-2 slot.container 14 pale_moss_block 14
loot insert ~0 ~-3 ~-2 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~-2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~10 ~4 stone_bricks []
fill ~-3 ~1 ~-3 ~3 ~9 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~10 ~-4 pale_oak_log []
fill ~-4 ~1 ~4 ~-4 ~10 ~4 pale_oak_log []
fill ~4 ~1 ~-4 ~4 ~10 ~-4 pale_oak_log []
fill ~4 ~1 ~4 ~4 ~10 ~4 pale_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 resin_brick_wall []
setblock ~4 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~10 ~-4 ~4 ~10 ~4 pale_oak_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-4 ~9 ~-1 ~-4 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_deepslate []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 pale_oak_log []
fill ~7 ~0 ~-1 ~7 ~7 ~-1 pale_oak_log []
setblock ~-7 ~8 ~-1 resin_block []
setblock ~7 ~8 ~-1 chiseled_resin_bricks []
setblock ~-7 ~9 ~-1 soul_lantern []
setblock ~7 ~9 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 resin_clump 12
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 3 string 13
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~-3 ~1 ~2 slot.container 9 pale_oak_sapling 9
replaceitem block ~-3 ~1 ~2 slot.container 10 pale_moss_block 14
replaceitem block ~-3 ~1 ~2 slot.container 11 iron_ingot 8
replaceitem block ~-3 ~1 ~2 slot.container 12 diamond 3
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_axe 1
loot insert ~-3 ~1 ~2 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
