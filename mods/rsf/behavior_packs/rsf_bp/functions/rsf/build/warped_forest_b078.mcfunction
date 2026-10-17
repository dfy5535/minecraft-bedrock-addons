# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3790/4224 | 主题内编号: b078/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·下沉祭池图腾柱群 (warped_forest_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 warped_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 ender_pearl 17
replaceitem block ~-3 ~-3 ~4 slot.container 1 blaze_rod 12
replaceitem block ~-3 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~-3 ~-3 ~4 slot.container 3 magma_cream 6
replaceitem block ~-3 ~-3 ~4 slot.container 4 string 13
replaceitem block ~-3 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~-3 ~-3 ~4 slot.container 9 obsidian 14
replaceitem block ~-3 ~-3 ~4 slot.container 10 crying_obsidian 11
replaceitem block ~-3 ~-3 ~4 slot.container 11 netherite_scrap 7
replaceitem block ~-3 ~-3 ~4 slot.container 12 golden_apple 2
replaceitem block ~-3 ~-3 ~4 slot.container 13 warped_stem 17
replaceitem block ~-3 ~-3 ~4 slot.container 14 shroomlight 8
loot insert ~-3 ~-3 ~4 loot "rsf/warped_forest"
loot insert ~-3 ~-3 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 warped_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 warped_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 warped_stem []
setblock ~-5 ~8 ~-6 soul_lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 warped_stem []
setblock ~-5 ~8 ~6 soul_lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 warped_stem []
setblock ~5 ~8 ~-6 soul_lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 warped_stem []
setblock ~5 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~7 ~-6 ~8 ~7 warped_stem []
setblock ~-6 ~9 ~7 crying_obsidian []
setblock ~-6 ~10 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_stem 19
replaceitem block ~-4 ~1 ~5 slot.container 10 shroomlight 10
replaceitem block ~-4 ~1 ~5 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 14 quartz 17
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 warped_stem 17
replaceitem block ~4 ~1 ~5 slot.container 10 shroomlight 8
replaceitem block ~4 ~1 ~5 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 14 quartz 22
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
