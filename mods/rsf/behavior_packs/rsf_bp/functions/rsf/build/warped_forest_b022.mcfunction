# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3734/4224 | 主题内编号: b022/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·廊柱书库秘藏室 (warped_forest_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~4 slot.container 1 magma_cream 6
replaceitem block ~3 ~-2 ~4 slot.container 2 string 13
replaceitem block ~3 ~-2 ~4 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 4 gold_nugget 19
replaceitem block ~3 ~-2 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~3 ~-2 ~4 slot.container 9 obsidian 16
replaceitem block ~3 ~-2 ~4 slot.container 10 crying_obsidian 6
replaceitem block ~3 ~-2 ~4 slot.container 11 netherite_scrap 2
replaceitem block ~3 ~-2 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~-2 ~4 slot.container 13 warped_stem 19
replaceitem block ~3 ~-2 ~4 slot.container 14 shroomlight 10
loot insert ~3 ~-2 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-2 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 warped_planks []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 warped_stem []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 warped_stem []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 warped_stem []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 warped_stem []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 warped_stem []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 warped_stem []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 warped_stem []
fill ~1 ~1 ~6 ~1 ~5 ~6 warped_stem []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 warped_stem []
fill ~3 ~1 ~6 ~3 ~5 ~6 warped_stem []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 warped_stem []
fill ~5 ~1 ~6 ~5 ~5 ~6 warped_stem []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 warped_stem []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 warped_stem []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 warped_stem []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 warped_stem []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 warped_stem []
fill ~5 ~1 ~0 ~5 ~5 ~0 warped_stem []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 warped_stem []
fill ~5 ~1 ~2 ~5 ~5 ~2 warped_stem []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 warped_stem []
fill ~5 ~1 ~4 ~5 ~5 ~4 warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 warped_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 quartz_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~8 ~-6 ~7 ~8 warped_stem []
setblock ~-6 ~8 ~8 crying_obsidian []
setblock ~-6 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 12 quartz 22
replaceitem block ~-4 ~1 ~5 slot.container 13 obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 14 crying_obsidian 7
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 12 quartz 20
replaceitem block ~4 ~1 ~5 slot.container 13 obsidian 15
replaceitem block ~4 ~1 ~5 slot.container 14 crying_obsidian 12
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
