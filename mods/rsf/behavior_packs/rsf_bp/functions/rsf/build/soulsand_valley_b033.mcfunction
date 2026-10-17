# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3873/4224 | 主题内编号: b033/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·太阳金顶高耸方尖碑 (soulsand_valley_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace fire
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 nether_brick [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 nether_brick [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

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

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 nether_brick []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 bone_block []
fill ~-2 ~5 ~-1 ~2 ~11 ~1 blackstone []
fill ~-2 ~1 ~-1 ~2 ~10 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 polished_blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 bone_block []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 nether_brick []
fill ~0 ~17 ~0 ~0 ~20 ~0 gilded_blackstone []
setblock ~0 ~21 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~4 ~-5 basalt []
setblock ~-6 ~5 ~-5 soul_lantern []
fill ~-6 ~0 ~5 ~-6 ~4 ~5 basalt []
setblock ~-6 ~5 ~5 soul_lantern []
fill ~6 ~0 ~-5 ~6 ~4 ~-5 basalt []
setblock ~6 ~5 ~-5 soul_lantern []
fill ~6 ~0 ~5 ~6 ~4 ~5 basalt []
setblock ~6 ~5 ~5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-6 ~0 ~1 ~-6 ~8 ~1 bone_block []
fill ~6 ~0 ~1 ~6 ~8 ~1 bone_block []
fill ~-6 ~9 ~1 ~6 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ghast_tear 7
replaceitem block ~3 ~1 ~1 slot.container 1 blaze_rod 8
replaceitem block ~3 ~1 ~1 slot.container 2 coal 19
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 24
replaceitem block ~3 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~1 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~1 slot.container 9 soul_lantern 8
replaceitem block ~3 ~1 ~1 slot.container 10 bone_block 15
replaceitem block ~3 ~1 ~1 slot.container 11 soul_sand 20
replaceitem block ~3 ~1 ~1 slot.container 12 soul_soil 21
replaceitem block ~3 ~1 ~1 slot.container 13 gold_ingot 14
replaceitem block ~3 ~1 ~1 slot.container 14 quartz 16
loot insert ~3 ~1 ~1 loot "rsf/soulsand_valley"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 coal 22
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 27
replaceitem block ~-3 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-3 ~1 ~2 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 19
replaceitem block ~-3 ~1 ~2 slot.container 9 soul_lantern 6
replaceitem block ~-3 ~1 ~2 slot.container 10 bone_block 13
replaceitem block ~-3 ~1 ~2 slot.container 11 soul_sand 18
replaceitem block ~-3 ~1 ~2 slot.container 12 soul_soil 19
replaceitem block ~-3 ~1 ~2 slot.container 13 gold_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 14 quartz 21
loot insert ~-3 ~1 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~1 ~2 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
