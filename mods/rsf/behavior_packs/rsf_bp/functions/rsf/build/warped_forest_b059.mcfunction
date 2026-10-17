# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3771/4224 | 主题内编号: b059/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·阶梯金字塔法老墓室 (warped_forest_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 warped_planks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 warped_planks []
setblock ~0 ~-7 ~0 shroomlight []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~-5 slot.container 1 gold_nugget 19
replaceitem block ~0 ~-4 ~-5 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-4 ~-5 slot.container 3 ender_pearl 17
replaceitem block ~0 ~-4 ~-5 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-4 ~-5 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~-5 slot.container 9 golden_apple 3
replaceitem block ~0 ~-4 ~-5 slot.container 10 warped_stem 18
replaceitem block ~0 ~-4 ~-5 slot.container 11 shroomlight 9
replaceitem block ~0 ~-4 ~-5 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 gold_ingot 14
loot insert ~0 ~-4 ~-5 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 quartz_block []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 warped_planks []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 warped_planks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 warped_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 warped_stem []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 warped_stem []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 warped_stem []
fill ~5 ~0 ~2 ~5 ~6 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x10x6) ---
fill ~-7 ~0 ~10 ~-7 ~9 ~10 warped_stem []
setblock ~-7 ~10 ~10 crying_obsidian []
setblock ~-7 ~11 ~10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 12
replaceitem block ~5 ~1 ~6 slot.container 9 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 11 quartz 16
replaceitem block ~5 ~1 ~6 slot.container 12 obsidian 11
replaceitem block ~5 ~1 ~6 slot.container 13 crying_obsidian 8
replaceitem block ~5 ~1 ~6 slot.container 14 netherite_scrap 4
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
