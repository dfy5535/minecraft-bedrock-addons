# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3665/4224 | 主题内编号: b081/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双高炉重工冶炼密室 (crimson_forest_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 crimson_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 crimson_planks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 crimson_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 red_nether_brick []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 crimson_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ghast_tear 5
replaceitem block ~3 ~-3 ~3 slot.container 1 string 13
replaceitem block ~3 ~-3 ~3 slot.container 2 ender_pearl 8
replaceitem block ~3 ~-3 ~3 slot.container 3 leather 17
replaceitem block ~3 ~-3 ~3 slot.container 4 cooked_porkchop 16
replaceitem block ~3 ~-3 ~3 slot.container 5 gold_ingot 17
replaceitem block ~3 ~-3 ~3 slot.container 9 golden_carrot 11
replaceitem block ~3 ~-3 ~3 slot.container 10 crimson_stem 20
replaceitem block ~3 ~-3 ~3 slot.container 11 shroomlight 11
replaceitem block ~3 ~-3 ~3 slot.container 12 crying_obsidian 12
replaceitem block ~3 ~-3 ~3 slot.container 13 obsidian 8
replaceitem block ~3 ~-3 ~3 slot.container 14 netherite_scrap 2
loot insert ~3 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 crimson_planks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~10 ~5 polished_blackstone_bricks []
setblock ~-5 ~11 ~5 lantern []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 crimson_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 crimson_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 crimson_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 crimson_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 crimson_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 crimson_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 crimson_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 crimson_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~-8 ~8 ~5 ~-8 gilded_blackstone []
setblock ~8 ~6 ~-8 gold_block []
setblock ~8 ~7 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 cooked_porkchop 11
replaceitem block ~4 ~1 ~3 slot.container 1 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~3 slot.container 3 magma_cream 10
replaceitem block ~4 ~1 ~3 slot.container 4 ghast_tear 8
replaceitem block ~4 ~1 ~3 slot.container 5 string 16
replaceitem block ~4 ~1 ~3 slot.container 9 obsidian 12
replaceitem block ~4 ~1 ~3 slot.container 10 netherite_scrap 6
replaceitem block ~4 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~4 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~3 slot.container 13 arrow 25
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 blaze_rod 10
replaceitem block ~-4 ~1 ~4 slot.container 1 magma_cream 13
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 3
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 6
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 15
replaceitem block ~-4 ~1 ~4 slot.container 9 obsidian 10
replaceitem block ~-4 ~1 ~4 slot.container 10 netherite_scrap 4
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~-4 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~4 slot.container 13 arrow 30
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-3 ~0
