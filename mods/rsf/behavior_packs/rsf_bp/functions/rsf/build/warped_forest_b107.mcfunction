# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3819/4224 | 主题内编号: b107/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·观星高塔与秘术地宫 (warped_forest_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 polished_blackstone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 blaze_rod 12
replaceitem block ~3 ~-4 ~5 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-4 ~5 slot.container 2 magma_cream 6
replaceitem block ~3 ~-4 ~5 slot.container 3 string 13
replaceitem block ~3 ~-4 ~5 slot.container 4 bone 12
replaceitem block ~3 ~-4 ~5 slot.container 5 gold_nugget 19
replaceitem block ~3 ~-4 ~5 slot.container 9 shroomlight 6
replaceitem block ~3 ~-4 ~5 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~3 ~-4 ~5 slot.container 11 saddle 1
replaceitem block ~3 ~-4 ~5 slot.container 12 gold_ingot 11
replaceitem block ~3 ~-4 ~5 slot.container 13 quartz 20
replaceitem block ~3 ~-4 ~5 slot.container 14 obsidian 15
loot insert ~3 ~-4 ~5 loot "rsf/warped_forest"
loot insert ~3 ~-4 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 warped_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~8 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 warped_planks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 warped_stem []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 warped_stem []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 warped_stem []
fill ~5 ~0 ~2 ~5 ~7 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-5 ~0 ~8 ~-5 ~7 ~8 warped_stem []
setblock ~-5 ~8 ~8 crying_obsidian []
setblock ~-5 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 1 string 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 12
replaceitem block ~3 ~1 ~4 slot.container 9 crying_obsidian 10
replaceitem block ~3 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 12 warped_stem 16
replaceitem block ~3 ~1 ~4 slot.container 13 shroomlight 7
replaceitem block ~3 ~1 ~4 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
