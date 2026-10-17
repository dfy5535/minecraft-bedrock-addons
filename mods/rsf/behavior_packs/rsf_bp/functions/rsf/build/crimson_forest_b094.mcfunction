# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3678/4224 | 主题内编号: b094/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·圆形圣泉祈祷亭 (crimson_forest_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 crimson_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 leather 17
replaceitem block ~-3 ~-3 ~2 slot.container 1 cooked_porkchop 16
replaceitem block ~-3 ~-3 ~2 slot.container 2 gold_ingot 17
replaceitem block ~-3 ~-3 ~2 slot.container 3 blaze_rod 4
replaceitem block ~-3 ~-3 ~2 slot.container 4 magma_cream 7
replaceitem block ~-3 ~-3 ~2 slot.container 5 ghast_tear 5
replaceitem block ~-3 ~-3 ~2 slot.container 9 golden_apple 6
replaceitem block ~-3 ~-3 ~2 slot.container 10 golden_carrot 13
replaceitem block ~-3 ~-3 ~2 slot.container 11 crimson_stem 22
replaceitem block ~-3 ~-3 ~2 slot.container 12 shroomlight 6
replaceitem block ~-3 ~-3 ~2 slot.container 13 crying_obsidian 7
replaceitem block ~-3 ~-3 ~2 slot.container 14 obsidian 10
loot insert ~-3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 crimson_planks []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 gilded_blackstone []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 gilded_blackstone []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 gilded_blackstone []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 gilded_blackstone []
fill ~-1 ~1 ~-4 ~-1 ~7 ~-4 gilded_blackstone []
fill ~-1 ~1 ~4 ~-1 ~7 ~4 gilded_blackstone []
fill ~1 ~1 ~-4 ~1 ~7 ~-4 gilded_blackstone []
fill ~1 ~1 ~4 ~1 ~7 ~4 gilded_blackstone []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 gilded_blackstone []
fill ~3 ~1 ~4 ~3 ~7 ~4 gilded_blackstone []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 gilded_blackstone []
fill ~5 ~1 ~4 ~5 ~7 ~4 gilded_blackstone []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 gilded_blackstone []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 gilded_blackstone []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 gilded_blackstone []
fill ~5 ~1 ~0 ~5 ~7 ~0 gilded_blackstone []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 gilded_blackstone []
fill ~5 ~1 ~2 ~5 ~7 ~2 gilded_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 crimson_planks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 gilded_blackstone []
setblock ~0 ~4 ~-6 gilded_blackstone []
setblock ~0 ~5 ~-6 shroomlight []
fill ~0 ~0 ~6 ~0 ~3 ~6 gilded_blackstone []
setblock ~0 ~4 ~6 gilded_blackstone []
setblock ~0 ~5 ~6 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 gilded_blackstone []
setblock ~-7 ~4 ~0 gilded_blackstone []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 gilded_blackstone []
setblock ~7 ~4 ~0 gilded_blackstone []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~8 ~0 ~-5 ~8 ~8 ~-5 gilded_blackstone []
setblock ~8 ~9 ~-5 gold_block []
setblock ~8 ~10 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 9 crying_obsidian 9
replaceitem block ~-4 ~1 ~2 slot.container 10 obsidian 12
replaceitem block ~-4 ~1 ~2 slot.container 11 netherite_scrap 6
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_helmet 1
replaceitem block ~-4 ~1 ~2 slot.container 13 crossbow 1
replaceitem block ~-4 ~1 ~2 slot.container 14 arrow 25
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
