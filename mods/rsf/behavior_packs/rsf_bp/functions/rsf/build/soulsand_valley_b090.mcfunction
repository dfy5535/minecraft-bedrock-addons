# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3930/4224 | 主题内编号: b090/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·八角攒尖悬灯神龛 (soulsand_valley_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 ghast_tear 12
replaceitem block ~0 ~-3 ~2 slot.container 1 blaze_rod 13
replaceitem block ~0 ~-3 ~2 slot.container 2 coal 16
replaceitem block ~0 ~-3 ~2 slot.container 3 arrow 21
replaceitem block ~0 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-3 ~2 slot.container 9 netherite_scrap 4
replaceitem block ~0 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~0 ~-3 ~2 slot.container 11 soul_lantern 11
replaceitem block ~0 ~-3 ~2 slot.container 12 bone_block 18
replaceitem block ~0 ~-3 ~2 slot.container 13 soul_sand 16
replaceitem block ~0 ~-3 ~2 slot.container 14 soul_soil 17
loot insert ~0 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~2 loot "chests/nether_bridge"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ghast_tear 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 blaze_rod 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 coal 22
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 27
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 netherite_scrap 3
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 soul_lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 bone_block 17
replaceitem block ~0 ~-3 ~-2 slot.container 13 soul_sand 22
replaceitem block ~0 ~-3 ~-2 slot.container 14 soul_soil 16
loot insert ~0 ~-3 ~-2 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 chiseled_polished_blackstone []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 chiseled_polished_blackstone []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 chiseled_polished_blackstone []
fill ~4 ~1 ~3 ~4 ~7 ~3 chiseled_polished_blackstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 bone_block []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 ancient_debris []
setblock ~0 ~11 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 chiseled_polished_blackstone []
setblock ~-7 ~5 ~-6 soul_campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 chiseled_polished_blackstone []
setblock ~-7 ~5 ~6 soul_campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 chiseled_polished_blackstone []
setblock ~7 ~5 ~-6 soul_campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 chiseled_polished_blackstone []
setblock ~7 ~5 ~6 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~-1 ~-7 ~5 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~5 ~-1 bone_block []
fill ~-7 ~6 ~-1 ~7 ~6 ~-1 bone_block []
setblock ~0 ~7 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 soul_campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 9 bone_block 15
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_sand 20
replaceitem block ~-4 ~1 ~2 slot.container 11 soul_soil 21
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 13 quartz 16
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 9
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
