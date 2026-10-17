# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3688/4224 | 主题内编号: b104/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双层指挥台卫戍堡 (crimson_forest_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 crimson_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 magma_cream 7
replaceitem block ~4 ~-3 ~3 slot.container 1 ghast_tear 5
replaceitem block ~4 ~-3 ~3 slot.container 2 string 13
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 8
replaceitem block ~4 ~-3 ~3 slot.container 4 leather 17
replaceitem block ~4 ~-3 ~3 slot.container 5 cooked_porkchop 16
replaceitem block ~4 ~-3 ~3 slot.container 9 crossbow 1
replaceitem block ~4 ~-3 ~3 slot.container 10 arrow 27
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_carrot 13
replaceitem block ~4 ~-3 ~3 slot.container 13 crimson_stem 22
replaceitem block ~4 ~-3 ~3 slot.container 14 shroomlight 6
loot insert ~4 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 blackstone_slab []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 crimson_planks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 crimson_planks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 crimson_fence []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 crimson_stem []
setblock ~-6 ~11 ~-5 shroomlight []
setblock ~-6 ~10 ~5 crimson_stem []
setblock ~-6 ~11 ~5 shroomlight []
setblock ~6 ~10 ~-5 crimson_stem []
setblock ~6 ~11 ~-5 shroomlight []
setblock ~6 ~10 ~5 crimson_stem []
setblock ~6 ~11 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_blackstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 gilded_blackstone []
setblock ~9 ~9 ~-7 gold_block []
setblock ~9 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 4 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 9 crying_obsidian 12
replaceitem block ~-5 ~1 ~3 slot.container 10 obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 11 netherite_scrap 2
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 13 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 14 arrow 28
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
