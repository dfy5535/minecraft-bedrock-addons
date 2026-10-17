# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3756/4224 | 主题内编号: b044/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子祭台勇士角斗场 (warped_forest_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~8 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~8 ~8 air [] replace fire
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 warped_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 warped_planks [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 warped_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 blackstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~6 ~6 warped_planks []
fill ~2 ~1 ~-6 ~6 ~6 ~6 warped_planks []
fill ~-5 ~1 ~-5 ~-3 ~5 ~5 air []
fill ~3 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 polished_blackstone_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-6 ~-6 ~7 ~-6 warped_stem []
setblock ~-6 ~8 ~-6 soul_lantern []
fill ~-6 ~5 ~6 ~-6 ~7 ~6 warped_stem []
setblock ~-6 ~8 ~6 soul_lantern []
fill ~6 ~5 ~-6 ~6 ~7 ~-6 warped_stem []
setblock ~6 ~8 ~-6 soul_lantern []
fill ~6 ~5 ~6 ~6 ~7 ~6 warped_stem []
setblock ~6 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_blackstone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~9 ~-7 ~9 ~9 warped_stem []
setblock ~-7 ~10 ~9 crying_obsidian []
setblock ~-7 ~11 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 16
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 2 gold_nugget 22
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 12
replaceitem block ~-5 ~1 ~5 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~5 slot.container 9 netherite_scrap 5
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~5 slot.container 11 warped_stem 22
replaceitem block ~-5 ~1 ~5 slot.container 12 shroomlight 6
replaceitem block ~-5 ~1 ~5 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~5 slot.container 14 saddle 1
loot insert ~-5 ~1 ~5 loot "rsf/warped_forest"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 gold_nugget 17
replaceitem block ~5 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~5 slot.container 2 ender_pearl 15
replaceitem block ~5 ~1 ~5 slot.container 3 blaze_rod 10
replaceitem block ~5 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~5 slot.container 9 netherite_scrap 3
replaceitem block ~5 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~5 slot.container 11 warped_stem 20
replaceitem block ~5 ~1 ~5 slot.container 12 shroomlight 11
replaceitem block ~5 ~1 ~5 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~5 slot.container 14 saddle 1
loot insert ~5 ~1 ~5 loot "rsf/warped_forest"
loot insert ~5 ~1 ~5 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
