# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3746/4224 | 主题内编号: b034/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子对称铭文方尖碑 (warped_forest_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 quartz_block []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 gold_nugget 19
replaceitem block ~3 ~-2 ~2 slot.container 1 rotten_flesh 14
replaceitem block ~3 ~-2 ~2 slot.container 2 ender_pearl 17
replaceitem block ~3 ~-2 ~2 slot.container 3 blaze_rod 12
replaceitem block ~3 ~-2 ~2 slot.container 4 ghast_tear 11
replaceitem block ~3 ~-2 ~2 slot.container 5 magma_cream 6
replaceitem block ~3 ~-2 ~2 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~3 ~-2 ~2 slot.container 10 saddle 1
replaceitem block ~3 ~-2 ~2 slot.container 11 gold_ingot 14
replaceitem block ~3 ~-2 ~2 slot.container 12 quartz 16
replaceitem block ~3 ~-2 ~2 slot.container 13 obsidian 11
replaceitem block ~3 ~-2 ~2 slot.container 14 crying_obsidian 8
loot insert ~3 ~-2 ~2 loot "rsf/warped_forest"
loot insert ~3 ~-2 ~2 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 blackstone []
fill ~2 ~1 ~-4 ~5 ~10 ~4 blackstone []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 warped_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 warped_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 warped_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-6 ~0 ~6 ~-6 ~9 ~6 warped_stem []
setblock ~-6 ~10 ~6 crying_obsidian []
setblock ~-6 ~11 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~3 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~3 slot.container 2 string 16
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 4 gold_nugget 22
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~3 slot.container 9 netherite_scrap 2
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 11 warped_stem 19
replaceitem block ~-4 ~1 ~3 slot.container 12 shroomlight 10
replaceitem block ~-4 ~1 ~3 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~3 slot.container 14 saddle 1
loot insert ~-4 ~1 ~3 loot "rsf/warped_forest"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 19
replaceitem block ~4 ~1 ~3 slot.container 1 bone 10
replaceitem block ~4 ~1 ~3 slot.container 2 gold_nugget 17
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 15
replaceitem block ~4 ~1 ~3 slot.container 5 blaze_rod 10
replaceitem block ~4 ~1 ~3 slot.container 9 netherite_scrap 7
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 11 warped_stem 17
replaceitem block ~4 ~1 ~3 slot.container 12 shroomlight 8
replaceitem block ~4 ~1 ~3 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~3 slot.container 14 saddle 1
loot insert ~4 ~1 ~3 loot "rsf/warped_forest"
loot insert ~4 ~1 ~3 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
