# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3664/4224 | 主题内编号: b080/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·悬灯祈福图腾花坛 (crimson_forest_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 blackstone_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 crimson_planks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 blackstone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 crimson_planks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 crimson_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 crimson_stem []
setblock ~0 ~4 ~-6 shroomlight []
setblock ~0 ~5 ~-6 shroomlight []
fill ~0 ~0 ~6 ~0 ~3 ~6 crimson_stem []
setblock ~0 ~4 ~6 shroomlight []
setblock ~0 ~5 ~6 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 crimson_stem []
setblock ~-7 ~4 ~0 shroomlight []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 crimson_stem []
setblock ~7 ~4 ~0 shroomlight []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-6 ~8 ~9 ~-6 gilded_blackstone []
setblock ~8 ~10 ~-6 gold_block []
setblock ~8 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 4 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 9 crimson_stem 19
replaceitem block ~-4 ~1 ~2 slot.container 10 shroomlight 10
replaceitem block ~-4 ~1 ~2 slot.container 11 crying_obsidian 11
replaceitem block ~-4 ~1 ~2 slot.container 12 obsidian 14
replaceitem block ~-4 ~1 ~2 slot.container 13 netherite_scrap 1
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_helmet 1
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
