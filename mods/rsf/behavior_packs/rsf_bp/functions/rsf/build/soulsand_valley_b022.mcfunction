# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3862/4224 | 主题内编号: b022/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·廊柱书库秘藏室 (soulsand_valley_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 blaze_rod 13
replaceitem block ~4 ~-3 ~3 slot.container 1 coal 16
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 21
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 5 wither_skeleton_skull 5
replaceitem block ~4 ~-3 ~3 slot.container 9 bone_block 13
replaceitem block ~4 ~-3 ~3 slot.container 10 soul_sand 18
replaceitem block ~4 ~-3 ~3 slot.container 11 soul_soil 19
replaceitem block ~4 ~-3 ~3 slot.container 12 gold_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 13 quartz 21
replaceitem block ~4 ~-3 ~3 slot.container 14 obsidian 14
loot insert ~4 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bone_block []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 chiseled_polished_blackstone []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 chiseled_polished_blackstone []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 chiseled_polished_blackstone []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 chiseled_polished_blackstone []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 chiseled_polished_blackstone []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 chiseled_polished_blackstone []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 chiseled_polished_blackstone []
fill ~0 ~1 ~5 ~0 ~6 ~5 chiseled_polished_blackstone []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 chiseled_polished_blackstone []
fill ~2 ~1 ~5 ~2 ~6 ~5 chiseled_polished_blackstone []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 chiseled_polished_blackstone []
fill ~4 ~1 ~5 ~4 ~6 ~5 chiseled_polished_blackstone []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 chiseled_polished_blackstone []
fill ~6 ~1 ~5 ~6 ~6 ~5 chiseled_polished_blackstone []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 chiseled_polished_blackstone []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 chiseled_polished_blackstone []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 chiseled_polished_blackstone []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 chiseled_polished_blackstone []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 chiseled_polished_blackstone []
fill ~6 ~1 ~1 ~6 ~6 ~1 chiseled_polished_blackstone []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 chiseled_polished_blackstone []
fill ~6 ~1 ~3 ~6 ~6 ~3 chiseled_polished_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 bone_block []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 ancient_debris []
setblock ~0 ~11 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~7 ~0 bone_block []
fill ~-8 ~8 ~0 ~8 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 9 crying_obsidian 11
replaceitem block ~-5 ~1 ~3 slot.container 10 netherite_scrap 7
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 13 bone_block 14
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_sand 19
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
