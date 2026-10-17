# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3811/4224 | 主题内编号: b099/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·铁闸门瓮城防御堡 (warped_forest_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 quartz_block [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 quartz_block [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 warped_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 warped_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 blaze_rod 12
replaceitem block ~-4 ~-4 ~3 slot.container 1 ghast_tear 11
replaceitem block ~-4 ~-4 ~3 slot.container 2 magma_cream 6
replaceitem block ~-4 ~-4 ~3 slot.container 3 string 13
replaceitem block ~-4 ~-4 ~3 slot.container 4 bone 12
replaceitem block ~-4 ~-4 ~3 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~-4 ~3 slot.container 9 saddle 1
replaceitem block ~-4 ~-4 ~3 slot.container 10 gold_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 11 quartz 19
replaceitem block ~-4 ~-4 ~3 slot.container 12 obsidian 14
replaceitem block ~-4 ~-4 ~3 slot.container 13 crying_obsidian 11
replaceitem block ~-4 ~-4 ~3 slot.container 14 netherite_scrap 7
loot insert ~-4 ~-4 ~3 loot "rsf/warped_forest"
loot insert ~-4 ~-4 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 quartz_block []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 warped_planks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 warped_fence []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 warped_stem []
setblock ~-5 ~8 ~-5 shroomlight []
setblock ~-5 ~7 ~5 warped_stem []
setblock ~-5 ~8 ~5 shroomlight []
setblock ~5 ~7 ~-5 warped_stem []
setblock ~5 ~8 ~-5 shroomlight []
setblock ~5 ~7 ~5 warped_stem []
setblock ~5 ~8 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 warped_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 shroomlight []
setblock ~2 ~4 ~-8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-6 ~0 ~6 ~-6 ~9 ~6 warped_stem []
setblock ~-6 ~10 ~6 crying_obsidian []
setblock ~-6 ~11 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~4 slot.container 1 string 16
replaceitem block ~4 ~1 ~4 slot.container 2 bone 15
replaceitem block ~4 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 12
replaceitem block ~4 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 11 quartz 21
replaceitem block ~4 ~1 ~4 slot.container 12 obsidian 16
replaceitem block ~4 ~1 ~4 slot.container 13 crying_obsidian 6
replaceitem block ~4 ~1 ~4 slot.container 14 netherite_scrap 2
loot insert ~4 ~1 ~4 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
