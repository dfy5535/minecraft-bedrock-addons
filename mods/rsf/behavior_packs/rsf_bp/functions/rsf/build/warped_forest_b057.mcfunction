# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3769/4224 | 主题内编号: b057/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·中央石棺帝王地下陵寝 (warped_forest_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~7 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~7 ~9 air [] replace fire
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 warped_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 blackstone []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 warped_planks []
setblock ~0 ~-7 ~0 diamond_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 magma_cream 6
replaceitem block ~0 ~-4 ~-5 slot.container 1 string 13
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~-5 slot.container 3 gold_nugget 19
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 ender_pearl 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~-5 slot.container 11 quartz 17
replaceitem block ~0 ~-4 ~-5 slot.container 12 obsidian 12
replaceitem block ~0 ~-4 ~-5 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-4 ~-5 slot.container 14 netherite_scrap 5
loot insert ~0 ~-4 ~-5 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 polished_blackstone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 warped_planks []
fill ~0 ~1 ~-7 ~0 ~2 ~7 warped_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 warped_planks []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 blackstone []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 crying_obsidian []
setblock ~0 ~8 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~8 ~-6 ~7 ~8 warped_stem []
setblock ~-6 ~8 ~8 crying_obsidian []
setblock ~-6 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 blaze_rod 7
replaceitem block ~4 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~6 slot.container 3 string 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~6 slot.container 9 crying_obsidian 9
replaceitem block ~4 ~1 ~6 slot.container 10 netherite_scrap 5
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 12 warped_stem 22
replaceitem block ~4 ~1 ~6 slot.container 13 shroomlight 6
replaceitem block ~4 ~1 ~6 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~4 ~1 ~6 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
