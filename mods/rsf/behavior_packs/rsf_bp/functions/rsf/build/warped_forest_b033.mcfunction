# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3745/4224 | 主题内编号: b033/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·太阳金顶高耸方尖碑 (warped_forest_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace fire
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 warped_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 blackstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 warped_planks []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 magma_cream 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 13
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 3 gold_nugget 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 shroomlight 9
replaceitem block ~0 ~-3 ~-2 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 saddle 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 gold_ingot 14
replaceitem block ~0 ~-3 ~-2 slot.container 13 quartz 16
replaceitem block ~0 ~-3 ~-2 slot.container 14 obsidian 11
loot insert ~0 ~-3 ~-2 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 polished_blackstone_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 warped_planks []
fill ~-1 ~5 ~-2 ~1 ~10 ~2 blackstone []
fill ~-1 ~1 ~-2 ~1 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~3 ~-6 stripped_warped_stem []
setblock ~-5 ~4 ~-6 shroomlight []
fill ~-5 ~0 ~6 ~-5 ~3 ~6 stripped_warped_stem []
setblock ~-5 ~4 ~6 shroomlight []
fill ~5 ~0 ~-6 ~5 ~3 ~-6 stripped_warped_stem []
setblock ~5 ~4 ~-6 shroomlight []
fill ~5 ~0 ~6 ~5 ~3 ~6 stripped_warped_stem []
setblock ~5 ~4 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 4x5x5) ---
fill ~-4 ~0 ~5 ~-4 ~8 ~5 warped_stem []
setblock ~-4 ~9 ~5 crying_obsidian []
setblock ~-4 ~10 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 crying_obsidian []
setblock ~0 ~2 ~0 shroomlight []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 blaze_rod 7
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 3 string 16
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 gold_nugget 22
replaceitem block ~2 ~1 ~3 slot.container 9 quartz 16
replaceitem block ~2 ~1 ~3 slot.container 10 obsidian 11
replaceitem block ~2 ~1 ~3 slot.container 11 crying_obsidian 8
replaceitem block ~2 ~1 ~3 slot.container 12 netherite_scrap 4
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~2 ~1 ~3 slot.container 14 warped_stem 21
loot insert ~2 ~1 ~3 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
