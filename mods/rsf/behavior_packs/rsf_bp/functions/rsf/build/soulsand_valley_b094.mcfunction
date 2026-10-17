# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3934/4224 | 主题内编号: b094/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·圆形圣泉祈祷亭 (soulsand_valley_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
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
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 21
replaceitem block ~-3 ~-3 ~2 slot.container 1 ghast_tear 12
replaceitem block ~-3 ~-3 ~2 slot.container 2 blaze_rod 13
replaceitem block ~-3 ~-3 ~2 slot.container 3 coal 16
replaceitem block ~-3 ~-3 ~2 slot.container 4 arrow 21
replaceitem block ~-3 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 9 golden_apple 3
replaceitem block ~-3 ~-3 ~2 slot.container 10 soul_lantern 8
replaceitem block ~-3 ~-3 ~2 slot.container 11 bone_block 15
replaceitem block ~-3 ~-3 ~2 slot.container 12 soul_sand 20
replaceitem block ~-3 ~-3 ~2 slot.container 13 soul_soil 21
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 14
loot insert ~-3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 bone_block []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 chiseled_polished_blackstone []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 chiseled_polished_blackstone []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 chiseled_polished_blackstone []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 chiseled_polished_blackstone []
fill ~-1 ~1 ~-4 ~-1 ~6 ~-4 chiseled_polished_blackstone []
fill ~-1 ~1 ~4 ~-1 ~6 ~4 chiseled_polished_blackstone []
fill ~1 ~1 ~-4 ~1 ~6 ~-4 chiseled_polished_blackstone []
fill ~1 ~1 ~4 ~1 ~6 ~4 chiseled_polished_blackstone []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 chiseled_polished_blackstone []
fill ~3 ~1 ~4 ~3 ~6 ~4 chiseled_polished_blackstone []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 chiseled_polished_blackstone []
fill ~5 ~1 ~4 ~5 ~6 ~4 chiseled_polished_blackstone []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 chiseled_polished_blackstone []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 chiseled_polished_blackstone []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 chiseled_polished_blackstone []
fill ~5 ~1 ~0 ~5 ~6 ~0 chiseled_polished_blackstone []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 chiseled_polished_blackstone []
fill ~5 ~1 ~2 ~5 ~6 ~2 chiseled_polished_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 polished_blackstone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 nether_brick_fence []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 chiseled_nether_bricks []
setblock ~-6 ~9 ~-4 soul_campfire []
setblock ~-6 ~8 ~4 chiseled_nether_bricks []
setblock ~-6 ~9 ~4 soul_campfire []
setblock ~6 ~8 ~-4 chiseled_nether_bricks []
setblock ~6 ~9 ~-4 soul_campfire []
setblock ~6 ~8 ~4 chiseled_nether_bricks []
setblock ~6 ~9 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_polished_blackstone []
setblock ~0 ~4 ~-6 crying_obsidian []
setblock ~0 ~5 ~-6 soul_campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_polished_blackstone []
setblock ~0 ~4 ~6 crying_obsidian []
setblock ~0 ~5 ~6 soul_campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_polished_blackstone []
setblock ~-7 ~4 ~0 crying_obsidian []
setblock ~-7 ~5 ~0 soul_campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_polished_blackstone []
setblock ~7 ~4 ~0 crying_obsidian []
setblock ~7 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~-1 ~-7 ~4 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~4 ~-1 bone_block []
fill ~-7 ~5 ~-1 ~7 ~5 ~-1 bone_block []
setblock ~0 ~6 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 ancient_debris []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 9 soul_soil 16
replaceitem block ~-4 ~1 ~2 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 11 quartz 18
replaceitem block ~-4 ~1 ~2 slot.container 12 obsidian 11
replaceitem block ~-4 ~1 ~2 slot.container 13 crying_obsidian 10
replaceitem block ~-4 ~1 ~2 slot.container 14 netherite_scrap 6
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
