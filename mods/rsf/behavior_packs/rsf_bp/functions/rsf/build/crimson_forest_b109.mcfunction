# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3693/4224 | 主题内编号: b109/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·环柱能量矩阵奥术厅 (crimson_forest_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 cooked_porkchop 16
replaceitem block ~4 ~-2 ~3 slot.container 1 gold_ingot 17
replaceitem block ~4 ~-2 ~3 slot.container 2 blaze_rod 4
replaceitem block ~4 ~-2 ~3 slot.container 3 magma_cream 7
replaceitem block ~4 ~-2 ~3 slot.container 4 ghast_tear 5
replaceitem block ~4 ~-2 ~3 slot.container 5 string 13
replaceitem block ~4 ~-2 ~3 slot.container 9 shroomlight 6
replaceitem block ~4 ~-2 ~3 slot.container 10 crying_obsidian 7
replaceitem block ~4 ~-2 ~3 slot.container 11 obsidian 10
replaceitem block ~4 ~-2 ~3 slot.container 12 netherite_scrap 4
replaceitem block ~4 ~-2 ~3 slot.container 13 golden_helmet 1
replaceitem block ~4 ~-2 ~3 slot.container 14 crossbow 1
loot insert ~4 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 crimson_stem []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 crimson_stem []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 crimson_stem []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 crimson_stem []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 crimson_stem []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 crimson_stem []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 crimson_stem []
fill ~0 ~1 ~5 ~0 ~8 ~5 crimson_stem []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 crimson_stem []
fill ~2 ~1 ~5 ~2 ~8 ~5 crimson_stem []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 crimson_stem []
fill ~4 ~1 ~5 ~4 ~8 ~5 crimson_stem []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 crimson_stem []
fill ~6 ~1 ~5 ~6 ~8 ~5 crimson_stem []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 crimson_stem []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 crimson_stem []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 crimson_stem []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 crimson_stem []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 crimson_stem []
fill ~6 ~1 ~1 ~6 ~8 ~1 crimson_stem []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 crimson_stem []
fill ~6 ~1 ~3 ~6 ~8 ~3 crimson_stem []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 polished_blackstone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 crimson_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 shroomlight []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 crimson_stem []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 crimson_stem []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 crimson_stem []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 crimson_stem []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~9 ~0 ~-6 ~9 ~8 ~-6 gilded_blackstone []
setblock ~9 ~9 ~-6 gold_block []
setblock ~9 ~10 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 1 string 16
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 9 arrow 28
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 11 golden_carrot 14
replaceitem block ~5 ~1 ~3 slot.container 12 crimson_stem 16
replaceitem block ~5 ~1 ~3 slot.container 13 shroomlight 7
replaceitem block ~5 ~1 ~3 slot.container 14 crying_obsidian 8
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 9 arrow 26
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_carrot 12
replaceitem block ~-5 ~1 ~4 slot.container 12 crimson_stem 21
replaceitem block ~-5 ~1 ~4 slot.container 13 shroomlight 12
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 6
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
