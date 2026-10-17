# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3836/4224 | 主题内编号: b124/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·三层重檐帝王阁楼与秘库 (warped_forest_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~12 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~12 ~9 air [] replace fire
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 warped_planks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 warped_planks [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 warped_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 blackstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 polished_blackstone_bricks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 ender_pearl 17
replaceitem block ~3 ~-3 ~5 slot.container 1 blaze_rod 12
replaceitem block ~3 ~-3 ~5 slot.container 2 ghast_tear 11
replaceitem block ~3 ~-3 ~5 slot.container 3 magma_cream 6
replaceitem block ~3 ~-3 ~5 slot.container 4 string 13
replaceitem block ~3 ~-3 ~5 slot.container 5 bone 12
replaceitem block ~3 ~-3 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~3 ~-3 ~5 slot.container 10 saddle 1
replaceitem block ~3 ~-3 ~5 slot.container 11 gold_ingot 13
replaceitem block ~3 ~-3 ~5 slot.container 12 quartz 22
replaceitem block ~3 ~-3 ~5 slot.container 13 obsidian 10
replaceitem block ~3 ~-3 ~5 slot.container 14 crying_obsidian 7
loot insert ~3 ~-3 ~5 loot "rsf/warped_forest"
loot insert ~3 ~-3 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 warped_planks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 warped_slab []
fill ~-4 ~5 ~-6 ~4 ~9 ~6 polished_blackstone_bricks []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-8 ~6 ~9 ~8 warped_slab []
fill ~-4 ~10 ~-6 ~4 ~11 ~6 polished_blackstone_bricks []
fill ~-5 ~12 ~-7 ~5 ~12 ~7 warped_slab []
setblock ~0 ~13 ~0 shroomlight []
setblock ~0 ~14 ~0 soul_lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x9x6) ---
fill ~-6 ~0 ~9 ~-6 ~9 ~9 warped_stem []
setblock ~-6 ~10 ~9 crying_obsidian []
setblock ~-6 ~11 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 string 16
replaceitem block ~-4 ~1 ~6 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~6 slot.container 2 gold_nugget 22
replaceitem block ~-4 ~1 ~6 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~6 slot.container 4 ender_pearl 12
replaceitem block ~-4 ~1 ~6 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~6 slot.container 9 netherite_scrap 1
replaceitem block ~-4 ~1 ~6 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~6 slot.container 11 warped_stem 18
replaceitem block ~-4 ~1 ~6 slot.container 12 shroomlight 9
replaceitem block ~-4 ~1 ~6 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~6 slot.container 14 saddle 1
loot insert ~-4 ~1 ~6 loot "rsf/warped_forest"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 gold_nugget 17
replaceitem block ~4 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 15
replaceitem block ~4 ~1 ~6 slot.container 3 blaze_rod 10
replaceitem block ~4 ~1 ~6 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~6 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~6 slot.container 9 netherite_scrap 6
replaceitem block ~4 ~1 ~6 slot.container 10 golden_apple 8
replaceitem block ~4 ~1 ~6 slot.container 11 warped_stem 16
replaceitem block ~4 ~1 ~6 slot.container 12 shroomlight 7
replaceitem block ~4 ~1 ~6 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~6 slot.container 14 saddle 1
loot insert ~4 ~1 ~6 loot "rsf/warped_forest"
loot insert ~4 ~1 ~6 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
