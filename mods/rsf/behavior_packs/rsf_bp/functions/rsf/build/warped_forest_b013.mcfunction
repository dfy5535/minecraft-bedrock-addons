# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3725/4224 | 主题内编号: b013/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·地底熔炉苦工地牢 (warped_forest_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~8 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~8 ~9 air [] replace fire
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 warped_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 polished_blackstone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 blaze_rod 12
replaceitem block ~3 ~-4 ~5 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-4 ~5 slot.container 2 magma_cream 6
replaceitem block ~3 ~-4 ~5 slot.container 3 string 13
replaceitem block ~3 ~-4 ~5 slot.container 4 bone 12
replaceitem block ~3 ~-4 ~5 slot.container 5 gold_nugget 19
replaceitem block ~3 ~-4 ~5 slot.container 9 shroomlight 6
replaceitem block ~3 ~-4 ~5 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~3 ~-4 ~5 slot.container 11 saddle 1
replaceitem block ~3 ~-4 ~5 slot.container 12 gold_ingot 11
replaceitem block ~3 ~-4 ~5 slot.container 13 quartz 20
replaceitem block ~3 ~-4 ~5 slot.container 14 obsidian 15
loot insert ~3 ~-4 ~5 loot "rsf/warped_forest"
loot insert ~3 ~-4 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 polished_blackstone_bricks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 stripped_warped_stem []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 stripped_warped_stem []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 stripped_warped_stem []
fill ~5 ~1 ~7 ~5 ~5 ~7 stripped_warped_stem []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 warped_planks []
fill ~-5 ~6 ~-7 ~5 ~6 ~7 polished_blackstone_wall []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 air []
setblock ~-5 ~6 ~-7 stripped_warped_stem []
setblock ~-5 ~7 ~-7 shroomlight []
setblock ~-5 ~6 ~7 stripped_warped_stem []
setblock ~-5 ~7 ~7 shroomlight []
setblock ~5 ~6 ~-7 stripped_warped_stem []
setblock ~5 ~7 ~-7 shroomlight []
setblock ~5 ~6 ~7 stripped_warped_stem []
setblock ~5 ~7 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 nether_brick []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~-6 ~0 ~9 ~-6 ~8 ~9 warped_stem []
setblock ~-6 ~9 ~9 crying_obsidian []
setblock ~-6 ~10 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 15
replaceitem block ~4 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~1 ~6 slot.container 3 ender_pearl 12
replaceitem block ~4 ~1 ~6 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~6 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 9 quartz 17
replaceitem block ~4 ~1 ~6 slot.container 10 obsidian 12
replaceitem block ~4 ~1 ~6 slot.container 11 crying_obsidian 9
replaceitem block ~4 ~1 ~6 slot.container 12 netherite_scrap 5
replaceitem block ~4 ~1 ~6 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 14 warped_stem 22
loot insert ~4 ~1 ~6 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-4 ~0
