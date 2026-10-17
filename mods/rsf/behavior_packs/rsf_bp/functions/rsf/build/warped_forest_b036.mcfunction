# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3748/4224 | 主题内编号: b036/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·下沉碑林地宫方尖碑 (warped_forest_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 warped_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 warped_planks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 warped_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 soul_lantern []
setblock ~2 ~-5 ~-3 soul_lantern []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 gold_nugget 19
replaceitem block ~2 ~-3 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 17
replaceitem block ~2 ~-3 ~3 slot.container 3 blaze_rod 12
replaceitem block ~2 ~-3 ~3 slot.container 4 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 5 magma_cream 6
replaceitem block ~2 ~-3 ~3 slot.container 9 obsidian 15
replaceitem block ~2 ~-3 ~3 slot.container 10 crying_obsidian 12
replaceitem block ~2 ~-3 ~3 slot.container 11 netherite_scrap 1
replaceitem block ~2 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~2 ~-3 ~3 slot.container 13 warped_stem 18
replaceitem block ~2 ~-3 ~3 slot.container 14 shroomlight 9
loot insert ~2 ~-3 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-3 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 warped_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 blackstone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 warped_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 warped_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-5 ~0 ~6 ~-5 ~6 ~6 warped_stem []
setblock ~-5 ~7 ~6 crying_obsidian []
setblock ~-5 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 16
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 10 quartz 20
replaceitem block ~-3 ~1 ~4 slot.container 11 obsidian 15
replaceitem block ~-3 ~1 ~4 slot.container 12 crying_obsidian 12
replaceitem block ~-3 ~1 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 10 quartz 18
replaceitem block ~3 ~1 ~4 slot.container 11 obsidian 13
replaceitem block ~3 ~1 ~4 slot.container 12 crying_obsidian 10
replaceitem block ~3 ~1 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
