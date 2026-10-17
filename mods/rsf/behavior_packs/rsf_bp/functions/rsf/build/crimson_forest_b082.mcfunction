# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3666/4224 | 主题内编号: b082/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·竖井井架矿工物资站 (crimson_forest_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 6格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 shroomlight []
setblock ~3 ~-7 ~-2 shroomlight []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 magma_cream 7
replaceitem block ~3 ~-5 ~2 slot.container 1 ghast_tear 5
replaceitem block ~3 ~-5 ~2 slot.container 2 string 13
replaceitem block ~3 ~-5 ~2 slot.container 3 ender_pearl 8
replaceitem block ~3 ~-5 ~2 slot.container 4 leather 17
replaceitem block ~3 ~-5 ~2 slot.container 5 cooked_porkchop 16
replaceitem block ~3 ~-5 ~2 slot.container 9 golden_apple 2
replaceitem block ~3 ~-5 ~2 slot.container 10 golden_carrot 9
replaceitem block ~3 ~-5 ~2 slot.container 11 crimson_stem 18
replaceitem block ~3 ~-5 ~2 slot.container 12 shroomlight 9
replaceitem block ~3 ~-5 ~2 slot.container 13 crying_obsidian 10
replaceitem block ~3 ~-5 ~2 slot.container 14 obsidian 13
loot insert ~3 ~-5 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-5 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 polished_blackstone_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 red_nether_brick []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 crimson_planks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 red_nether_brick []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 gold_block []
setblock ~0 ~13 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_blackstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~8 ~0 ~-5 ~8 ~6 ~-5 gilded_blackstone []
setblock ~8 ~7 ~-5 gold_block []
setblock ~8 ~8 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 2 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 4 string 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 9 crossbow 1
replaceitem block ~-4 ~1 ~2 slot.container 10 arrow 30
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_carrot 9
replaceitem block ~-4 ~1 ~2 slot.container 13 crimson_stem 18
replaceitem block ~-4 ~1 ~2 slot.container 14 shroomlight 9
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
