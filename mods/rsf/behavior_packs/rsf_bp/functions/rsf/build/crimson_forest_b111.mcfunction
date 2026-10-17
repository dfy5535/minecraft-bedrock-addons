# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3695/4224 | 主题内编号: b111/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·地下禁忌书库与炼药室 (crimson_forest_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 red_nether_brick []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 ghast_tear 5
replaceitem block ~0 ~-3 ~3 slot.container 1 string 13
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 8
replaceitem block ~0 ~-3 ~3 slot.container 3 leather 17
replaceitem block ~0 ~-3 ~3 slot.container 4 cooked_porkchop 16
replaceitem block ~0 ~-3 ~3 slot.container 5 gold_ingot 17
replaceitem block ~0 ~-3 ~3 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-3 ~3 slot.container 10 crossbow 1
replaceitem block ~0 ~-3 ~3 slot.container 11 arrow 24
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~3 slot.container 13 golden_carrot 10
replaceitem block ~0 ~-3 ~3 slot.container 14 crimson_stem 19
loot insert ~0 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~3 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 ghast_tear 3
replaceitem block ~0 ~-3 ~-3 slot.container 1 string 11
replaceitem block ~0 ~-3 ~-3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-3 slot.container 3 leather 15
replaceitem block ~0 ~-3 ~-3 slot.container 4 cooked_porkchop 14
replaceitem block ~0 ~-3 ~-3 slot.container 5 gold_ingot 15
replaceitem block ~0 ~-3 ~-3 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-3 ~-3 slot.container 10 crossbow 1
replaceitem block ~0 ~-3 ~-3 slot.container 11 arrow 30
replaceitem block ~0 ~-3 ~-3 slot.container 12 golden_apple 2
replaceitem block ~0 ~-3 ~-3 slot.container 13 golden_carrot 9
replaceitem block ~0 ~-3 ~-3 slot.container 14 crimson_stem 18
loot insert ~0 ~-3 ~-3 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 red_nether_brick []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 crimson_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 crimson_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 crimson_planks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 blackstone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gilded_blackstone []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 nether_brick_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~9 ~0 ~-8 ~9 ~5 ~-8 gilded_blackstone []
setblock ~9 ~6 ~-8 gold_block []
setblock ~9 ~7 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 3 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 5 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 9 obsidian 14
replaceitem block ~5 ~1 ~3 slot.container 10 netherite_scrap 1
replaceitem block ~5 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~3 slot.container 13 arrow 27
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 2 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 3 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 arrow 25
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-3 ~0
