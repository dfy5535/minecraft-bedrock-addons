# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3898/4224 | 主题内编号: b058/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字拱顶家族陵墓 (soulsand_valley_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_campfire []
setblock ~4 ~-6 ~0 soul_campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 21
replaceitem block ~0 ~-4 ~3 slot.container 1 ghast_tear 12
replaceitem block ~0 ~-4 ~3 slot.container 2 blaze_rod 13
replaceitem block ~0 ~-4 ~3 slot.container 3 coal 16
replaceitem block ~0 ~-4 ~3 slot.container 4 arrow 21
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 9 crying_obsidian 11
replaceitem block ~0 ~-4 ~3 slot.container 10 netherite_scrap 7
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 2
replaceitem block ~0 ~-4 ~3 slot.container 12 soul_lantern 7
replaceitem block ~0 ~-4 ~3 slot.container 13 bone_block 14
replaceitem block ~0 ~-4 ~3 slot.container 14 soul_sand 19
loot insert ~0 ~-4 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~3 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 19
replaceitem block ~0 ~-4 ~-3 slot.container 1 ghast_tear 10
replaceitem block ~0 ~-4 ~-3 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-4 ~-3 slot.container 3 coal 22
replaceitem block ~0 ~-4 ~-3 slot.container 4 arrow 27
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 crying_obsidian 10
replaceitem block ~0 ~-4 ~-3 slot.container 10 netherite_scrap 6
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 8
replaceitem block ~0 ~-4 ~-3 slot.container 12 soul_lantern 6
replaceitem block ~0 ~-4 ~-3 slot.container 13 bone_block 13
replaceitem block ~0 ~-4 ~-3 slot.container 14 soul_sand 18
loot insert ~0 ~-4 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 blackstone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 blackstone []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 bone_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 chiseled_polished_blackstone []
setblock ~-8 ~5 ~-7 soul_campfire []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 chiseled_polished_blackstone []
setblock ~-8 ~5 ~7 soul_campfire []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 chiseled_polished_blackstone []
setblock ~8 ~5 ~-7 soul_campfire []
fill ~8 ~0 ~7 ~8 ~4 ~7 chiseled_polished_blackstone []
setblock ~8 ~5 ~7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~8 ~1 bone_block []
fill ~-8 ~9 ~1 ~8 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 9 quartz 22
replaceitem block ~-5 ~1 ~3 slot.container 10 obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 11 crying_obsidian 7
replaceitem block ~-5 ~1 ~3 slot.container 12 netherite_scrap 3
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 10
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
