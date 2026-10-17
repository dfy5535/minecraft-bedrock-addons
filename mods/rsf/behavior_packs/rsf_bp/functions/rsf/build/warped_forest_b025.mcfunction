# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3737/4224 | 主题内编号: b025/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·雉堞女墙四方哨塔 (warped_forest_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~12 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~12 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 warped_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 warped_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 polished_blackstone_bricks []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 stripped_warped_stem []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 stripped_warped_stem []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 stripped_warped_stem []
fill ~3 ~1 ~4 ~3 ~9 ~4 stripped_warped_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 polished_blackstone_wall []
setblock ~3 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~9 ~-4 ~3 ~9 ~4 warped_planks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 polished_blackstone_wall []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~-3 ~10 ~-4 stripped_warped_stem []
setblock ~-3 ~11 ~-4 shroomlight []
setblock ~-3 ~10 ~4 stripped_warped_stem []
setblock ~-3 ~11 ~4 shroomlight []
setblock ~3 ~10 ~-4 stripped_warped_stem []
setblock ~3 ~11 ~-4 shroomlight []
setblock ~3 ~10 ~4 stripped_warped_stem []
setblock ~3 ~11 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 polished_blackstone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 4x6x2) ---
fill ~-4 ~0 ~6 ~-4 ~5 ~6 warped_stem []
setblock ~-4 ~6 ~6 crying_obsidian []
setblock ~-4 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 blaze_rod 7
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 3 string 16
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 gold_nugget 22
replaceitem block ~2 ~1 ~3 slot.container 9 shroomlight 12
replaceitem block ~2 ~1 ~3 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~2 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 12 gold_ingot 10
replaceitem block ~2 ~1 ~3 slot.container 13 quartz 19
replaceitem block ~2 ~1 ~3 slot.container 14 obsidian 14
loot insert ~2 ~1 ~3 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~2 ~0
