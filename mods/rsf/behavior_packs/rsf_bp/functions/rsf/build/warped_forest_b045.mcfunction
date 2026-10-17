# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3757/4224 | 主题内编号: b045/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十二柱神殿试炼场 (warped_forest_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 crying_obsidian []
setblock ~-4 ~-5 ~-5 shroomlight []
setblock ~4 ~-5 ~5 shroomlight []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~5 slot.container 1 gold_nugget 19
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-3 ~5 slot.container 3 ender_pearl 17
replaceitem block ~0 ~-3 ~5 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-3 ~5 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-3 ~5 slot.container 9 saddle 1
replaceitem block ~0 ~-3 ~5 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 11 quartz 20
replaceitem block ~0 ~-3 ~5 slot.container 12 obsidian 15
replaceitem block ~0 ~-3 ~5 slot.container 13 crying_obsidian 12
replaceitem block ~0 ~-3 ~5 slot.container 14 netherite_scrap 1
loot insert ~0 ~-3 ~5 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 warped_planks []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 stripped_warped_stem []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 stripped_warped_stem []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 stripped_warped_stem []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 stripped_warped_stem []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 stripped_warped_stem []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 stripped_warped_stem []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 stripped_warped_stem []
fill ~0 ~1 ~7 ~0 ~5 ~7 stripped_warped_stem []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 stripped_warped_stem []
fill ~2 ~1 ~7 ~2 ~5 ~7 stripped_warped_stem []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 stripped_warped_stem []
fill ~4 ~1 ~7 ~4 ~5 ~7 stripped_warped_stem []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 stripped_warped_stem []
fill ~6 ~1 ~7 ~6 ~5 ~7 stripped_warped_stem []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 stripped_warped_stem []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 stripped_warped_stem []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 stripped_warped_stem []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 stripped_warped_stem []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 stripped_warped_stem []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 stripped_warped_stem []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 stripped_warped_stem []
fill ~6 ~1 ~1 ~6 ~5 ~1 stripped_warped_stem []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 stripped_warped_stem []
fill ~6 ~1 ~3 ~6 ~5 ~3 stripped_warped_stem []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 stripped_warped_stem []
fill ~6 ~1 ~5 ~6 ~5 ~5 stripped_warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 blackstone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 warped_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_warped_stem []
setblock ~0 ~4 ~-9 diamond_block []
setblock ~0 ~5 ~-9 shroomlight []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_warped_stem []
setblock ~0 ~4 ~9 diamond_block []
setblock ~0 ~5 ~9 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_warped_stem []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_warped_stem []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~8 ~-7 ~5 ~8 warped_stem []
setblock ~-7 ~6 ~8 crying_obsidian []
setblock ~-7 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 crying_obsidian []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 12
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~6 slot.container 5 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 9 shroomlight 11
replaceitem block ~5 ~1 ~6 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 13 quartz 18
replaceitem block ~5 ~1 ~6 slot.container 14 obsidian 13
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
