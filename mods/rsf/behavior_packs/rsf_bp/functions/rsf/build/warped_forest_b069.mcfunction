# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3781/4224 | 主题内编号: b069/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·藤蔓侵蚀十字修道院 (warped_forest_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~4 slot.container 0 magma_cream 6
replaceitem block ~3 ~-4 ~4 slot.container 1 string 13
replaceitem block ~3 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 3 gold_nugget 19
replaceitem block ~3 ~-4 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~3 ~-4 ~4 slot.container 5 ender_pearl 17
replaceitem block ~3 ~-4 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-4 ~4 slot.container 10 gold_ingot 13
replaceitem block ~3 ~-4 ~4 slot.container 11 quartz 22
replaceitem block ~3 ~-4 ~4 slot.container 12 obsidian 10
replaceitem block ~3 ~-4 ~4 slot.container 13 crying_obsidian 7
replaceitem block ~3 ~-4 ~4 slot.container 14 netherite_scrap 3
loot insert ~3 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 warped_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 warped_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_warped_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_warped_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 warped_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-6 ~0 ~7 ~-6 ~9 ~7 warped_stem []
setblock ~-6 ~10 ~7 crying_obsidian []
setblock ~-6 ~11 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 12
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 quartz 19
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 7
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
