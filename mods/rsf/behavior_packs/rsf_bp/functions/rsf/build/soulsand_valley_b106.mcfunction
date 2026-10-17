# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3946/4224 | 主题内编号: b106/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·琉璃穹顶魔药炼金室 (soulsand_valley_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 nether_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 nether_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 nether_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 nether_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 nether_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 chiseled_polished_blackstone []
setblock ~-7 ~5 ~-6 soul_campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 chiseled_polished_blackstone []
setblock ~-7 ~5 ~6 soul_campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 chiseled_polished_blackstone []
setblock ~7 ~5 ~-6 soul_campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 chiseled_polished_blackstone []
setblock ~7 ~5 ~6 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~6 ~-1 bone_block []
fill ~-7 ~7 ~-1 ~7 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 ancient_debris []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 12
replaceitem block ~-4 ~1 ~2 slot.container 11 bone_block 12
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_sand 17
replaceitem block ~-4 ~1 ~2 slot.container 13 soul_soil 18
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 11
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
