# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3680/4224 | 主题内编号: b096/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·高台三阶献祭神祠 (crimson_forest_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 crimson_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 magma_cream 7
replaceitem block ~3 ~-3 ~2 slot.container 1 ghast_tear 5
replaceitem block ~3 ~-3 ~2 slot.container 2 string 13
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 8
replaceitem block ~3 ~-3 ~2 slot.container 4 leather 17
replaceitem block ~3 ~-3 ~2 slot.container 5 cooked_porkchop 16
replaceitem block ~3 ~-3 ~2 slot.container 9 crying_obsidian 7
replaceitem block ~3 ~-3 ~2 slot.container 10 obsidian 10
replaceitem block ~3 ~-3 ~2 slot.container 11 netherite_scrap 4
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_helmet 1
replaceitem block ~3 ~-3 ~2 slot.container 13 crossbow 1
replaceitem block ~3 ~-3 ~2 slot.container 14 arrow 30
loot insert ~3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 blackstone []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 crimson_planks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 crimson_planks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 crimson_planks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 crimson_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 crimson_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 crimson_stem []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 crimson_stem []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 blackstone_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-7 ~8 ~5 ~-7 gilded_blackstone []
setblock ~8 ~6 ~-7 gold_block []
setblock ~8 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 4 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_carrot 14
replaceitem block ~-4 ~1 ~2 slot.container 11 crimson_stem 16
replaceitem block ~-4 ~1 ~2 slot.container 12 shroomlight 7
replaceitem block ~-4 ~1 ~2 slot.container 13 crying_obsidian 8
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 11
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
