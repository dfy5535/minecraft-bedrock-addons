# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3773/4224 | 主题内编号: b061/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子封土古墓地宫 (warped_forest_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 warped_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 warped_planks []
setblock ~0 ~-7 ~0 diamond_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 ender_pearl 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 blaze_rod 12
replaceitem block ~0 ~-4 ~-3 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~-3 slot.container 4 magma_cream 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 string 13
replaceitem block ~0 ~-4 ~-3 slot.container 9 quartz 19
replaceitem block ~0 ~-4 ~-3 slot.container 10 obsidian 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 crying_obsidian 11
replaceitem block ~0 ~-4 ~-3 slot.container 12 netherite_scrap 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~-3 slot.container 14 warped_stem 17
loot insert ~0 ~-4 ~-3 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~-3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~6 ~6 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 warped_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 warped_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 blackstone []
fill ~0 ~15 ~0 ~0 ~17 ~0 diamond_block []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 warped_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 shroomlight []
setblock ~2 ~4 ~-8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~7 ~-7 ~6 ~7 warped_stem []
setblock ~-7 ~7 ~7 crying_obsidian []
setblock ~-7 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 15
replaceitem block ~5 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 12
replaceitem block ~5 ~1 ~4 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 10 warped_stem 17
replaceitem block ~5 ~1 ~4 slot.container 11 shroomlight 8
replaceitem block ~5 ~1 ~4 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 13
loot insert ~5 ~1 ~4 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-4 ~0
