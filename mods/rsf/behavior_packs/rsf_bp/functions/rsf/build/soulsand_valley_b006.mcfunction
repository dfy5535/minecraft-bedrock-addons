# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3846/4224 | 主题内编号: b006/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·重檐飞角四方神龛 (soulsand_valley_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 blaze_rod 13
replaceitem block ~3 ~-3 ~2 slot.container 1 coal 16
replaceitem block ~3 ~-3 ~2 slot.container 2 arrow 21
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 5 wither_skeleton_skull 5
replaceitem block ~3 ~-3 ~2 slot.container 9 soul_soil 22
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 11 quartz 17
replaceitem block ~3 ~-3 ~2 slot.container 12 obsidian 10
replaceitem block ~3 ~-3 ~2 slot.container 13 crying_obsidian 9
replaceitem block ~3 ~-3 ~2 slot.container 14 netherite_scrap 5
loot insert ~3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 chiseled_polished_blackstone []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 chiseled_polished_blackstone []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 chiseled_polished_blackstone []
fill ~5 ~1 ~4 ~5 ~8 ~4 chiseled_polished_blackstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 blackstone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 polished_blackstone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 ancient_debris []
setblock ~0 ~13 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~6 ~-1 bone_block []
fill ~-7 ~7 ~-1 ~7 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 11 bone_block 17
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_sand 22
replaceitem block ~-4 ~1 ~2 slot.container 13 soul_soil 16
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 9
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
