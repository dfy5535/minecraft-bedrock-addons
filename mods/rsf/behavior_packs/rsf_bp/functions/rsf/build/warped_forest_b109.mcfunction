# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3821/4224 | 主题内编号: b109/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·环柱能量矩阵奥术厅 (warped_forest_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 blaze_rod 12
replaceitem block ~3 ~-3 ~4 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 2 magma_cream 6
replaceitem block ~3 ~-3 ~4 slot.container 3 string 13
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 5 gold_nugget 19
replaceitem block ~3 ~-3 ~4 slot.container 9 crying_obsidian 8
replaceitem block ~3 ~-3 ~4 slot.container 10 netherite_scrap 4
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 6
replaceitem block ~3 ~-3 ~4 slot.container 12 warped_stem 21
replaceitem block ~3 ~-3 ~4 slot.container 13 shroomlight 12
replaceitem block ~3 ~-3 ~4 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~3 ~-3 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-3 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 warped_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_warped_stem []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_warped_stem []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 stripped_warped_stem []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 stripped_warped_stem []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 stripped_warped_stem []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 stripped_warped_stem []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 stripped_warped_stem []
fill ~1 ~1 ~6 ~1 ~6 ~6 stripped_warped_stem []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 stripped_warped_stem []
fill ~3 ~1 ~6 ~3 ~6 ~6 stripped_warped_stem []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_warped_stem []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_warped_stem []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 stripped_warped_stem []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 stripped_warped_stem []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 stripped_warped_stem []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 stripped_warped_stem []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 stripped_warped_stem []
fill ~5 ~1 ~0 ~5 ~6 ~0 stripped_warped_stem []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 stripped_warped_stem []
fill ~5 ~1 ~2 ~5 ~6 ~2 stripped_warped_stem []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 stripped_warped_stem []
fill ~5 ~1 ~4 ~5 ~6 ~4 stripped_warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 warped_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 polished_blackstone_bricks []
fill ~0 ~13 ~0 ~0 ~15 ~0 crying_obsidian []
setblock ~0 ~16 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-6 ~0 ~8 ~-6 ~9 ~8 warped_stem []
setblock ~-6 ~10 ~8 crying_obsidian []
setblock ~-6 ~11 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 12
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 11 quartz 17
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 9
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 5
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-3 ~0
