# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3838/4224 | 主题内编号: b126/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子主塔天桥宫殿与暗牢 (warped_forest_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~11 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~11 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 blackstone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 blackstone [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 blackstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 blackstone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 soul_lantern []
setblock ~4 ~-5 ~-4 soul_lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 ender_pearl 17
replaceitem block ~4 ~-3 ~4 slot.container 1 blaze_rod 12
replaceitem block ~4 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-3 ~4 slot.container 3 magma_cream 6
replaceitem block ~4 ~-3 ~4 slot.container 4 string 13
replaceitem block ~4 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~4 ~-3 ~4 slot.container 9 obsidian 14
replaceitem block ~4 ~-3 ~4 slot.container 10 crying_obsidian 11
replaceitem block ~4 ~-3 ~4 slot.container 11 netherite_scrap 7
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 2
replaceitem block ~4 ~-3 ~4 slot.container 13 warped_stem 17
replaceitem block ~4 ~-3 ~4 slot.container 14 shroomlight 8
loot insert ~4 ~-3 ~4 loot "rsf/warped_forest"
loot insert ~4 ~-3 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~9 ~6 blackstone []
fill ~2 ~1 ~-6 ~6 ~9 ~6 blackstone []
fill ~-5 ~1 ~-5 ~-3 ~8 ~5 air []
fill ~3 ~1 ~-5 ~5 ~8 ~5 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 warped_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 warped_planks []
fill ~-5 ~6 ~-4 ~5 ~7 ~4 glass []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~0 ~7 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 warped_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~7 ~-7 ~6 ~7 warped_stem []
setblock ~-7 ~7 ~7 crying_obsidian []
setblock ~-7 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gold_nugget 22
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 12
replaceitem block ~-5 ~1 ~5 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-5 ~1 ~5 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 10 quartz 19
replaceitem block ~-5 ~1 ~5 slot.container 11 obsidian 14
replaceitem block ~-5 ~1 ~5 slot.container 12 crying_obsidian 11
replaceitem block ~-5 ~1 ~5 slot.container 13 netherite_scrap 7
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~5 loot "rsf/warped_forest"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 ender_pearl 15
replaceitem block ~5 ~1 ~5 slot.container 1 blaze_rod 10
replaceitem block ~5 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~5 ~1 ~5 slot.container 4 string 19
replaceitem block ~5 ~1 ~5 slot.container 5 bone 10
replaceitem block ~5 ~1 ~5 slot.container 9 gold_ingot 8
replaceitem block ~5 ~1 ~5 slot.container 10 quartz 17
replaceitem block ~5 ~1 ~5 slot.container 11 obsidian 12
replaceitem block ~5 ~1 ~5 slot.container 12 crying_obsidian 9
replaceitem block ~5 ~1 ~5 slot.container 13 netherite_scrap 5
replaceitem block ~5 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~5 loot "rsf/warped_forest"
loot insert ~5 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
