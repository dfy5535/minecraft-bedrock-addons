# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3825/4224 | 主题内编号: b113/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·八角全采光生态温室 (warped_forest_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-3 ~3 slot.container 0 magma_cream 6
replaceitem block ~-2 ~-3 ~3 slot.container 1 string 13
replaceitem block ~-2 ~-3 ~3 slot.container 2 bone 12
replaceitem block ~-2 ~-3 ~3 slot.container 3 gold_nugget 19
replaceitem block ~-2 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-2 ~-3 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-2 ~-3 ~3 slot.container 9 shroomlight 10
replaceitem block ~-2 ~-3 ~3 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~-2 ~-3 ~3 slot.container 11 saddle 1
replaceitem block ~-2 ~-3 ~3 slot.container 12 gold_ingot 8
replaceitem block ~-2 ~-3 ~3 slot.container 13 quartz 17
replaceitem block ~-2 ~-3 ~3 slot.container 14 obsidian 12
loot insert ~-2 ~-3 ~3 loot "rsf/warped_forest"
loot insert ~-2 ~-3 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 stripped_warped_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 stripped_warped_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 stripped_warped_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 stripped_warped_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 warped_planks []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 warped_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 warped_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_warped_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_warped_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 warped_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~-5 ~0 ~8 ~-5 ~8 ~8 warped_stem []
setblock ~-5 ~9 ~8 crying_obsidian []
setblock ~-5 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 7
replaceitem block ~3 ~1 ~4 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 3 string 16
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 quartz 19
replaceitem block ~3 ~1 ~4 slot.container 10 obsidian 14
replaceitem block ~3 ~1 ~4 slot.container 11 crying_obsidian 11
replaceitem block ~3 ~1 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 14 warped_stem 17
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
