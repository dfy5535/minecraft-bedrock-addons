# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3798/4224 | 主题内编号: b086/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·重装矿石金库碉堡 (warped_forest_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~7 ~-5 warped_planks []
setblock ~-5 ~8 ~-6 soul_lantern []
fill ~-5 ~1 ~5 ~-4 ~7 ~6 warped_planks []
setblock ~-5 ~8 ~5 soul_lantern []
fill ~4 ~1 ~-6 ~5 ~7 ~-5 warped_planks []
setblock ~4 ~8 ~-6 soul_lantern []
fill ~4 ~1 ~5 ~5 ~7 ~6 warped_planks []
setblock ~4 ~8 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 warped_planks []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 warped_fence []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 warped_stem []
setblock ~-5 ~7 ~-6 soul_lantern []
setblock ~-5 ~6 ~6 warped_stem []
setblock ~-5 ~7 ~6 soul_lantern []
setblock ~5 ~6 ~-6 warped_stem []
setblock ~5 ~7 ~-6 soul_lantern []
setblock ~5 ~6 ~6 warped_stem []
setblock ~5 ~7 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 warped_stem []
setblock ~-7 ~4 ~-8 shroomlight []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 warped_stem []
setblock ~-7 ~4 ~8 shroomlight []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 warped_stem []
setblock ~7 ~4 ~-8 shroomlight []
fill ~7 ~0 ~8 ~7 ~3 ~8 warped_stem []
setblock ~7 ~4 ~8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x9x3) ---
fill ~-6 ~0 ~9 ~-6 ~6 ~9 warped_stem []
setblock ~-6 ~7 ~9 crying_obsidian []
setblock ~-6 ~8 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 21
replaceitem block ~-4 ~1 ~5 slot.container 11 obsidian 16
replaceitem block ~-4 ~1 ~5 slot.container 12 crying_obsidian 6
replaceitem block ~-4 ~1 ~5 slot.container 13 netherite_scrap 2
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 19
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
