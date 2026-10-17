# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3711/4224 | 主题内编号: b127/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·万神殿巨型穹顶与试炼宫 (crimson_forest_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~-5 ~-5 ~-4 lantern []
setblock ~5 ~-5 ~4 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 8
replaceitem block ~0 ~-3 ~4 slot.container 1 leather 17
replaceitem block ~0 ~-3 ~4 slot.container 2 cooked_porkchop 16
replaceitem block ~0 ~-3 ~4 slot.container 3 gold_ingot 17
replaceitem block ~0 ~-3 ~4 slot.container 4 blaze_rod 4
replaceitem block ~0 ~-3 ~4 slot.container 5 magma_cream 7
replaceitem block ~0 ~-3 ~4 slot.container 9 obsidian 13
replaceitem block ~0 ~-3 ~4 slot.container 10 netherite_scrap 7
replaceitem block ~0 ~-3 ~4 slot.container 11 golden_helmet 1
replaceitem block ~0 ~-3 ~4 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~4 slot.container 13 arrow 26
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 5
loot insert ~0 ~-3 ~4 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 crimson_planks []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 stripped_crimson_stem []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 stripped_crimson_stem []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 stripped_crimson_stem []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 stripped_crimson_stem []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 stripped_crimson_stem []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 stripped_crimson_stem []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 stripped_crimson_stem []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 stripped_crimson_stem []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 stripped_crimson_stem []
fill ~1 ~1 ~6 ~1 ~8 ~6 stripped_crimson_stem []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 stripped_crimson_stem []
fill ~3 ~1 ~6 ~3 ~8 ~6 stripped_crimson_stem []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 stripped_crimson_stem []
fill ~5 ~1 ~6 ~5 ~8 ~6 stripped_crimson_stem []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 stripped_crimson_stem []
fill ~7 ~1 ~6 ~7 ~8 ~6 stripped_crimson_stem []
fill ~-7 ~1 ~-4 ~-7 ~8 ~-4 stripped_crimson_stem []
fill ~7 ~1 ~-4 ~7 ~8 ~-4 stripped_crimson_stem []
fill ~-7 ~1 ~-2 ~-7 ~8 ~-2 stripped_crimson_stem []
fill ~7 ~1 ~-2 ~7 ~8 ~-2 stripped_crimson_stem []
fill ~-7 ~1 ~0 ~-7 ~8 ~0 stripped_crimson_stem []
fill ~7 ~1 ~0 ~7 ~8 ~0 stripped_crimson_stem []
fill ~-7 ~1 ~2 ~-7 ~8 ~2 stripped_crimson_stem []
fill ~7 ~1 ~2 ~7 ~8 ~2 stripped_crimson_stem []
fill ~-7 ~1 ~4 ~-7 ~8 ~4 stripped_crimson_stem []
fill ~7 ~1 ~4 ~7 ~8 ~4 stripped_crimson_stem []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 crimson_planks []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 glass []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_crimson_stem []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_crimson_stem []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stripped_crimson_stem []
setblock ~-9 ~4 ~0 gold_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 stripped_crimson_stem []
setblock ~9 ~4 ~0 gold_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~10 ~0 ~-7 ~10 ~6 ~-7 gilded_blackstone []
setblock ~10 ~7 ~-7 gold_block []
setblock ~10 ~8 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 11
replaceitem block ~6 ~1 ~4 slot.container 1 leather 12
replaceitem block ~6 ~1 ~4 slot.container 2 cooked_porkchop 11
replaceitem block ~6 ~1 ~4 slot.container 3 gold_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 4 blaze_rod 7
replaceitem block ~6 ~1 ~4 slot.container 5 magma_cream 10
replaceitem block ~6 ~1 ~4 slot.container 9 shroomlight 7
replaceitem block ~6 ~1 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~6 ~1 ~4 slot.container 11 obsidian 11
replaceitem block ~6 ~1 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~6 ~1 ~4 slot.container 13 golden_helmet 1
replaceitem block ~6 ~1 ~4 slot.container 14 crossbow 1
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 cooked_porkchop 14
replaceitem block ~-6 ~1 ~5 slot.container 1 gold_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 2 blaze_rod 10
replaceitem block ~-6 ~1 ~5 slot.container 3 magma_cream 13
replaceitem block ~-6 ~1 ~5 slot.container 4 ghast_tear 3
replaceitem block ~-6 ~1 ~5 slot.container 5 string 11
replaceitem block ~-6 ~1 ~5 slot.container 9 shroomlight 12
replaceitem block ~-6 ~1 ~5 slot.container 10 crying_obsidian 6
replaceitem block ~-6 ~1 ~5 slot.container 11 obsidian 9
replaceitem block ~-6 ~1 ~5 slot.container 12 netherite_scrap 3
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_helmet 1
replaceitem block ~-6 ~1 ~5 slot.container 14 crossbow 1
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
