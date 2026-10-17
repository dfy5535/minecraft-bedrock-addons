# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3768/4224 | 主题内编号: b056/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·隐士半地下避难山居 (warped_forest_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~8 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~8 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 warped_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-6 ~-5 ~6 ~6 warped_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-6 ~5 ~6 ~6 warped_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~-4 ~7 ~5 warped_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-5 ~4 ~7 ~5 warped_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-5 ~3 ~7 ~5 warped_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 quartz_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~-5 ~0 ~8 ~-5 ~6 ~8 warped_stem []
setblock ~-5 ~7 ~8 crying_obsidian []
setblock ~-5 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 4 string 16
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 10 quartz 19
replaceitem block ~-3 ~1 ~4 slot.container 11 obsidian 14
replaceitem block ~-3 ~1 ~4 slot.container 12 crying_obsidian 11
replaceitem block ~-3 ~1 ~4 slot.container 13 netherite_scrap 7
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 19
replaceitem block ~3 ~1 ~4 slot.container 3 bone 10
replaceitem block ~3 ~1 ~4 slot.container 4 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 10 quartz 17
replaceitem block ~3 ~1 ~4 slot.container 11 obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 12 crying_obsidian 9
replaceitem block ~3 ~1 ~4 slot.container 13 netherite_scrap 5
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
