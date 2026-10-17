# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0611/4224 | 主题内编号: b099/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·铁闸门瓮城防御堡 (pale_garden_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 pale_moss_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 stone_bricks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 phantom_membrane 7
replaceitem block ~4 ~-2 ~2 slot.container 1 resin_clump 17
replaceitem block ~4 ~-2 ~2 slot.container 2 bone 16
replaceitem block ~4 ~-2 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~2 slot.container 4 string 10
replaceitem block ~4 ~-2 ~2 slot.container 5 gunpowder 9
replaceitem block ~4 ~-2 ~2 slot.container 9 iron_axe 1
replaceitem block ~4 ~-2 ~2 slot.container 10 shield 1
replaceitem block ~4 ~-2 ~2 slot.container 11 soul_lantern 4
replaceitem block ~4 ~-2 ~2 slot.container 12 resin_brick 13
replaceitem block ~4 ~-2 ~2 slot.container 13 pale_oak_log 18
replaceitem block ~4 ~-2 ~2 slot.container 14 pale_oak_sapling 7
loot insert ~4 ~-2 ~2 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 deepslate_bricks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 resin_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 pale_oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-2 ~-9 ~9 ~-2 pale_oak_log []
fill ~9 ~0 ~-2 ~9 ~9 ~-2 pale_oak_log []
setblock ~-9 ~10 ~-2 resin_block []
setblock ~9 ~10 ~-2 chiseled_resin_bricks []
setblock ~-9 ~11 ~-2 soul_lantern []
setblock ~9 ~11 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 string 13
replaceitem block ~5 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~2 slot.container 4 phantom_membrane 10
replaceitem block ~5 ~1 ~2 slot.container 5 resin_clump 12
replaceitem block ~5 ~1 ~2 slot.container 9 pale_moss_block 10
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~2 slot.container 11 diamond 6
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~5 ~1 ~2 slot.container 13 iron_axe 1
replaceitem block ~5 ~1 ~2 slot.container 14 shield 1
loot insert ~5 ~1 ~2 loot "rsf/pale_garden"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 3
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 7
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~-5 ~1 ~3 slot.container 3 resin_clump 15
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 pale_moss_block 8
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_axe 1
replaceitem block ~-5 ~1 ~3 slot.container 14 shield 1
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~3 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
