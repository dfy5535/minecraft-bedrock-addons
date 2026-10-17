# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3802/4224 | 主题内编号: b090/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·八角攒尖悬灯神龛 (warped_forest_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 quartz_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 gold_nugget 19
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~2 ~-2 ~3 slot.container 2 ender_pearl 17
replaceitem block ~2 ~-2 ~3 slot.container 3 blaze_rod 12
replaceitem block ~2 ~-2 ~3 slot.container 4 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 5 magma_cream 6
replaceitem block ~2 ~-2 ~3 slot.container 9 warped_stem 20
replaceitem block ~2 ~-2 ~3 slot.container 10 shroomlight 11
replaceitem block ~2 ~-2 ~3 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~2 ~-2 ~3 slot.container 12 saddle 1
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 9
replaceitem block ~2 ~-2 ~3 slot.container 14 quartz 18
loot insert ~2 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 blackstone []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 warped_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 warped_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 warped_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 warped_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 warped_planks []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 quartz_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 warped_stem []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 warped_stem []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 warped_stem []
fill ~4 ~0 ~2 ~4 ~9 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~-5 ~0 ~6 ~-5 ~5 ~6 warped_stem []
setblock ~-5 ~6 ~6 crying_obsidian []
setblock ~-5 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 1 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 2 string 16
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 4 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 9 obsidian 11
replaceitem block ~-3 ~1 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~-3 ~1 ~4 slot.container 11 netherite_scrap 4
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 13 warped_stem 21
replaceitem block ~-3 ~1 ~4 slot.container 14 shroomlight 12
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 19
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 5 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 9 obsidian 16
replaceitem block ~3 ~1 ~4 slot.container 10 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 11 netherite_scrap 2
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 13 warped_stem 19
replaceitem block ~3 ~1 ~4 slot.container 14 shroomlight 10
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
