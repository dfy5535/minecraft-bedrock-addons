# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3875/4224 | 主题内编号: b035/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·巨石垒砌古战石冢 (soulsand_valley_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bone_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 arrow 21
replaceitem block ~-3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~-3 ~-3 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 21
replaceitem block ~-3 ~-3 ~2 slot.container 5 ghast_tear 12
replaceitem block ~-3 ~-3 ~2 slot.container 9 quartz 22
replaceitem block ~-3 ~-3 ~2 slot.container 10 obsidian 8
replaceitem block ~-3 ~-3 ~2 slot.container 11 crying_obsidian 7
replaceitem block ~-3 ~-3 ~2 slot.container 12 netherite_scrap 3
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 5
replaceitem block ~-3 ~-3 ~2 slot.container 14 soul_lantern 10
loot insert ~-3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 basalt []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 basalt []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 basalt []
fill ~4 ~1 ~3 ~4 ~7 ~3 basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 bone_block []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 bone_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 crying_obsidian []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 basalt []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 soul_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 basalt []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 basalt []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 basalt []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~5 ~0 bone_block []
fill ~-7 ~6 ~0 ~7 ~6 ~0 bone_block []
setblock ~0 ~7 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 coal 19
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 4 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 5 bone 16
replaceitem block ~4 ~1 ~2 slot.container 9 obsidian 12
replaceitem block ~4 ~1 ~2 slot.container 10 crying_obsidian 11
replaceitem block ~4 ~1 ~2 slot.container 11 netherite_scrap 7
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 13 soul_lantern 7
replaceitem block ~4 ~1 ~2 slot.container 14 bone_block 14
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 4 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 9 obsidian 10
replaceitem block ~-4 ~1 ~3 slot.container 10 crying_obsidian 9
replaceitem block ~-4 ~1 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_lantern 12
replaceitem block ~-4 ~1 ~3 slot.container 14 bone_block 12
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0
