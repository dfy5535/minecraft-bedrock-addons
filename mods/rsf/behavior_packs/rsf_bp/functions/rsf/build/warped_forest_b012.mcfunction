# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3724/4224 | 主题内编号: b012/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子暗门地底宝库 (warped_forest_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 warped_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 warped_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 warped_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
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
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 warped_planks []
fill ~2 ~1 ~-5 ~6 ~6 ~5 warped_planks []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 polished_blackstone_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 warped_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 warped_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 warped_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 warped_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 warped_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~6 ~-7 ~7 ~6 warped_stem []
setblock ~-7 ~8 ~6 crying_obsidian []
setblock ~-7 ~9 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 16
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 gold_nugget 22
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 12
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 12 quartz 19
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 14
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 11
loot insert ~-5 ~1 ~4 loot "rsf/warped_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gold_nugget 17
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 15
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 10
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 12 quartz 17
replaceitem block ~5 ~1 ~4 slot.container 13 obsidian 12
replaceitem block ~5 ~1 ~4 slot.container 14 crying_obsidian 9
loot insert ~5 ~1 ~4 loot "rsf/warped_forest"
loot insert ~5 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
