# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3831/4224 | 主题内编号: b119/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·半地下恒温洞穴苗圃 (warped_forest_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~7 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~7 ~8 air [] replace fire
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 quartz_block [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 quartz_block [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 warped_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 warped_planks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 blaze_rod 12
replaceitem block ~-2 ~-4 ~4 slot.container 1 ghast_tear 11
replaceitem block ~-2 ~-4 ~4 slot.container 2 magma_cream 6
replaceitem block ~-2 ~-4 ~4 slot.container 3 string 13
replaceitem block ~-2 ~-4 ~4 slot.container 4 bone 12
replaceitem block ~-2 ~-4 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-2 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~-2 ~-4 ~4 slot.container 10 warped_stem 20
replaceitem block ~-2 ~-4 ~4 slot.container 11 shroomlight 11
replaceitem block ~-2 ~-4 ~4 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~-2 ~-4 ~4 slot.container 13 saddle 1
replaceitem block ~-2 ~-4 ~4 slot.container 14 gold_ingot 9
loot insert ~-2 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~-2 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 quartz_block []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 warped_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 warped_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~4 ~-6 ~4 ~4 ~6 warped_planks []
fill ~-3 ~5 ~-5 ~3 ~6 ~5 glass []
fill ~-2 ~5 ~-4 ~2 ~5 ~4 air []
setblock ~0 ~6 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x9x6) ---
fill ~-5 ~0 ~9 ~-5 ~9 ~9 warped_stem []
setblock ~-5 ~10 ~9 crying_obsidian []
setblock ~-5 ~11 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~1 ~5 slot.container 1 ender_pearl 12
replaceitem block ~3 ~1 ~5 slot.container 2 blaze_rod 7
replaceitem block ~3 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 5 string 16
replaceitem block ~3 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 11 quartz 20
replaceitem block ~3 ~1 ~5 slot.container 12 obsidian 15
replaceitem block ~3 ~1 ~5 slot.container 13 crying_obsidian 12
replaceitem block ~3 ~1 ~5 slot.container 14 netherite_scrap 1
loot insert ~3 ~1 ~5 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
