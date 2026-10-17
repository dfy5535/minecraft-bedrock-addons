# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3914/4224 | 主题内编号: b074/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字四象图腾柱阵 (soulsand_valley_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 ancient_debris []
setblock ~0 ~-6 ~0 soul_campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 blaze_rod 13
replaceitem block ~4 ~-3 ~0 slot.container 1 coal 16
replaceitem block ~4 ~-3 ~0 slot.container 2 arrow 21
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~0 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-3 ~0 slot.container 5 wither_skeleton_skull 5
replaceitem block ~4 ~-3 ~0 slot.container 9 golden_apple 8
replaceitem block ~4 ~-3 ~0 slot.container 10 soul_lantern 6
replaceitem block ~4 ~-3 ~0 slot.container 11 bone_block 13
replaceitem block ~4 ~-3 ~0 slot.container 12 soul_sand 18
replaceitem block ~4 ~-3 ~0 slot.container 13 soul_soil 19
replaceitem block ~4 ~-3 ~0 slot.container 14 gold_ingot 12
loot insert ~4 ~-3 ~0 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 blackstone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 blackstone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_polished_blackstone []
setblock ~-6 ~10 ~-5 soul_campfire []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_polished_blackstone []
setblock ~-6 ~10 ~5 soul_campfire []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_polished_blackstone []
setblock ~6 ~10 ~-5 soul_campfire []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_polished_blackstone []
setblock ~6 ~10 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 bone_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bone_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bone_block []
fill ~-8 ~5 ~2 ~8 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
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
replaceitem block ~-5 ~1 ~3 slot.container 9 soul_soil 17
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 11 quartz 19
replaceitem block ~-5 ~1 ~3 slot.container 12 obsidian 12
replaceitem block ~-5 ~1 ~3 slot.container 13 crying_obsidian 11
replaceitem block ~-5 ~1 ~3 slot.container 14 netherite_scrap 7
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0
