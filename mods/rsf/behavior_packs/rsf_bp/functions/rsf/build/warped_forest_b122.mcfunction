# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3834/4224 | 主题内编号: b122/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十字穹顶宏伟圣堂与墓窟 (warped_forest_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 blackstone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 blackstone [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 quartz_block []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 warped_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 string 13
replaceitem block ~0 ~-3 ~-5 slot.container 1 bone 12
replaceitem block ~0 ~-3 ~-5 slot.container 2 gold_nugget 19
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 ender_pearl 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 blaze_rod 12
replaceitem block ~0 ~-3 ~-5 slot.container 9 netherite_scrap 2
replaceitem block ~0 ~-3 ~-5 slot.container 10 golden_apple 4
replaceitem block ~0 ~-3 ~-5 slot.container 11 warped_stem 19
replaceitem block ~0 ~-3 ~-5 slot.container 12 shroomlight 10
replaceitem block ~0 ~-3 ~-5 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 saddle 1
loot insert ~0 ~-3 ~-5 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~-5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~8 ~7 blackstone []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 blackstone []
fill ~-1 ~1 ~-6 ~1 ~7 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 warped_fence []
setblock ~6 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 blackstone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 warped_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~7 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~-7 ~0 ~10 ~-7 ~7 ~10 warped_stem []
setblock ~-7 ~8 ~10 crying_obsidian []
setblock ~-7 ~9 ~10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 2 string 16
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 gold_nugget 22
replaceitem block ~-5 ~1 ~6 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~6 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 12 quartz 17
replaceitem block ~-5 ~1 ~6 slot.container 13 obsidian 12
replaceitem block ~-5 ~1 ~6 slot.container 14 crying_obsidian 9
loot insert ~-5 ~1 ~6 loot "rsf/warped_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 19
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 17
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 15
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 10
replaceitem block ~5 ~1 ~6 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 12 quartz 22
replaceitem block ~5 ~1 ~6 slot.container 13 obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 14 crying_obsidian 7
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
loot insert ~5 ~1 ~6 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
