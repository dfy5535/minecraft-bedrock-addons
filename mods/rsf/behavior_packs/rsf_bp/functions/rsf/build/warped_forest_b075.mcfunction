# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3787/4224 | 主题内编号: b075/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·远古巨石环廊法阵 (warped_forest_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 warped_planks []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~-5 slot.container 1 gold_nugget 19
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 17
replaceitem block ~0 ~-3 ~-5 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-3 ~-5 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-3 ~-5 slot.container 9 crying_obsidian 9
replaceitem block ~0 ~-3 ~-5 slot.container 10 netherite_scrap 5
replaceitem block ~0 ~-3 ~-5 slot.container 11 golden_apple 7
replaceitem block ~0 ~-3 ~-5 slot.container 12 warped_stem 22
replaceitem block ~0 ~-3 ~-5 slot.container 13 shroomlight 6
replaceitem block ~0 ~-3 ~-5 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~0 ~-3 ~-5 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~-5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 warped_planks []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 warped_stem []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 warped_stem []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 warped_stem []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 warped_stem []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 warped_stem []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 warped_stem []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 warped_stem []
fill ~0 ~1 ~7 ~0 ~5 ~7 warped_stem []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 warped_stem []
fill ~2 ~1 ~7 ~2 ~5 ~7 warped_stem []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 warped_stem []
fill ~4 ~1 ~7 ~4 ~5 ~7 warped_stem []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 warped_stem []
fill ~6 ~1 ~7 ~6 ~5 ~7 warped_stem []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 warped_stem []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 warped_stem []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 warped_stem []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 warped_stem []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 warped_stem []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 warped_stem []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 warped_stem []
fill ~6 ~1 ~1 ~6 ~5 ~1 warped_stem []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 warped_stem []
fill ~6 ~1 ~3 ~6 ~5 ~3 warped_stem []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 warped_stem []
fill ~6 ~1 ~5 ~6 ~5 ~5 warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 warped_stem []
setblock ~-6 ~9 ~-7 shroomlight []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 warped_stem []
setblock ~-6 ~9 ~7 shroomlight []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 warped_stem []
setblock ~6 ~9 ~-7 shroomlight []
fill ~6 ~6 ~7 ~6 ~8 ~7 warped_stem []
setblock ~6 ~9 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~8 ~-7 ~5 ~8 warped_stem []
setblock ~-7 ~6 ~8 crying_obsidian []
setblock ~-7 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 12
replaceitem block ~5 ~1 ~6 slot.container 9 shroomlight 6
replaceitem block ~5 ~1 ~6 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 quartz 20
replaceitem block ~5 ~1 ~6 slot.container 14 obsidian 15
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
