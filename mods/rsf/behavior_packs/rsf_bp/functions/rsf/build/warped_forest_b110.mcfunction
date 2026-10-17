# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3822/4224 | 主题内编号: b110/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子附魔与酿造实验楼 (warped_forest_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 quartz_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ghast_tear 11
replaceitem block ~4 ~-2 ~3 slot.container 1 magma_cream 6
replaceitem block ~4 ~-2 ~3 slot.container 2 string 13
replaceitem block ~4 ~-2 ~3 slot.container 3 bone 12
replaceitem block ~4 ~-2 ~3 slot.container 4 gold_nugget 19
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~-2 ~3 slot.container 9 warped_stem 19
replaceitem block ~4 ~-2 ~3 slot.container 10 shroomlight 10
replaceitem block ~4 ~-2 ~3 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~4 ~-2 ~3 slot.container 12 saddle 1
replaceitem block ~4 ~-2 ~3 slot.container 13 gold_ingot 8
replaceitem block ~4 ~-2 ~3 slot.container 14 quartz 17
loot insert ~4 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 blackstone []
fill ~2 ~1 ~-5 ~6 ~7 ~5 blackstone []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 warped_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 blackstone_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 quartz_block []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 warped_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 warped_stem []
setblock ~0 ~4 ~-8 shroomlight []
setblock ~0 ~5 ~-8 shroomlight []
fill ~0 ~0 ~8 ~0 ~3 ~8 warped_stem []
setblock ~0 ~4 ~8 shroomlight []
setblock ~0 ~5 ~8 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 warped_stem []
setblock ~-7 ~4 ~0 shroomlight []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 warped_stem []
setblock ~7 ~4 ~0 shroomlight []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~8 ~-7 ~5 ~8 warped_stem []
setblock ~-7 ~6 ~8 crying_obsidian []
setblock ~-7 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-5 ~1 ~4 slot.container 9 obsidian 10
replaceitem block ~-5 ~1 ~4 slot.container 10 crying_obsidian 7
replaceitem block ~-5 ~1 ~4 slot.container 11 netherite_scrap 3
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 13 warped_stem 20
replaceitem block ~-5 ~1 ~4 slot.container 14 shroomlight 11
loot insert ~-5 ~1 ~4 loot "rsf/warped_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~5 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 4 string 19
replaceitem block ~5 ~1 ~4 slot.container 5 bone 10
replaceitem block ~5 ~1 ~4 slot.container 9 obsidian 15
replaceitem block ~5 ~1 ~4 slot.container 10 crying_obsidian 12
replaceitem block ~5 ~1 ~4 slot.container 11 netherite_scrap 1
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 13 warped_stem 18
replaceitem block ~5 ~1 ~4 slot.container 14 shroomlight 9
loot insert ~5 ~1 ~4 loot "rsf/warped_forest"
loot insert ~5 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
