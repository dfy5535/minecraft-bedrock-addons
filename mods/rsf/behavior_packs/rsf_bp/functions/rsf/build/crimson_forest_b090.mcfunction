# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3674/4224 | 主题内编号: b090/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·八角攒尖悬灯神龛 (crimson_forest_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 red_nether_brick []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 string 13
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 8
replaceitem block ~3 ~-3 ~2 slot.container 2 leather 17
replaceitem block ~3 ~-3 ~2 slot.container 3 cooked_porkchop 16
replaceitem block ~3 ~-3 ~2 slot.container 4 gold_ingot 17
replaceitem block ~3 ~-3 ~2 slot.container 5 blaze_rod 4
replaceitem block ~3 ~-3 ~2 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_helmet 1
replaceitem block ~3 ~-3 ~2 slot.container 11 crossbow 1
replaceitem block ~3 ~-3 ~2 slot.container 12 arrow 29
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 8
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_carrot 8
loot insert ~3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 gilded_blackstone []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 gilded_blackstone []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 gilded_blackstone []
fill ~4 ~1 ~3 ~4 ~8 ~3 gilded_blackstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 crimson_planks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 red_nether_brick []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 gilded_blackstone []
setblock ~-7 ~6 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 gilded_blackstone []
setblock ~-7 ~6 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 gilded_blackstone []
setblock ~7 ~6 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~5 ~6 gilded_blackstone []
setblock ~7 ~6 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~-7 ~8 ~9 ~-7 gilded_blackstone []
setblock ~8 ~10 ~-7 gold_block []
setblock ~8 ~11 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 2 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 4 string 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 9 crimson_stem 22
replaceitem block ~-4 ~1 ~2 slot.container 10 shroomlight 6
replaceitem block ~-4 ~1 ~2 slot.container 11 crying_obsidian 7
replaceitem block ~-4 ~1 ~2 slot.container 12 obsidian 10
replaceitem block ~-4 ~1 ~2 slot.container 13 netherite_scrap 4
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_helmet 1
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
