# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3800/4224 | 主题内编号: b088/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·矿车铁轨转运仓库 (warped_forest_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-9 ~6 ~8 ~9 air [] replace lava
fill ~-6 ~0 ~-9 ~6 ~8 ~9 air [] replace fire
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 warped_planks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 warped_planks [] replace lava
fill ~-5 ~0 ~-8 ~5 ~0 ~8 warped_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 blackstone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

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
fill ~-4 ~1 ~-7 ~4 ~5 ~7 warped_planks []
fill ~-3 ~1 ~-6 ~3 ~4 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 warped_stem []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 warped_stem []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 warped_stem []
fill ~4 ~1 ~7 ~4 ~5 ~7 warped_stem []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 warped_fence []
setblock ~4 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-8 ~-5 ~6 ~8 warped_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-8 ~5 ~6 ~8 warped_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-7 ~-4 ~7 ~7 warped_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-7 ~4 ~7 ~7 warped_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-7 ~3 ~7 ~7 warped_slab []
fill ~0 ~8 ~-8 ~0 ~8 ~8 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 polished_blackstone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_lantern []
setblock ~2 ~4 ~-10 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x9x5) ---
fill ~-5 ~0 ~9 ~-5 ~8 ~9 warped_stem []
setblock ~-5 ~9 ~9 crying_obsidian []
setblock ~-5 ~10 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 ender_pearl 12
replaceitem block ~-3 ~1 ~6 slot.container 1 blaze_rod 7
replaceitem block ~-3 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-3 ~1 ~6 slot.container 3 magma_cream 9
replaceitem block ~-3 ~1 ~6 slot.container 4 string 16
replaceitem block ~-3 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~6 slot.container 9 warped_stem 22
replaceitem block ~-3 ~1 ~6 slot.container 10 shroomlight 6
replaceitem block ~-3 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~-3 ~1 ~6 slot.container 13 gold_ingot 11
replaceitem block ~-3 ~1 ~6 slot.container 14 quartz 20
loot insert ~-3 ~1 ~6 loot "rsf/warped_forest"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~3 ~1 ~6 slot.container 1 magma_cream 12
replaceitem block ~3 ~1 ~6 slot.container 2 string 19
replaceitem block ~3 ~1 ~6 slot.container 3 bone 10
replaceitem block ~3 ~1 ~6 slot.container 4 gold_nugget 17
replaceitem block ~3 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~6 slot.container 9 warped_stem 20
replaceitem block ~3 ~1 ~6 slot.container 10 shroomlight 11
replaceitem block ~3 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~6 slot.container 13 gold_ingot 9
replaceitem block ~3 ~1 ~6 slot.container 14 quartz 18
loot insert ~3 ~1 ~6 loot "rsf/warped_forest"
loot insert ~3 ~1 ~6 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
