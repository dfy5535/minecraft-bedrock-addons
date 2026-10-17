# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3801/4224 | 主题内编号: b089/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·四柱挑檐祈愿凉亭 (warped_forest_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 9x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~9 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~9 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 warped_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~6 ~4 polished_blackstone_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 stripped_warped_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 stripped_warped_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 stripped_warped_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 stripped_warped_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 polished_blackstone_wall []
setblock ~3 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_slab []
fill ~-2 ~7 ~-3 ~2 ~8 ~3 blackstone []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 blackstone_slab []
setblock ~0 ~10 ~0 crying_obsidian []
setblock ~0 ~11 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 warped_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_warped_stem []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_warped_stem []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 warped_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 4x7x6) ---
fill ~-4 ~0 ~7 ~-4 ~9 ~7 warped_stem []
setblock ~-4 ~10 ~7 crying_obsidian []
setblock ~-4 ~11 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 blaze_rod 7
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 3 string 16
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 gold_nugget 22
replaceitem block ~2 ~1 ~3 slot.container 9 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 11 quartz 18
replaceitem block ~2 ~1 ~3 slot.container 12 obsidian 13
replaceitem block ~2 ~1 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~2 ~1 ~3 slot.container 14 netherite_scrap 6
loot insert ~2 ~1 ~3 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
