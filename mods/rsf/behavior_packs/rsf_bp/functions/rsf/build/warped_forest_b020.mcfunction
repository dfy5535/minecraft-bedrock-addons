# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3732/4224 | 主题内编号: b020/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·重甲防爆金库房间 (warped_forest_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 warped_planks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~7 ~-4 polished_blackstone_bricks []
setblock ~-4 ~8 ~-5 soul_lantern []
fill ~-4 ~1 ~4 ~-3 ~7 ~5 polished_blackstone_bricks []
setblock ~-4 ~8 ~4 soul_lantern []
fill ~3 ~1 ~-5 ~4 ~7 ~-4 polished_blackstone_bricks []
setblock ~3 ~8 ~-5 soul_lantern []
fill ~3 ~1 ~4 ~4 ~7 ~5 polished_blackstone_bricks []
setblock ~3 ~8 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 polished_blackstone_bricks []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_fence []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 warped_stem []
setblock ~-4 ~7 ~-5 soul_lantern []
setblock ~-4 ~6 ~5 warped_stem []
setblock ~-4 ~7 ~5 soul_lantern []
setblock ~4 ~6 ~-5 warped_stem []
setblock ~4 ~7 ~-5 soul_lantern []
setblock ~4 ~6 ~5 warped_stem []
setblock ~4 ~7 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~4 ~-2 warped_stem []
fill ~-5 ~0 ~2 ~-5 ~4 ~2 warped_stem []
fill ~5 ~0 ~-2 ~5 ~4 ~-2 warped_stem []
fill ~5 ~0 ~2 ~5 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x2) ---
fill ~-5 ~0 ~8 ~-5 ~5 ~8 warped_stem []
setblock ~-5 ~6 ~8 crying_obsidian []
setblock ~-5 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 16
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 9 obsidian 11
replaceitem block ~-3 ~1 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~-3 ~1 ~4 slot.container 11 netherite_scrap 4
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 13 warped_stem 21
replaceitem block ~-3 ~1 ~4 slot.container 14 shroomlight 12
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 9 obsidian 16
replaceitem block ~3 ~1 ~4 slot.container 10 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 11 netherite_scrap 2
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 13 warped_stem 19
replaceitem block ~3 ~1 ~4 slot.container 14 shroomlight 10
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
