# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3820/4224 | 主题内编号: b108/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十字四相元素秘法殿 (warped_forest_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 shroomlight []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 string 13
replaceitem block ~3 ~-2 ~0 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~0 slot.container 2 gold_nugget 19
replaceitem block ~3 ~-2 ~0 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 17
replaceitem block ~3 ~-2 ~0 slot.container 5 blaze_rod 12
replaceitem block ~3 ~-2 ~0 slot.container 9 obsidian 13
replaceitem block ~3 ~-2 ~0 slot.container 10 crying_obsidian 10
replaceitem block ~3 ~-2 ~0 slot.container 11 netherite_scrap 6
replaceitem block ~3 ~-2 ~0 slot.container 12 golden_apple 8
replaceitem block ~3 ~-2 ~0 slot.container 13 warped_stem 16
replaceitem block ~3 ~-2 ~0 slot.container 14 shroomlight 7
loot insert ~3 ~-2 ~0 loot "rsf/warped_forest"
loot insert ~3 ~-2 ~0 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 warped_planks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 warped_planks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 warped_fence []
setblock ~5 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 polished_blackstone_bricks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 polished_blackstone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 shroomlight []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 warped_planks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 shroomlight []
setblock ~2 ~4 ~-10 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~7 ~-6 ~8 ~7 warped_stem []
setblock ~-6 ~9 ~7 crying_obsidian []
setblock ~-6 ~10 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_stem 21
replaceitem block ~-4 ~1 ~5 slot.container 10 shroomlight 12
replaceitem block ~-4 ~1 ~5 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 14 quartz 19
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 warped_stem 19
replaceitem block ~4 ~1 ~5 slot.container 10 shroomlight 10
replaceitem block ~4 ~1 ~5 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 14 quartz 17
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
