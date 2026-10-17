# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3669/4224 | 主题内编号: b085/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子烟囱砖石窑厂 (crimson_forest_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~12 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~12 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 crimson_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 crimson_planks [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 crimson_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 red_nether_brick []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 crimson_planks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 cooked_porkchop 16
replaceitem block ~4 ~-2 ~2 slot.container 1 gold_ingot 17
replaceitem block ~4 ~-2 ~2 slot.container 2 blaze_rod 4
replaceitem block ~4 ~-2 ~2 slot.container 3 magma_cream 7
replaceitem block ~4 ~-2 ~2 slot.container 4 ghast_tear 5
replaceitem block ~4 ~-2 ~2 slot.container 5 string 13
replaceitem block ~4 ~-2 ~2 slot.container 9 shroomlight 6
replaceitem block ~4 ~-2 ~2 slot.container 10 crying_obsidian 7
replaceitem block ~4 ~-2 ~2 slot.container 11 obsidian 10
replaceitem block ~4 ~-2 ~2 slot.container 12 netherite_scrap 4
replaceitem block ~4 ~-2 ~2 slot.container 13 golden_helmet 1
replaceitem block ~4 ~-2 ~2 slot.container 14 crossbow 1
loot insert ~4 ~-2 ~2 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~10 ~4 crimson_planks []
fill ~2 ~1 ~-4 ~6 ~10 ~4 crimson_planks []
fill ~-5 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~5 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 polished_blackstone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 polished_blackstone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 crimson_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 shroomlight []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 polished_blackstone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 crimson_stem []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 crimson_stem []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 crimson_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x5x6) ---
fill ~9 ~0 ~-5 ~9 ~9 ~-5 gilded_blackstone []
setblock ~9 ~10 ~-5 gold_block []
setblock ~9 ~11 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~2 slot.container 1 string 16
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~2 slot.container 3 leather 12
replaceitem block ~5 ~1 ~2 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~2 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~2 slot.container 9 golden_helmet 1
replaceitem block ~5 ~1 ~2 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~2 slot.container 11 arrow 27
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~2 slot.container 13 golden_carrot 13
replaceitem block ~5 ~1 ~2 slot.container 14 crimson_stem 22
loot insert ~5 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~3 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~3 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~3 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 11 arrow 25
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_carrot 11
replaceitem block ~-5 ~1 ~3 slot.container 14 crimson_stem 20
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~3 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
