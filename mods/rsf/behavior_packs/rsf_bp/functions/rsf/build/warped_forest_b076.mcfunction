# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3788/4224 | 主题内编号: b076/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·阶梯高台图腾战阵 (warped_forest_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 warped_planks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 shroomlight []
setblock ~-3 ~-4 ~-4 soul_lantern []
setblock ~3 ~-4 ~4 soul_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 string 13
replaceitem block ~0 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~0 ~-2 ~4 slot.container 2 gold_nugget 19
replaceitem block ~0 ~-2 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~0 ~-2 ~4 slot.container 4 ender_pearl 17
replaceitem block ~0 ~-2 ~4 slot.container 5 blaze_rod 12
replaceitem block ~0 ~-2 ~4 slot.container 9 obsidian 15
replaceitem block ~0 ~-2 ~4 slot.container 10 crying_obsidian 12
replaceitem block ~0 ~-2 ~4 slot.container 11 netherite_scrap 1
replaceitem block ~0 ~-2 ~4 slot.container 12 golden_apple 3
replaceitem block ~0 ~-2 ~4 slot.container 13 warped_stem 18
replaceitem block ~0 ~-2 ~4 slot.container 14 shroomlight 9
loot insert ~0 ~-2 ~4 loot "rsf/warped_forest"
loot insert ~0 ~-2 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 warped_planks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 polished_blackstone_bricks []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 warped_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 warped_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 warped_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 warped_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 warped_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 warped_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 warped_stem []
setblock ~0 ~4 ~-8 crying_obsidian []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 warped_stem []
setblock ~0 ~4 ~8 crying_obsidian []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 warped_stem []
setblock ~-7 ~4 ~0 crying_obsidian []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 warped_stem []
setblock ~7 ~4 ~0 crying_obsidian []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~8 ~-6 ~6 ~8 warped_stem []
setblock ~-6 ~7 ~8 crying_obsidian []
setblock ~-6 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 18
replaceitem block ~-4 ~1 ~5 slot.container 11 obsidian 13
replaceitem block ~-4 ~1 ~5 slot.container 12 crying_obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 13 netherite_scrap 6
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 16
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 4
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
