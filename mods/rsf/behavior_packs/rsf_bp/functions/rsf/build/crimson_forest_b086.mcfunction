# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3670/4224 | 主题内编号: b086/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·重装矿石金库碉堡 (crimson_forest_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 red_nether_brick []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gold_ingot 17
replaceitem block ~4 ~-3 ~3 slot.container 1 blaze_rod 4
replaceitem block ~4 ~-3 ~3 slot.container 2 magma_cream 7
replaceitem block ~4 ~-3 ~3 slot.container 3 ghast_tear 5
replaceitem block ~4 ~-3 ~3 slot.container 4 string 13
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~-3 ~3 slot.container 9 crying_obsidian 11
replaceitem block ~4 ~-3 ~3 slot.container 10 obsidian 14
replaceitem block ~4 ~-3 ~3 slot.container 11 netherite_scrap 1
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_helmet 1
replaceitem block ~4 ~-3 ~3 slot.container 13 crossbow 1
replaceitem block ~4 ~-3 ~3 slot.container 14 arrow 27
loot insert ~4 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 crimson_planks []
setblock ~-6 ~10 ~-5 shroomlight []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 crimson_planks []
setblock ~-6 ~10 ~4 shroomlight []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 crimson_planks []
setblock ~5 ~10 ~-5 shroomlight []
fill ~5 ~1 ~4 ~6 ~9 ~5 crimson_planks []
setblock ~5 ~10 ~4 shroomlight []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 crimson_planks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 gilded_blackstone []
setblock ~-6 ~9 ~-5 shroomlight []
setblock ~-6 ~8 ~5 gilded_blackstone []
setblock ~-6 ~9 ~5 shroomlight []
setblock ~6 ~8 ~-5 gilded_blackstone []
setblock ~6 ~9 ~-5 shroomlight []
setblock ~6 ~8 ~5 gilded_blackstone []
setblock ~6 ~9 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 polished_blackstone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~9 ~0 ~-7 ~9 ~5 ~-7 gilded_blackstone []
setblock ~9 ~6 ~-7 gold_block []
setblock ~9 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 16
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 3 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_carrot 11
replaceitem block ~-5 ~1 ~3 slot.container 11 crimson_stem 20
replaceitem block ~-5 ~1 ~3 slot.container 12 shroomlight 11
replaceitem block ~-5 ~1 ~3 slot.container 13 crying_obsidian 12
replaceitem block ~-5 ~1 ~3 slot.container 14 obsidian 8
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
