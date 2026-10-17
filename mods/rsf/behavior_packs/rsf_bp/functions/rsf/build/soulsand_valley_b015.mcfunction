# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3855/4224 | 主题内编号: b015/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·竖井阶梯深渊地牢 (soulsand_valley_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~5 ~-3 ~0 slot.container 1 rotten_flesh 13
replaceitem block ~5 ~-3 ~0 slot.container 2 wither_skeleton_skull 5
replaceitem block ~5 ~-3 ~0 slot.container 3 bone 21
replaceitem block ~5 ~-3 ~0 slot.container 4 ghast_tear 12
replaceitem block ~5 ~-3 ~0 slot.container 5 blaze_rod 13
replaceitem block ~5 ~-3 ~0 slot.container 9 soul_sand 17
replaceitem block ~5 ~-3 ~0 slot.container 10 soul_soil 18
replaceitem block ~5 ~-3 ~0 slot.container 11 gold_ingot 11
replaceitem block ~5 ~-3 ~0 slot.container 12 quartz 20
replaceitem block ~5 ~-3 ~0 slot.container 13 obsidian 13
replaceitem block ~5 ~-3 ~0 slot.container 14 crying_obsidian 12
loot insert ~5 ~-3 ~0 loot "rsf/soulsand_valley"
loot insert ~5 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 polished_blackstone_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 bone_block []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 bone_block []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 bone_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 polished_blackstone_bricks []
fill ~0 ~13 ~0 ~0 ~16 ~0 crying_obsidian []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 basalt []
setblock ~-7 ~5 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 basalt []
setblock ~-7 ~5 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 basalt []
setblock ~7 ~5 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 basalt []
setblock ~7 ~5 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~5 ~0 bone_block []
fill ~-7 ~6 ~0 ~7 ~6 ~0 bone_block []
setblock ~0 ~7 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 crying_obsidian []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 1 bone 16
replaceitem block ~4 ~1 ~2 slot.container 2 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 3 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 4 coal 19
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 9 obsidian 13
replaceitem block ~4 ~1 ~2 slot.container 10 crying_obsidian 12
replaceitem block ~4 ~1 ~2 slot.container 11 netherite_scrap 1
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 13 soul_lantern 8
replaceitem block ~4 ~1 ~2 slot.container 14 bone_block 15
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 1 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 2 coal 22
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 9 obsidian 11
replaceitem block ~-4 ~1 ~3 slot.container 10 crying_obsidian 10
replaceitem block ~-4 ~1 ~3 slot.container 11 netherite_scrap 6
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_lantern 6
replaceitem block ~-4 ~1 ~3 slot.container 14 bone_block 13
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
