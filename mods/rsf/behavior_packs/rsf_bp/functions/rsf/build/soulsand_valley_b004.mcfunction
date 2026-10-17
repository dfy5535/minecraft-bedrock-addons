# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3844/4224 | 主题内编号: b004/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子火盆高台神坛 (soulsand_valley_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace fire
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 bone_block [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 bone_block [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 nether_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 nether_brick []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bone_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 wither_skeleton_skull 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 21
replaceitem block ~-3 ~-3 ~2 slot.container 2 ghast_tear 12
replaceitem block ~-3 ~-3 ~2 slot.container 3 blaze_rod 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 coal 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 21
replaceitem block ~-3 ~-3 ~2 slot.container 9 soul_sand 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 soul_soil 20
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 13
replaceitem block ~-3 ~-3 ~2 slot.container 12 quartz 22
replaceitem block ~-3 ~-3 ~2 slot.container 13 obsidian 8
replaceitem block ~-3 ~-3 ~2 slot.container 14 crying_obsidian 7
loot insert ~-3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 bone_block []
fill ~2 ~1 ~-4 ~7 ~8 ~4 bone_block []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 polished_blackstone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 chiseled_nether_bricks []
setblock ~-7 ~10 ~-4 soul_campfire []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 chiseled_nether_bricks []
setblock ~-7 ~10 ~4 soul_campfire []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 chiseled_nether_bricks []
setblock ~7 ~10 ~-4 soul_campfire []
fill ~7 ~7 ~4 ~7 ~9 ~4 chiseled_nether_bricks []
setblock ~7 ~10 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 polished_blackstone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_nether_bricks []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_nether_bricks []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 nether_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~1 ~-9 ~4 ~1 bone_block []
fill ~9 ~0 ~1 ~9 ~4 ~1 bone_block []
fill ~-9 ~5 ~1 ~9 ~5 ~1 bone_block []
setblock ~0 ~6 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 9 soul_soil 17
replaceitem block ~-6 ~1 ~2 slot.container 10 gold_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 11 quartz 19
replaceitem block ~-6 ~1 ~2 slot.container 12 obsidian 12
replaceitem block ~-6 ~1 ~2 slot.container 13 crying_obsidian 11
replaceitem block ~-6 ~1 ~2 slot.container 14 netherite_scrap 7
loot insert ~-6 ~1 ~2 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
