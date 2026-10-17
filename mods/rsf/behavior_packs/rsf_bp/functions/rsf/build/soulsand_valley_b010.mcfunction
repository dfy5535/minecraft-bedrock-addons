# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3850/4224 | 主题内编号: b010/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字交叉深层地牢 (soulsand_valley_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 6格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~8 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~8 ~8 air [] replace fire
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_campfire []
setblock ~5 ~-7 ~0 soul_campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 21
replaceitem block ~0 ~-5 ~4 slot.container 1 ghast_tear 12
replaceitem block ~0 ~-5 ~4 slot.container 2 blaze_rod 13
replaceitem block ~0 ~-5 ~4 slot.container 3 coal 16
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 21
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-5 ~4 slot.container 9 soul_soil 22
replaceitem block ~0 ~-5 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 11 quartz 17
replaceitem block ~0 ~-5 ~4 slot.container 12 obsidian 10
replaceitem block ~0 ~-5 ~4 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-5 ~4 slot.container 14 netherite_scrap 5
loot insert ~0 ~-5 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~4 loot "chests/nether_bridge"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 19
replaceitem block ~0 ~-5 ~-4 slot.container 1 ghast_tear 10
replaceitem block ~0 ~-5 ~-4 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-5 ~-4 slot.container 3 coal 22
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 27
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 soul_soil 21
replaceitem block ~0 ~-5 ~-4 slot.container 10 gold_ingot 14
replaceitem block ~0 ~-5 ~-4 slot.container 11 quartz 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 obsidian 9
replaceitem block ~0 ~-5 ~-4 slot.container 13 crying_obsidian 8
replaceitem block ~0 ~-5 ~-4 slot.container 14 netherite_scrap 4
loot insert ~0 ~-5 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 blackstone []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 blackstone []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 polished_blackstone_wall []
setblock ~7 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 blackstone_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-7 ~4 ~-1 ~-7 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_nether_bricks []
setblock ~0 ~4 ~-7 gilded_blackstone []
setblock ~0 ~5 ~-7 soul_campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_nether_bricks []
setblock ~0 ~4 ~7 gilded_blackstone []
setblock ~0 ~5 ~7 soul_campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_nether_bricks []
setblock ~-8 ~4 ~0 gilded_blackstone []
setblock ~-8 ~5 ~0 soul_campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_nether_bricks []
setblock ~8 ~4 ~0 gilded_blackstone []
setblock ~8 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~0 ~0 ~-9 ~5 ~0 bone_block []
fill ~9 ~0 ~0 ~9 ~5 ~0 bone_block []
fill ~-9 ~6 ~0 ~9 ~6 ~0 bone_block []
setblock ~0 ~7 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 24
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~4 slot.container 9 bone_block 12
replaceitem block ~-6 ~1 ~4 slot.container 10 soul_sand 17
replaceitem block ~-6 ~1 ~4 slot.container 11 soul_soil 18
replaceitem block ~-6 ~1 ~4 slot.container 12 gold_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 13 quartz 20
replaceitem block ~-6 ~1 ~4 slot.container 14 obsidian 13
loot insert ~-6 ~1 ~4 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
