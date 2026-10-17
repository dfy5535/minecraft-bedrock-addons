# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3804/4224 | 主题内编号: b092/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双层重檐供奉宝塔 (warped_forest_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 polished_blackstone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 ender_pearl 17
replaceitem block ~2 ~-2 ~3 slot.container 1 blaze_rod 12
replaceitem block ~2 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 3 magma_cream 6
replaceitem block ~2 ~-2 ~3 slot.container 4 string 13
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 9 obsidian 16
replaceitem block ~2 ~-2 ~3 slot.container 10 crying_obsidian 6
replaceitem block ~2 ~-2 ~3 slot.container 11 netherite_scrap 2
replaceitem block ~2 ~-2 ~3 slot.container 12 golden_apple 4
replaceitem block ~2 ~-2 ~3 slot.container 13 warped_stem 19
replaceitem block ~2 ~-2 ~3 slot.container 14 shroomlight 10
loot insert ~2 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 warped_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 warped_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 polished_blackstone_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 warped_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 warped_slab []
setblock ~0 ~12 ~0 shroomlight []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 warped_stem []
setblock ~0 ~4 ~-7 crying_obsidian []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 warped_stem []
setblock ~0 ~4 ~7 crying_obsidian []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 warped_stem []
setblock ~-6 ~4 ~0 crying_obsidian []
setblock ~-6 ~5 ~0 soul_lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 warped_stem []
setblock ~6 ~4 ~0 crying_obsidian []
setblock ~6 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-5 ~0 ~8 ~-5 ~7 ~8 warped_stem []
setblock ~-5 ~8 ~8 crying_obsidian []
setblock ~-5 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 16
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 12 quartz 22
replaceitem block ~-3 ~1 ~4 slot.container 13 obsidian 10
replaceitem block ~-3 ~1 ~4 slot.container 14 crying_obsidian 7
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 quartz 20
replaceitem block ~3 ~1 ~4 slot.container 13 obsidian 15
replaceitem block ~3 ~1 ~4 slot.container 14 crying_obsidian 12
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
