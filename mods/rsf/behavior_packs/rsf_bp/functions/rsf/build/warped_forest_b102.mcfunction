# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3814/4224 | 主题内编号: b102/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子箭塔联防碉楼 (warped_forest_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 soul_lantern []
setblock ~4 ~-4 ~-3 soul_lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 17
replaceitem block ~4 ~-2 ~3 slot.container 1 blaze_rod 12
replaceitem block ~4 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-2 ~3 slot.container 3 magma_cream 6
replaceitem block ~4 ~-2 ~3 slot.container 4 string 13
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~4 ~-2 ~3 slot.container 9 gold_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 10 quartz 18
replaceitem block ~4 ~-2 ~3 slot.container 11 obsidian 13
replaceitem block ~4 ~-2 ~3 slot.container 12 crying_obsidian 10
replaceitem block ~4 ~-2 ~3 slot.container 13 netherite_scrap 6
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 8
loot insert ~4 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 blackstone []
fill ~2 ~1 ~-5 ~6 ~8 ~5 blackstone []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 warped_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 warped_planks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 blackstone []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 crying_obsidian []
setblock ~0 ~9 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~6 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~6 ~-7 ~7 ~6 warped_stem []
setblock ~-7 ~8 ~6 crying_obsidian []
setblock ~-7 ~9 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-5 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 12 quartz 18
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 10
loot insert ~-5 ~1 ~4 loot "rsf/warped_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~5 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 4 string 19
replaceitem block ~5 ~1 ~4 slot.container 5 bone 10
replaceitem block ~5 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 12 quartz 16
replaceitem block ~5 ~1 ~4 slot.container 13 obsidian 11
replaceitem block ~5 ~1 ~4 slot.container 14 crying_obsidian 8
loot insert ~5 ~1 ~4 loot "rsf/warped_forest"
loot insert ~5 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
