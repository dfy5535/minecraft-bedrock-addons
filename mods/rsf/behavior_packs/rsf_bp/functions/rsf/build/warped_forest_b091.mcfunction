# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3803/4224 | 主题内编号: b091/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·跨水拱桥水神小祠 (warped_forest_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 quartz_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 quartz_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 warped_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 warped_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 gold_nugget 19
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 blaze_rod 12
replaceitem block ~-3 ~-3 ~2 slot.container 5 ghast_tear 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 quartz 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 obsidian 14
replaceitem block ~-3 ~-3 ~2 slot.container 11 crying_obsidian 11
replaceitem block ~-3 ~-3 ~2 slot.container 12 netherite_scrap 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 2
replaceitem block ~-3 ~-3 ~2 slot.container 14 warped_stem 17
loot insert ~-3 ~-3 ~2 loot "rsf/warped_forest"
loot insert ~-3 ~-3 ~2 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 quartz_block []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 warped_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 warped_planks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 warped_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-6 ~0 ~6 ~-6 ~6 ~6 warped_stem []
setblock ~-6 ~7 ~6 crying_obsidian []
setblock ~-6 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 16
replaceitem block ~4 ~1 ~3 slot.container 2 bone 15
replaceitem block ~4 ~1 ~3 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 12
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 10 warped_stem 19
replaceitem block ~4 ~1 ~3 slot.container 11 shroomlight 10
replaceitem block ~4 ~1 ~3 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~3 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 8
loot insert ~4 ~1 ~3 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-3 ~0
