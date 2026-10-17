# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3761/4224 | 主题内编号: b049/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双坡顶林间猎人木屋 (warped_forest_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~8 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~8 ~8 air [] replace fire
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 warped_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 quartz_block []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-2 ~-4 ~3 slot.container 1 ender_pearl 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 blaze_rod 12
replaceitem block ~-2 ~-4 ~3 slot.container 3 ghast_tear 11
replaceitem block ~-2 ~-4 ~3 slot.container 4 magma_cream 6
replaceitem block ~-2 ~-4 ~3 slot.container 5 string 13
replaceitem block ~-2 ~-4 ~3 slot.container 9 crying_obsidian 7
replaceitem block ~-2 ~-4 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~-2 ~-4 ~3 slot.container 11 golden_apple 5
replaceitem block ~-2 ~-4 ~3 slot.container 12 warped_stem 20
replaceitem block ~-2 ~-4 ~3 slot.container 13 shroomlight 11
replaceitem block ~-2 ~-4 ~3 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~-2 ~-4 ~3 loot "rsf/warped_forest"
loot insert ~-2 ~-4 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 polished_blackstone_bricks []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 stripped_warped_stem []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 stripped_warped_stem []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 stripped_warped_stem []
fill ~4 ~1 ~6 ~4 ~5 ~6 stripped_warped_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 polished_blackstone_wall []
setblock ~4 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 warped_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 nether_brick []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~-5 ~0 ~8 ~-5 ~9 ~8 warped_stem []
setblock ~-5 ~10 ~8 crying_obsidian []
setblock ~-5 ~11 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-2 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 blaze_rod 7
replaceitem block ~3 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 3 string 16
replaceitem block ~3 ~1 ~5 slot.container 4 bone 15
replaceitem block ~3 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 11 quartz 20
replaceitem block ~3 ~1 ~5 slot.container 12 obsidian 15
replaceitem block ~3 ~1 ~5 slot.container 13 crying_obsidian 12
replaceitem block ~3 ~1 ~5 slot.container 14 netherite_scrap 1
loot insert ~3 ~1 ~5 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-3 ~0
