# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3609/4224 | 主题内编号: b025/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·雉堞女墙四方哨塔 (crimson_forest_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace fire
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 crimson_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 crimson_planks []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 crimson_stem []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 crimson_stem []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 crimson_stem []
fill ~4 ~1 ~3 ~4 ~11 ~3 crimson_stem []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 crimson_fence []
setblock ~4 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~11 ~-3 ~4 ~11 ~3 polished_blackstone_bricks []
fill ~-4 ~12 ~-3 ~4 ~12 ~3 crimson_fence []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~-4 ~12 ~-3 crimson_stem []
setblock ~-4 ~13 ~-3 lantern []
setblock ~-4 ~12 ~3 crimson_stem []
setblock ~-4 ~13 ~3 lantern []
setblock ~4 ~12 ~-3 crimson_stem []
setblock ~4 ~13 ~-3 lantern []
setblock ~4 ~12 ~3 crimson_stem []
setblock ~4 ~13 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 polished_blackstone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 crimson_stem []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 crimson_stem []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 crimson_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 7x4x6) ---
fill ~7 ~0 ~-4 ~7 ~9 ~-4 gilded_blackstone []
setblock ~7 ~10 ~-4 gold_block []
setblock ~7 ~11 ~-4 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 cooked_porkchop 11
replaceitem block ~3 ~1 ~1 slot.container 1 gold_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 2 blaze_rod 7
replaceitem block ~3 ~1 ~1 slot.container 3 magma_cream 10
replaceitem block ~3 ~1 ~1 slot.container 4 ghast_tear 8
replaceitem block ~3 ~1 ~1 slot.container 5 string 16
replaceitem block ~3 ~1 ~1 slot.container 9 golden_helmet 1
replaceitem block ~3 ~1 ~1 slot.container 10 crossbow 1
replaceitem block ~3 ~1 ~1 slot.container 11 arrow 30
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 2
replaceitem block ~3 ~1 ~1 slot.container 13 golden_carrot 9
replaceitem block ~3 ~1 ~1 slot.container 14 crimson_stem 18
loot insert ~3 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 blaze_rod 10
replaceitem block ~-3 ~1 ~2 slot.container 1 magma_cream 13
replaceitem block ~-3 ~1 ~2 slot.container 2 ghast_tear 3
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 6
replaceitem block ~-3 ~1 ~2 slot.container 5 leather 15
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_helmet 1
replaceitem block ~-3 ~1 ~2 slot.container 10 crossbow 1
replaceitem block ~-3 ~1 ~2 slot.container 11 arrow 28
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_carrot 14
replaceitem block ~-3 ~1 ~2 slot.container 14 crimson_stem 16
loot insert ~-3 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~1 ~2 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
