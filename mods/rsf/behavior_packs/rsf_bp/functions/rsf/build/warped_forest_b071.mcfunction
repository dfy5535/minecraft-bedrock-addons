# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3783/4224 | 主题内编号: b071/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·残破双子哨所遗迹 (warped_forest_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 quartz_block [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 quartz_block [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 warped_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 gold_block []

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
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 quartz_block []
fill ~2 ~1 ~-5 ~5 ~7 ~5 quartz_block []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 warped_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 warped_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 blackstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~8 ~-6 ~6 ~8 warped_stem []
setblock ~-6 ~7 ~8 crying_obsidian []
setblock ~-6 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 12
replaceitem block ~4 ~1 ~4 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~4 slot.container 5 string 16
replaceitem block ~4 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~4 ~1 ~4 slot.container 10 warped_stem 20
replaceitem block ~4 ~1 ~4 slot.container 11 shroomlight 11
replaceitem block ~4 ~1 ~4 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~4 ~1 ~4 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
