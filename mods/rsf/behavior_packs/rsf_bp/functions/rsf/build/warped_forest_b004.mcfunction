# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3716/4224 | 主题内编号: b004/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子火盆高台神坛 (warped_forest_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 warped_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 warped_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 warped_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 polished_blackstone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 blaze_rod 12
replaceitem block ~3 ~-3 ~3 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-3 ~3 slot.container 2 magma_cream 6
replaceitem block ~3 ~-3 ~3 slot.container 3 string 13
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 12
replaceitem block ~3 ~-3 ~3 slot.container 5 gold_nugget 19
replaceitem block ~3 ~-3 ~3 slot.container 9 crying_obsidian 8
replaceitem block ~3 ~-3 ~3 slot.container 10 netherite_scrap 4
replaceitem block ~3 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~3 ~-3 ~3 slot.container 12 warped_stem 21
replaceitem block ~3 ~-3 ~3 slot.container 13 shroomlight 12
replaceitem block ~3 ~-3 ~3 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~3 ~-3 ~3 loot "rsf/warped_forest"
loot insert ~3 ~-3 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 warped_planks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 warped_planks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 polished_blackstone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 warped_stem []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 warped_stem []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 warped_stem []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 warped_stem []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 warped_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 warped_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 warped_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~7 ~-7 ~9 ~7 warped_stem []
setblock ~-7 ~10 ~7 crying_obsidian []
setblock ~-7 ~11 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 16
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 gold_nugget 22
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 12
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~4 slot.container 9 netherite_scrap 7
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 11 warped_stem 17
replaceitem block ~-5 ~1 ~4 slot.container 12 shroomlight 8
replaceitem block ~-5 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~4 slot.container 14 saddle 1
loot insert ~-5 ~1 ~4 loot "rsf/warped_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gold_nugget 17
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 15
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 10
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 9 netherite_scrap 5
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~4 slot.container 11 warped_stem 22
replaceitem block ~5 ~1 ~4 slot.container 12 shroomlight 6
replaceitem block ~5 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~4 slot.container 14 saddle 1
loot insert ~5 ~1 ~4 loot "rsf/warped_forest"
loot insert ~5 ~1 ~4 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~2 ~0
