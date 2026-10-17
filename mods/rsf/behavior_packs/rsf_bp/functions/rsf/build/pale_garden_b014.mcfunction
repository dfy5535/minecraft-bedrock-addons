# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0526/4224 | 主题内编号: b014/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·暗渠蓄水池秘境地牢 (pale_garden_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 6格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 resin_bricks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 resin_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 pale_oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 4 resin_clump 17
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_axe 1
replaceitem block ~4 ~-3 ~3 slot.container 11 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 12 soul_lantern 4
replaceitem block ~4 ~-3 ~3 slot.container 13 resin_brick 13
replaceitem block ~4 ~-3 ~3 slot.container 14 pale_oak_log 18
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 resin_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 pale_moss_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 resin_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 pale_oak_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~2 ~-9 ~9 ~2 pale_oak_log []
fill ~9 ~0 ~2 ~9 ~9 ~2 pale_oak_log []
setblock ~-9 ~10 ~2 resin_block []
setblock ~9 ~10 ~2 chiseled_resin_bricks []
setblock ~-9 ~11 ~2 soul_lantern []
setblock ~9 ~11 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 2 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 resin_brick 15
replaceitem block ~-5 ~1 ~3 slot.container 12 pale_oak_log 20
replaceitem block ~-5 ~1 ~3 slot.container 13 pale_oak_sapling 9
replaceitem block ~-5 ~1 ~3 slot.container 14 pale_moss_block 14
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
