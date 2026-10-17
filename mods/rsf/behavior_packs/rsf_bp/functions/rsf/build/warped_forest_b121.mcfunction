# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3833/4224 | 主题内编号: b121/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·卫城廊柱王座大殿与地宫 (warped_forest_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 shroomlight []
setblock ~4 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-4 ~5 slot.container 1 ender_pearl 17
replaceitem block ~0 ~-4 ~5 slot.container 2 blaze_rod 12
replaceitem block ~0 ~-4 ~5 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 4 magma_cream 6
replaceitem block ~0 ~-4 ~5 slot.container 5 string 13
replaceitem block ~0 ~-4 ~5 slot.container 9 shroomlight 9
replaceitem block ~0 ~-4 ~5 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~5 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~5 slot.container 12 gold_ingot 14
replaceitem block ~0 ~-4 ~5 slot.container 13 quartz 16
replaceitem block ~0 ~-4 ~5 slot.container 14 obsidian 11
loot insert ~0 ~-4 ~5 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~5 loot "chests/bastion_other"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-4 ~-5 slot.container 1 ender_pearl 15
replaceitem block ~0 ~-4 ~-5 slot.container 2 blaze_rod 10
replaceitem block ~0 ~-4 ~-5 slot.container 3 ghast_tear 9
replaceitem block ~0 ~-4 ~-5 slot.container 4 magma_cream 12
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 19
replaceitem block ~0 ~-4 ~-5 slot.container 9 shroomlight 8
replaceitem block ~0 ~-4 ~-5 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 gold_ingot 13
replaceitem block ~0 ~-4 ~-5 slot.container 13 quartz 22
replaceitem block ~0 ~-4 ~-5 slot.container 14 obsidian 10
loot insert ~0 ~-4 ~-5 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~7 ~7 polished_blackstone_bricks []
fill ~-5 ~1 ~0 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 stripped_warped_stem []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 stripped_warped_stem []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 stripped_warped_stem []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 stripped_warped_stem []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 stripped_warped_stem []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 stripped_warped_stem []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 stripped_warped_stem []
fill ~-6 ~7 ~-7 ~6 ~7 ~-1 warped_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-8 ~-7 ~8 ~8 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-8 ~7 ~8 ~8 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-7 ~-6 ~9 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-7 ~6 ~9 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-7 ~5 ~9 ~7 warped_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~9 ~-7 ~6 ~9 warped_stem []
setblock ~-7 ~7 ~9 crying_obsidian []
setblock ~-7 ~8 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 2 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 3 string 16
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 10 warped_stem 21
replaceitem block ~5 ~1 ~6 slot.container 11 shroomlight 12
replaceitem block ~5 ~1 ~6 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-4 ~0
