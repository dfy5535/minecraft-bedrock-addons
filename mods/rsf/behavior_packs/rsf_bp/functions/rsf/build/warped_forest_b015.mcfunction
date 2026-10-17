# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3727/4224 | 主题内编号: b015/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·竖井阶梯深渊地牢 (warped_forest_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 6格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 shroomlight []
setblock ~2 ~-7 ~-3 shroomlight []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 blaze_rod 12
replaceitem block ~2 ~-5 ~3 slot.container 1 ghast_tear 11
replaceitem block ~2 ~-5 ~3 slot.container 2 magma_cream 6
replaceitem block ~2 ~-5 ~3 slot.container 3 string 13
replaceitem block ~2 ~-5 ~3 slot.container 4 bone 12
replaceitem block ~2 ~-5 ~3 slot.container 5 gold_nugget 19
replaceitem block ~2 ~-5 ~3 slot.container 9 saddle 1
replaceitem block ~2 ~-5 ~3 slot.container 10 gold_ingot 14
replaceitem block ~2 ~-5 ~3 slot.container 11 quartz 16
replaceitem block ~2 ~-5 ~3 slot.container 12 obsidian 11
replaceitem block ~2 ~-5 ~3 slot.container 13 crying_obsidian 8
replaceitem block ~2 ~-5 ~3 slot.container 14 netherite_scrap 4
loot insert ~2 ~-5 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-5 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 quartz_block []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 warped_planks []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 warped_planks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 blackstone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 warped_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 warped_stem []
setblock ~-6 ~4 ~-7 shroomlight []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 warped_stem []
setblock ~-6 ~4 ~7 shroomlight []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 warped_stem []
setblock ~6 ~4 ~-7 shroomlight []
fill ~6 ~0 ~7 ~6 ~3 ~7 warped_stem []
setblock ~6 ~4 ~7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~-5 ~0 ~6 ~-5 ~5 ~6 warped_stem []
setblock ~-5 ~6 ~6 crying_obsidian []
setblock ~-5 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 12
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 7
replaceitem block ~3 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 4 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 5 string 16
replaceitem block ~3 ~1 ~4 slot.container 9 shroomlight 9
replaceitem block ~3 ~1 ~4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 13 quartz 16
replaceitem block ~3 ~1 ~4 slot.container 14 obsidian 11
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
