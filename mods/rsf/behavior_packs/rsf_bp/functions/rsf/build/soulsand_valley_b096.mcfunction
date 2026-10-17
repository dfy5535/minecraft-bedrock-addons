# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3936/4224 | 主题内编号: b096/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·高台三阶献祭神祠 (soulsand_valley_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bone_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bone_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 nether_brick []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 arrow 21
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 21
replaceitem block ~3 ~-3 ~2 slot.container 5 ghast_tear 12
replaceitem block ~3 ~-3 ~2 slot.container 9 soul_soil 21
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 14
replaceitem block ~3 ~-3 ~2 slot.container 11 quartz 16
replaceitem block ~3 ~-3 ~2 slot.container 12 obsidian 9
replaceitem block ~3 ~-3 ~2 slot.container 13 crying_obsidian 8
replaceitem block ~3 ~-3 ~2 slot.container 14 netherite_scrap 4
loot insert ~3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bone_block []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 polished_blackstone_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 nether_brick []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 polished_blackstone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 nether_brick []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~1 ~-7 ~6 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~6 ~1 bone_block []
fill ~-7 ~7 ~1 ~7 ~7 ~1 bone_block []
setblock ~0 ~8 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 bone_block 16
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_sand 21
replaceitem block ~-4 ~1 ~2 slot.container 13 soul_soil 22
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 8
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
