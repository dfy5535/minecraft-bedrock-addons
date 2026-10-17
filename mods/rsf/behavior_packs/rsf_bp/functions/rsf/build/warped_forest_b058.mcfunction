# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3770/4224 | 主题内编号: b058/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十字拱顶家族陵墓 (warped_forest_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 17
replaceitem block ~0 ~-3 ~4 slot.container 1 blaze_rod 12
replaceitem block ~0 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-3 ~4 slot.container 3 magma_cream 6
replaceitem block ~0 ~-3 ~4 slot.container 4 string 13
replaceitem block ~0 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~0 ~-3 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~4 slot.container 10 saddle 1
replaceitem block ~0 ~-3 ~4 slot.container 11 gold_ingot 13
replaceitem block ~0 ~-3 ~4 slot.container 12 quartz 22
replaceitem block ~0 ~-3 ~4 slot.container 13 obsidian 10
replaceitem block ~0 ~-3 ~4 slot.container 14 crying_obsidian 7
loot insert ~0 ~-3 ~4 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~4 loot "chests/bastion_other"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 blaze_rod 10
replaceitem block ~0 ~-3 ~-4 slot.container 2 ghast_tear 9
replaceitem block ~0 ~-3 ~-4 slot.container 3 magma_cream 12
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 gold_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 quartz 21
replaceitem block ~0 ~-3 ~-4 slot.container 13 obsidian 16
replaceitem block ~0 ~-3 ~-4 slot.container 14 crying_obsidian 6
loot insert ~0 ~-3 ~-4 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 blackstone []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 blackstone []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 warped_fence []
setblock ~5 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 warped_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 warped_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 warped_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 warped_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 blackstone_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 warped_planks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 shroomlight []
setblock ~2 ~4 ~-10 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-6 ~0 ~8 ~-6 ~8 ~8 warped_stem []
setblock ~-6 ~9 ~8 crying_obsidian []
setblock ~-6 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 2 string 16
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_stem 20
replaceitem block ~-4 ~1 ~5 slot.container 10 shroomlight 11
replaceitem block ~-4 ~1 ~5 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 quartz 18
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 19
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 9 warped_stem 18
replaceitem block ~4 ~1 ~5 slot.container 10 shroomlight 9
replaceitem block ~4 ~1 ~5 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 14 quartz 16
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
