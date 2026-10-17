# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3888/4224 | 主题内编号: b048/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·阶梯王座巅峰试炼台 (soulsand_valley_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bone_block [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bone_block [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 nether_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 polished_blackstone_bricks []
setblock ~0 ~-6 ~0 gilded_blackstone []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_campfire []
setblock ~2 ~-5 ~0 soul_campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 blaze_rod 13
replaceitem block ~0 ~-3 ~-4 slot.container 1 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 21
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 5 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~-4 slot.container 9 bone_block 18
replaceitem block ~0 ~-3 ~-4 slot.container 10 soul_sand 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 soul_soil 17
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 quartz 19
replaceitem block ~0 ~-3 ~-4 slot.container 14 obsidian 12
loot insert ~0 ~-3 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 bone_block []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 polished_blackstone_bricks []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 nether_brick []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 chiseled_nether_bricks []
setblock ~-7 ~10 ~-6 soul_campfire []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 chiseled_nether_bricks []
setblock ~-7 ~10 ~6 soul_campfire []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 chiseled_nether_bricks []
setblock ~7 ~10 ~-6 soul_campfire []
fill ~7 ~7 ~6 ~7 ~9 ~6 chiseled_nether_bricks []
setblock ~7 ~10 ~6 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~2 ~-9 ~8 ~2 bone_block []
fill ~9 ~0 ~2 ~9 ~8 ~2 bone_block []
fill ~-9 ~9 ~2 ~9 ~9 ~2 bone_block []
setblock ~0 ~10 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~4 slot.container 1 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 2 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 quartz 19
replaceitem block ~-6 ~1 ~4 slot.container 10 obsidian 12
replaceitem block ~-6 ~1 ~4 slot.container 11 crying_obsidian 11
replaceitem block ~-6 ~1 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~-6 ~1 ~4 slot.container 14 soul_lantern 7
loot insert ~-6 ~1 ~4 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
