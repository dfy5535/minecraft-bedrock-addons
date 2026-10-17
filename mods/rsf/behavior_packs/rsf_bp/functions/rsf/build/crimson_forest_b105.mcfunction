# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3689/4224 | 主题内编号: b105/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·满书架奥术附魔书院 (crimson_forest_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 crimson_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 crimson_planks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 crimson_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 red_nether_brick []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 polished_blackstone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 ghast_tear 5
replaceitem block ~3 ~-2 ~3 slot.container 1 string 13
replaceitem block ~3 ~-2 ~3 slot.container 2 ender_pearl 8
replaceitem block ~3 ~-2 ~3 slot.container 3 leather 17
replaceitem block ~3 ~-2 ~3 slot.container 4 cooked_porkchop 16
replaceitem block ~3 ~-2 ~3 slot.container 5 gold_ingot 17
replaceitem block ~3 ~-2 ~3 slot.container 9 golden_carrot 11
replaceitem block ~3 ~-2 ~3 slot.container 10 crimson_stem 20
replaceitem block ~3 ~-2 ~3 slot.container 11 shroomlight 11
replaceitem block ~3 ~-2 ~3 slot.container 12 crying_obsidian 12
replaceitem block ~3 ~-2 ~3 slot.container 13 obsidian 8
replaceitem block ~3 ~-2 ~3 slot.container 14 netherite_scrap 2
loot insert ~3 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~3 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 crimson_planks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~8 ~-5 crimson_stem []
fill ~-5 ~1 ~5 ~-5 ~8 ~5 crimson_stem []
fill ~5 ~1 ~-5 ~5 ~8 ~-5 crimson_stem []
fill ~5 ~1 ~5 ~5 ~8 ~5 crimson_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 crimson_fence []
setblock ~5 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-6 ~-6 ~9 ~6 crimson_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-6 ~6 ~9 ~6 crimson_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-5 ~-5 ~10 ~5 crimson_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-5 ~5 ~10 ~5 crimson_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~4 ~10 ~5 crimson_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 crimson_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 crimson_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 crimson_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~-8 ~8 ~9 ~-8 gilded_blackstone []
setblock ~8 ~10 ~-8 gold_block []
setblock ~8 ~11 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 cooked_porkchop 11
replaceitem block ~4 ~1 ~3 slot.container 1 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~3 slot.container 3 magma_cream 10
replaceitem block ~4 ~1 ~3 slot.container 4 ghast_tear 8
replaceitem block ~4 ~1 ~3 slot.container 5 string 16
replaceitem block ~4 ~1 ~3 slot.container 9 golden_helmet 1
replaceitem block ~4 ~1 ~3 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~3 slot.container 11 arrow 26
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~3 slot.container 13 golden_carrot 12
replaceitem block ~4 ~1 ~3 slot.container 14 crimson_stem 21
loot insert ~4 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 blaze_rod 10
replaceitem block ~-4 ~1 ~4 slot.container 1 magma_cream 13
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 3
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 6
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 15
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_helmet 1
replaceitem block ~-4 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~4 slot.container 11 arrow 24
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_carrot 10
replaceitem block ~-4 ~1 ~4 slot.container 14 crimson_stem 19
loot insert ~-4 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
