# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3667/4224 | 主题内编号: b083/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·铁砧锻造与模具工坊 (crimson_forest_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 red_nether_brick []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 8
replaceitem block ~4 ~-2 ~3 slot.container 1 leather 17
replaceitem block ~4 ~-2 ~3 slot.container 2 cooked_porkchop 16
replaceitem block ~4 ~-2 ~3 slot.container 3 gold_ingot 17
replaceitem block ~4 ~-2 ~3 slot.container 4 blaze_rod 4
replaceitem block ~4 ~-2 ~3 slot.container 5 magma_cream 7
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_helmet 1
replaceitem block ~4 ~-2 ~3 slot.container 10 crossbow 1
replaceitem block ~4 ~-2 ~3 slot.container 11 arrow 24
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 golden_carrot 10
replaceitem block ~4 ~-2 ~3 slot.container 14 crimson_stem 19
loot insert ~4 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 red_nether_brick []
fill ~-6 ~1 ~0 ~6 ~6 ~5 blackstone []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 crimson_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 stripped_crimson_stem []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 stripped_crimson_stem []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 stripped_crimson_stem []
fill ~7 ~0 ~2 ~7 ~6 ~2 stripped_crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~-7 ~9 ~7 ~-7 gilded_blackstone []
setblock ~9 ~8 ~-7 gold_block []
setblock ~9 ~9 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 1 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 3 string 16
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 5 leather 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_carrot 14
replaceitem block ~5 ~1 ~3 slot.container 10 crimson_stem 16
replaceitem block ~5 ~1 ~3 slot.container 11 shroomlight 7
replaceitem block ~5 ~1 ~3 slot.container 12 crying_obsidian 8
replaceitem block ~5 ~1 ~3 slot.container 13 obsidian 11
replaceitem block ~5 ~1 ~3 slot.container 14 netherite_scrap 5
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 1 string 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_carrot 12
replaceitem block ~-5 ~1 ~4 slot.container 10 crimson_stem 21
replaceitem block ~-5 ~1 ~4 slot.container 11 shroomlight 12
replaceitem block ~-5 ~1 ~4 slot.container 12 crying_obsidian 6
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 9
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 3
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
