# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3777/4224 | 主题内编号: b065/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·断柱露天古神庙废墟 (warped_forest_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~8 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~8 ~9 air [] replace fire
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 warped_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 blackstone []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 bone 12
replaceitem block ~3 ~-3 ~5 slot.container 1 gold_nugget 19
replaceitem block ~3 ~-3 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~3 ~-3 ~5 slot.container 3 ender_pearl 17
replaceitem block ~3 ~-3 ~5 slot.container 4 blaze_rod 12
replaceitem block ~3 ~-3 ~5 slot.container 5 ghast_tear 11
replaceitem block ~3 ~-3 ~5 slot.container 9 quartz 16
replaceitem block ~3 ~-3 ~5 slot.container 10 obsidian 11
replaceitem block ~3 ~-3 ~5 slot.container 11 crying_obsidian 8
replaceitem block ~3 ~-3 ~5 slot.container 12 netherite_scrap 4
replaceitem block ~3 ~-3 ~5 slot.container 13 golden_apple 6
replaceitem block ~3 ~-3 ~5 slot.container 14 warped_stem 21
loot insert ~3 ~-3 ~5 loot "rsf/warped_forest"
loot insert ~3 ~-3 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 warped_planks []
fill ~-5 ~1 ~-7 ~-5 ~4 ~-7 stripped_warped_stem []
fill ~-5 ~1 ~7 ~-5 ~4 ~7 stripped_warped_stem []
fill ~-3 ~1 ~-7 ~-3 ~4 ~-7 stripped_warped_stem []
fill ~-3 ~1 ~7 ~-3 ~4 ~7 stripped_warped_stem []
fill ~-1 ~1 ~-7 ~-1 ~4 ~-7 stripped_warped_stem []
fill ~-1 ~1 ~7 ~-1 ~4 ~7 stripped_warped_stem []
fill ~1 ~1 ~-7 ~1 ~4 ~-7 stripped_warped_stem []
fill ~1 ~1 ~7 ~1 ~4 ~7 stripped_warped_stem []
fill ~3 ~1 ~-7 ~3 ~4 ~-7 stripped_warped_stem []
fill ~3 ~1 ~7 ~3 ~4 ~7 stripped_warped_stem []
fill ~5 ~1 ~-7 ~5 ~4 ~-7 stripped_warped_stem []
fill ~5 ~1 ~7 ~5 ~4 ~7 stripped_warped_stem []
fill ~-5 ~1 ~-5 ~-5 ~4 ~-5 stripped_warped_stem []
fill ~5 ~1 ~-5 ~5 ~4 ~-5 stripped_warped_stem []
fill ~-5 ~1 ~-3 ~-5 ~4 ~-3 stripped_warped_stem []
fill ~5 ~1 ~-3 ~5 ~4 ~-3 stripped_warped_stem []
fill ~-5 ~1 ~-1 ~-5 ~4 ~-1 stripped_warped_stem []
fill ~5 ~1 ~-1 ~5 ~4 ~-1 stripped_warped_stem []
fill ~-5 ~1 ~1 ~-5 ~4 ~1 stripped_warped_stem []
fill ~5 ~1 ~1 ~5 ~4 ~1 stripped_warped_stem []
fill ~-5 ~1 ~3 ~-5 ~4 ~3 stripped_warped_stem []
fill ~5 ~1 ~3 ~5 ~4 ~3 stripped_warped_stem []
fill ~-5 ~1 ~5 ~-5 ~4 ~5 stripped_warped_stem []
fill ~5 ~1 ~5 ~5 ~4 ~5 stripped_warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 warped_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x10x2) ---
fill ~-6 ~0 ~10 ~-6 ~5 ~10 warped_stem []
setblock ~-6 ~6 ~10 crying_obsidian []
setblock ~-6 ~7 ~10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 blaze_rod 7
replaceitem block ~4 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~6 slot.container 3 string 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~6 slot.container 9 shroomlight 10
replaceitem block ~4 ~1 ~6 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~6 slot.container 12 gold_ingot 8
replaceitem block ~4 ~1 ~6 slot.container 13 quartz 17
replaceitem block ~4 ~1 ~6 slot.container 14 obsidian 12
loot insert ~4 ~1 ~6 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
