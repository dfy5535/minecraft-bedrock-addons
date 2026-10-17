# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3894/4224 | 主题内编号: b054/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·切石与伐木工匠棚屋 (soulsand_valley_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~9 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~9 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 blackstone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 blackstone [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 blackstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 bone_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 blackstone []
fill ~2 ~1 ~-4 ~6 ~7 ~4 blackstone []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 bone_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-5 ~-7 ~7 ~5 blackstone_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-5 ~7 ~7 ~5 blackstone_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~-6 ~8 ~4 blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-4 ~6 ~8 ~4 blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~5 ~8 ~4 blackstone_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 bone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 chiseled_nether_bricks []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 chiseled_nether_bricks []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 chiseled_nether_bricks []
fill ~8 ~0 ~2 ~8 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-1 ~-8 ~4 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~4 ~-1 bone_block []
fill ~-8 ~5 ~-1 ~8 ~5 ~-1 bone_block []
setblock ~0 ~6 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~2 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~2 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~2 slot.container 9 soul_soil 18
replaceitem block ~-5 ~1 ~2 slot.container 10 gold_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 11 quartz 20
replaceitem block ~-5 ~1 ~2 slot.container 12 obsidian 13
replaceitem block ~-5 ~1 ~2 slot.container 13 crying_obsidian 12
replaceitem block ~-5 ~1 ~2 slot.container 14 netherite_scrap 1
loot insert ~-5 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
