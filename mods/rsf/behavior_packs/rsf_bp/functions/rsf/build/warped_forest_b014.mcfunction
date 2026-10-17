# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3726/4224 | 主题内编号: b014/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·暗渠蓄水池秘境地牢 (warped_forest_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~7 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~7 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 warped_planks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 ender_pearl 17
replaceitem block ~-3 ~-4 ~4 slot.container 1 blaze_rod 12
replaceitem block ~-3 ~-4 ~4 slot.container 2 ghast_tear 11
replaceitem block ~-3 ~-4 ~4 slot.container 3 magma_cream 6
replaceitem block ~-3 ~-4 ~4 slot.container 4 string 13
replaceitem block ~-3 ~-4 ~4 slot.container 5 bone 12
replaceitem block ~-3 ~-4 ~4 slot.container 9 gold_ingot 11
replaceitem block ~-3 ~-4 ~4 slot.container 10 quartz 20
replaceitem block ~-3 ~-4 ~4 slot.container 11 obsidian 15
replaceitem block ~-3 ~-4 ~4 slot.container 12 crying_obsidian 12
replaceitem block ~-3 ~-4 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~-3 ~-4 ~4 slot.container 14 golden_apple 3
loot insert ~-3 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~-3 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 blackstone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-5 ~3 ~-1 ~-5 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x9x6) ---
fill ~-6 ~0 ~9 ~-6 ~9 ~9 warped_stem []
setblock ~-6 ~10 ~9 crying_obsidian []
setblock ~-6 ~11 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 netherite_scrap 3
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 11 warped_stem 20
replaceitem block ~-4 ~1 ~5 slot.container 12 shroomlight 11
replaceitem block ~-4 ~1 ~5 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 14 saddle 1
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 netherite_scrap 1
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 warped_stem 18
replaceitem block ~4 ~1 ~5 slot.container 12 shroomlight 9
replaceitem block ~4 ~1 ~5 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 14 saddle 1
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
