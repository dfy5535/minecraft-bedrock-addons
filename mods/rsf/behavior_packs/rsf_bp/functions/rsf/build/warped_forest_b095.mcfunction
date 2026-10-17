# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3807/4224 | 主题内编号: b095/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子灯笼守卫神龛 (warped_forest_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 quartz_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 quartz_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 warped_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-2 ~-4 ~3 slot.container 1 ender_pearl 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 blaze_rod 12
replaceitem block ~-2 ~-4 ~3 slot.container 3 ghast_tear 11
replaceitem block ~-2 ~-4 ~3 slot.container 4 magma_cream 6
replaceitem block ~-2 ~-4 ~3 slot.container 5 string 13
replaceitem block ~-2 ~-4 ~3 slot.container 9 crying_obsidian 7
replaceitem block ~-2 ~-4 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~-2 ~-4 ~3 slot.container 11 golden_apple 5
replaceitem block ~-2 ~-4 ~3 slot.container 12 warped_stem 20
replaceitem block ~-2 ~-4 ~3 slot.container 13 shroomlight 11
replaceitem block ~-2 ~-4 ~3 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~-2 ~-4 ~3 loot "rsf/warped_forest"
loot insert ~-2 ~-4 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~7 ~4 quartz_block []
fill ~2 ~1 ~-4 ~5 ~7 ~4 quartz_block []
fill ~-4 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 warped_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 warped_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 warped_planks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 warped_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 warped_stem []
setblock ~-7 ~4 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 warped_stem []
setblock ~-7 ~4 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 warped_stem []
setblock ~7 ~4 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~3 ~6 warped_stem []
setblock ~7 ~4 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~7 ~-6 ~5 ~7 warped_stem []
setblock ~-6 ~6 ~7 crying_obsidian []
setblock ~-6 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~1 ~3 slot.container 1 ender_pearl 12
replaceitem block ~4 ~1 ~3 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~3 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~3 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~3 slot.container 5 string 16
replaceitem block ~4 ~1 ~3 slot.container 9 shroomlight 12
replaceitem block ~4 ~1 ~3 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 13 quartz 19
replaceitem block ~4 ~1 ~3 slot.container 14 obsidian 14
loot insert ~4 ~1 ~3 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
