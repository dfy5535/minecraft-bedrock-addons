# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3910/4224 | 主题内编号: b070/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·风化坍塌阶梯祭台 (soulsand_valley_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 bone_block []

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 blackstone []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 bone_block []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 blackstone_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_polished_blackstone []
setblock ~0 ~4 ~-7 crying_obsidian []
setblock ~0 ~5 ~-7 soul_campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_polished_blackstone []
setblock ~0 ~4 ~7 crying_obsidian []
setblock ~0 ~5 ~7 soul_campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_polished_blackstone []
setblock ~-8 ~4 ~0 crying_obsidian []
setblock ~-8 ~5 ~0 soul_campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_polished_blackstone []
setblock ~8 ~4 ~0 crying_obsidian []
setblock ~8 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 bone_block []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 bone_block []
fill ~-8 ~6 ~-2 ~8 ~6 ~-2 bone_block []
setblock ~0 ~7 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 9 bone_block 16
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_sand 21
replaceitem block ~-5 ~1 ~3 slot.container 11 soul_soil 22
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 13 quartz 17
replaceitem block ~-5 ~1 ~3 slot.container 14 obsidian 10
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
