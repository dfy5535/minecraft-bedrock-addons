# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3785/4224 | 主题内编号: b073/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·八方图腾圣火石阵 (warped_forest_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 string 13
replaceitem block ~-2 ~-2 ~3 slot.container 1 bone 12
replaceitem block ~-2 ~-2 ~3 slot.container 2 gold_nugget 19
replaceitem block ~-2 ~-2 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~-2 ~-2 ~3 slot.container 4 ender_pearl 17
replaceitem block ~-2 ~-2 ~3 slot.container 5 blaze_rod 12
replaceitem block ~-2 ~-2 ~3 slot.container 9 warped_stem 20
replaceitem block ~-2 ~-2 ~3 slot.container 10 shroomlight 11
replaceitem block ~-2 ~-2 ~3 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-2 ~-2 ~3 slot.container 12 saddle 1
replaceitem block ~-2 ~-2 ~3 slot.container 13 gold_ingot 9
replaceitem block ~-2 ~-2 ~3 slot.container 14 quartz 18
loot insert ~-2 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~-2 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 air []
fill ~5 ~1 ~6 ~5 ~7 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 stripped_warped_stem []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 stripped_warped_stem []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 stripped_warped_stem []
fill ~4 ~1 ~5 ~4 ~6 ~5 stripped_warped_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 stripped_warped_stem []
setblock ~-5 ~9 ~-6 shroomlight []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 stripped_warped_stem []
setblock ~-5 ~9 ~6 shroomlight []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 stripped_warped_stem []
setblock ~5 ~9 ~-6 shroomlight []
fill ~5 ~6 ~6 ~5 ~8 ~6 stripped_warped_stem []
setblock ~5 ~9 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_warped_stem []
setblock ~0 ~4 ~-8 diamond_block []
setblock ~0 ~5 ~-8 shroomlight []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_warped_stem []
setblock ~0 ~4 ~8 diamond_block []
setblock ~0 ~5 ~8 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_warped_stem []
setblock ~-7 ~4 ~0 diamond_block []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_warped_stem []
setblock ~7 ~4 ~0 diamond_block []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-6 ~0 ~8 ~-6 ~8 ~8 warped_stem []
setblock ~-6 ~9 ~8 crying_obsidian []
setblock ~-6 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 7
replaceitem block ~4 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 3 string 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 16
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 6
replaceitem block ~4 ~1 ~5 slot.container 12 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 14 warped_stem 19
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-3 ~0
