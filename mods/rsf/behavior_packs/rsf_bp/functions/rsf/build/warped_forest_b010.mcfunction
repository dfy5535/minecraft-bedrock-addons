# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3722/4224 | 主题内编号: b010/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十字交叉深层地牢 (warped_forest_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~7 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~7 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 blackstone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 blackstone [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~4 slot.container 0 magma_cream 6
replaceitem block ~3 ~-4 ~4 slot.container 1 string 13
replaceitem block ~3 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 3 gold_nugget 19
replaceitem block ~3 ~-4 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~3 ~-4 ~4 slot.container 5 ender_pearl 17
replaceitem block ~3 ~-4 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-4 ~4 slot.container 10 gold_ingot 13
replaceitem block ~3 ~-4 ~4 slot.container 11 quartz 22
replaceitem block ~3 ~-4 ~4 slot.container 12 obsidian 10
replaceitem block ~3 ~-4 ~4 slot.container 13 crying_obsidian 7
replaceitem block ~3 ~-4 ~4 slot.container 14 netherite_scrap 3
loot insert ~3 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~4 ~7 blackstone []
fill ~-6 ~1 ~-2 ~6 ~4 ~2 blackstone []
fill ~-1 ~1 ~-6 ~1 ~3 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~3 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 warped_fence []
setblock ~6 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 blackstone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 warped_stem []
setblock ~-8 ~4 ~-9 soul_lantern []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 warped_stem []
setblock ~-8 ~4 ~9 soul_lantern []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 warped_stem []
setblock ~8 ~4 ~-9 soul_lantern []
fill ~8 ~0 ~9 ~8 ~3 ~9 warped_stem []
setblock ~8 ~4 ~9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~0 ~9 ~-7 ~5 ~9 warped_stem []
setblock ~-7 ~6 ~9 crying_obsidian []
setblock ~-7 ~7 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 2 string 16
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 gold_nugget 22
replaceitem block ~-5 ~1 ~6 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~6 slot.container 9 obsidian 15
replaceitem block ~-5 ~1 ~6 slot.container 10 crying_obsidian 12
replaceitem block ~-5 ~1 ~6 slot.container 11 netherite_scrap 1
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~6 slot.container 13 warped_stem 18
replaceitem block ~-5 ~1 ~6 slot.container 14 shroomlight 9
loot insert ~-5 ~1 ~6 loot "rsf/warped_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 19
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 17
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 15
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 10
replaceitem block ~5 ~1 ~6 slot.container 9 obsidian 13
replaceitem block ~5 ~1 ~6 slot.container 10 crying_obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 11 netherite_scrap 6
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 13 warped_stem 16
replaceitem block ~5 ~1 ~6 slot.container 14 shroomlight 7
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
loot insert ~5 ~1 ~6 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
