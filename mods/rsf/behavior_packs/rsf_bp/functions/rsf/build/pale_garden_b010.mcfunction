# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0522/4224 | 主题内编号: b010/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·十字交叉深层地牢 (pale_garden_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 6格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 resin_bricks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 resin_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 resin_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

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

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 resin_bricks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 resin_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 resin_brick_wall []
setblock ~7 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 resin_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 stripped_pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 stripped_pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 stripped_pale_oak_log []
fill ~8 ~0 ~2 ~8 ~9 ~2 stripped_pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~-10 ~0 ~2 ~-10 ~5 ~2 pale_oak_log []
fill ~10 ~0 ~2 ~10 ~5 ~2 pale_oak_log []
setblock ~-10 ~6 ~2 resin_block []
setblock ~10 ~6 ~2 chiseled_resin_bricks []
setblock ~-10 ~7 ~2 soul_lantern []
setblock ~10 ~7 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 resin_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 13
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 10
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~-6 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 12 soul_lantern 4
replaceitem block ~-6 ~1 ~4 slot.container 13 resin_brick 13
replaceitem block ~-6 ~1 ~4 slot.container 14 pale_oak_log 18
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
