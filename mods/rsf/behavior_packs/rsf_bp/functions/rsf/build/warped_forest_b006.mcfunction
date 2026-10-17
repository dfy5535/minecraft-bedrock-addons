# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3718/4224 | 主题内编号: b006/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·重檐飞角四方神龛 (warped_forest_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 quartz_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 1 magma_cream 6
replaceitem block ~2 ~-2 ~3 slot.container 2 string 13
replaceitem block ~2 ~-2 ~3 slot.container 3 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 4 gold_nugget 19
replaceitem block ~2 ~-2 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~2 ~-2 ~3 slot.container 9 netherite_scrap 5
replaceitem block ~2 ~-2 ~3 slot.container 10 golden_apple 7
replaceitem block ~2 ~-2 ~3 slot.container 11 warped_stem 22
replaceitem block ~2 ~-2 ~3 slot.container 12 shroomlight 6
replaceitem block ~2 ~-2 ~3 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~2 ~-2 ~3 slot.container 14 saddle 1
loot insert ~2 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 blackstone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 warped_stem []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 warped_stem []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 warped_stem []
fill ~4 ~1 ~5 ~4 ~7 ~5 warped_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 warped_fence []
setblock ~4 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 blackstone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 warped_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 warped_stem []
setblock ~0 ~4 ~-6 shroomlight []
setblock ~0 ~5 ~-6 shroomlight []
fill ~0 ~0 ~6 ~0 ~3 ~6 warped_stem []
setblock ~0 ~4 ~6 shroomlight []
setblock ~0 ~5 ~6 shroomlight []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 warped_stem []
setblock ~-5 ~4 ~0 shroomlight []
setblock ~-5 ~5 ~0 shroomlight []
fill ~5 ~0 ~0 ~5 ~3 ~0 warped_stem []
setblock ~5 ~4 ~0 shroomlight []
setblock ~5 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-5 ~0 ~6 ~-5 ~6 ~6 warped_stem []
setblock ~-5 ~7 ~6 crying_obsidian []
setblock ~-5 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 10 quartz 18
replaceitem block ~-3 ~1 ~4 slot.container 11 obsidian 13
replaceitem block ~-3 ~1 ~4 slot.container 12 crying_obsidian 10
replaceitem block ~-3 ~1 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 10 quartz 16
replaceitem block ~3 ~1 ~4 slot.container 11 obsidian 11
replaceitem block ~3 ~1 ~4 slot.container 12 crying_obsidian 8
replaceitem block ~3 ~1 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
