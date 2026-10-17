# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3806/4224 | 主题内编号: b094/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·圆形圣泉祈祷亭 (warped_forest_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 ender_pearl 17
replaceitem block ~-2 ~-2 ~3 slot.container 1 blaze_rod 12
replaceitem block ~-2 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~-2 ~-2 ~3 slot.container 3 magma_cream 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 string 13
replaceitem block ~-2 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~-2 ~-2 ~3 slot.container 9 gold_ingot 14
replaceitem block ~-2 ~-2 ~3 slot.container 10 quartz 16
replaceitem block ~-2 ~-2 ~3 slot.container 11 obsidian 11
replaceitem block ~-2 ~-2 ~3 slot.container 12 crying_obsidian 8
replaceitem block ~-2 ~-2 ~3 slot.container 13 netherite_scrap 4
replaceitem block ~-2 ~-2 ~3 slot.container 14 golden_apple 6
loot insert ~-2 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~-2 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 warped_stem []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 warped_stem []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 warped_stem []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 warped_stem []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 warped_stem []
fill ~0 ~1 ~5 ~0 ~5 ~5 warped_stem []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 warped_stem []
fill ~2 ~1 ~5 ~2 ~5 ~5 warped_stem []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 warped_stem []
fill ~4 ~1 ~5 ~4 ~5 ~5 warped_stem []
fill ~-4 ~1 ~-3 ~-4 ~5 ~-3 warped_stem []
fill ~4 ~1 ~-3 ~4 ~5 ~-3 warped_stem []
fill ~-4 ~1 ~-1 ~-4 ~5 ~-1 warped_stem []
fill ~4 ~1 ~-1 ~4 ~5 ~-1 warped_stem []
fill ~-4 ~1 ~1 ~-4 ~5 ~1 warped_stem []
fill ~4 ~1 ~1 ~4 ~5 ~1 warped_stem []
fill ~-4 ~1 ~3 ~-4 ~5 ~3 warped_stem []
fill ~4 ~1 ~3 ~4 ~5 ~3 warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-5 ~0 ~7 ~-5 ~9 ~7 warped_stem []
setblock ~-5 ~10 ~7 crying_obsidian []
setblock ~-5 ~11 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 netherite_scrap 6
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 11 warped_stem 16
replaceitem block ~-3 ~1 ~4 slot.container 12 shroomlight 7
replaceitem block ~-3 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~1 ~4 slot.container 14 saddle 1
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 netherite_scrap 4
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 warped_stem 21
replaceitem block ~3 ~1 ~4 slot.container 12 shroomlight 12
replaceitem block ~3 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 14 saddle 1
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
