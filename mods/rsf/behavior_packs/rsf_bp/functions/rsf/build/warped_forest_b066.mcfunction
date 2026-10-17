# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3778/4224 | 主题内编号: b066/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·崩塌角楼古堡残垣 (warped_forest_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 blackstone []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 soul_lantern []
setblock ~3 ~-4 ~-4 soul_lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 13
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 2 gold_nugget 19
replaceitem block ~3 ~-2 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-2 ~4 slot.container 4 ender_pearl 17
replaceitem block ~3 ~-2 ~4 slot.container 5 blaze_rod 12
replaceitem block ~3 ~-2 ~4 slot.container 9 obsidian 10
replaceitem block ~3 ~-2 ~4 slot.container 10 crying_obsidian 7
replaceitem block ~3 ~-2 ~4 slot.container 11 netherite_scrap 3
replaceitem block ~3 ~-2 ~4 slot.container 12 golden_apple 5
replaceitem block ~3 ~-2 ~4 slot.container 13 warped_stem 20
replaceitem block ~3 ~-2 ~4 slot.container 14 shroomlight 11
loot insert ~3 ~-2 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-2 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 warped_planks []
setblock ~-5 ~9 ~-6 soul_lantern []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 warped_planks []
setblock ~-5 ~9 ~5 soul_lantern []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 warped_planks []
setblock ~4 ~9 ~-6 soul_lantern []
fill ~4 ~1 ~5 ~5 ~8 ~6 warped_planks []
setblock ~4 ~9 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 warped_stem []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 warped_stem []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 warped_stem []
fill ~6 ~0 ~2 ~6 ~5 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~7 ~-6 ~6 ~7 warped_stem []
setblock ~-6 ~7 ~7 crying_obsidian []
setblock ~-6 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 2 string 16
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 22
replaceitem block ~-4 ~1 ~5 slot.container 11 obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 12 crying_obsidian 7
replaceitem block ~-4 ~1 ~5 slot.container 13 netherite_scrap 3
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 19
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 20
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 15
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
