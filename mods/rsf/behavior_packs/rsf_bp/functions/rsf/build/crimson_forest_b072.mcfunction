# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3656/4224 | 主题内编号: b072/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·L型古商会废墟暗窖 (crimson_forest_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
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
replaceitem block ~4 ~-3 ~3 slot.container 9 crimson_stem 21
replaceitem block ~4 ~-3 ~3 slot.container 10 shroomlight 12
replaceitem block ~4 ~-3 ~3 slot.container 11 crying_obsidian 6
replaceitem block ~4 ~-3 ~3 slot.container 12 obsidian 9
replaceitem block ~4 ~-3 ~3 slot.container 13 netherite_scrap 3
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_helmet 1
loot insert ~4 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 blackstone []
fill ~-6 ~1 ~0 ~6 ~6 ~5 crimson_planks []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 blackstone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 crimson_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 crimson_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 crimson_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 blackstone_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~9 ~0 ~-8 ~9 ~6 ~-8 gilded_blackstone []
setblock ~9 ~7 ~-8 gold_block []
setblock ~9 ~8 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 4 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 9 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 10 arrow 27
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_carrot 13
replaceitem block ~-5 ~1 ~3 slot.container 13 crimson_stem 22
replaceitem block ~-5 ~1 ~3 slot.container 14 shroomlight 6
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
