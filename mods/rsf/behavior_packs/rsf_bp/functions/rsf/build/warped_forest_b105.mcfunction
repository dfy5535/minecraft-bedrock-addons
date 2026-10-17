# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3817/4224 | 主题内编号: b105/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·满书架奥术附魔书院 (warped_forest_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace fire
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
fill ~-4 ~1 ~-6 ~4 ~6 ~6 polished_blackstone_bricks []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 stripped_warped_stem []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 stripped_warped_stem []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 stripped_warped_stem []
fill ~4 ~1 ~6 ~4 ~6 ~6 stripped_warped_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 polished_blackstone_wall []
setblock ~4 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 warped_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 warped_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_warped_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_warped_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 warped_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~-5 ~0 ~7 ~-5 ~5 ~7 warped_stem []
setblock ~-5 ~6 ~7 crying_obsidian []
setblock ~-5 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 blaze_rod 7
replaceitem block ~3 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 3 string 16
replaceitem block ~3 ~1 ~5 slot.container 4 bone 15
replaceitem block ~3 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~5 slot.container 9 shroomlight 8
replaceitem block ~3 ~1 ~5 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~5 slot.container 12 gold_ingot 13
replaceitem block ~3 ~1 ~5 slot.container 13 quartz 22
replaceitem block ~3 ~1 ~5 slot.container 14 obsidian 10
loot insert ~3 ~1 ~5 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
