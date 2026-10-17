# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3772/4224 | 主题内编号: b060/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·圆形穹顶万骨祠堂 (warped_forest_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 warped_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 warped_planks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-3 ~4 slot.container 1 magma_cream 6
replaceitem block ~0 ~-3 ~4 slot.container 2 string 13
replaceitem block ~0 ~-3 ~4 slot.container 3 bone 12
replaceitem block ~0 ~-3 ~4 slot.container 4 gold_nugget 19
replaceitem block ~0 ~-3 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~0 ~-3 ~4 slot.container 9 netherite_scrap 6
replaceitem block ~0 ~-3 ~4 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~4 slot.container 11 warped_stem 16
replaceitem block ~0 ~-3 ~4 slot.container 12 shroomlight 7
replaceitem block ~0 ~-3 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~4 slot.container 14 saddle 1
loot insert ~0 ~-3 ~4 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~4 loot "chests/bastion_other"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ghast_tear 9
replaceitem block ~0 ~-3 ~-4 slot.container 1 magma_cream 12
replaceitem block ~0 ~-3 ~-4 slot.container 2 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 4 gold_nugget 17
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 9 netherite_scrap 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 11 warped_stem 22
replaceitem block ~0 ~-3 ~-4 slot.container 12 shroomlight 6
replaceitem block ~0 ~-3 ~-4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 saddle 1
loot insert ~0 ~-3 ~-4 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 polished_blackstone_bricks []
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

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 polished_blackstone_bricks []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~7 ~-6 ~5 ~7 warped_stem []
setblock ~-6 ~6 ~7 crying_obsidian []
setblock ~-6 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 9 obsidian 16
replaceitem block ~-4 ~1 ~5 slot.container 10 crying_obsidian 6
replaceitem block ~-4 ~1 ~5 slot.container 11 netherite_scrap 2
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 13 warped_stem 19
replaceitem block ~-4 ~1 ~5 slot.container 14 shroomlight 10
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 11 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 warped_stem 17
replaceitem block ~4 ~1 ~5 slot.container 14 shroomlight 8
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
