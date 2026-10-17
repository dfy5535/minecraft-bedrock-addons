# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3682/4224 | 主题内编号: b098/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·四角炮楼重装要塞 (crimson_forest_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 shroomlight []
setblock ~5 ~-6 ~-4 shroomlight []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 magma_cream 7
replaceitem block ~5 ~-4 ~4 slot.container 1 ghast_tear 5
replaceitem block ~5 ~-4 ~4 slot.container 2 string 13
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 8
replaceitem block ~5 ~-4 ~4 slot.container 4 leather 17
replaceitem block ~5 ~-4 ~4 slot.container 5 cooked_porkchop 16
replaceitem block ~5 ~-4 ~4 slot.container 9 crossbow 1
replaceitem block ~5 ~-4 ~4 slot.container 10 arrow 27
replaceitem block ~5 ~-4 ~4 slot.container 11 golden_apple 6
replaceitem block ~5 ~-4 ~4 slot.container 12 golden_carrot 13
replaceitem block ~5 ~-4 ~4 slot.container 13 crimson_stem 22
replaceitem block ~5 ~-4 ~4 slot.container 14 shroomlight 6
loot insert ~5 ~-4 ~4 loot "rsf/crimson_forest"
loot insert ~5 ~-4 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 polished_blackstone_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 crimson_planks []
setblock ~-7 ~11 ~-6 shroomlight []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 crimson_planks []
setblock ~-7 ~11 ~5 shroomlight []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 crimson_planks []
setblock ~6 ~11 ~-6 shroomlight []
fill ~6 ~1 ~5 ~7 ~10 ~6 crimson_planks []
setblock ~6 ~11 ~5 shroomlight []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 crimson_planks []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 polished_blackstone_wall []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 gilded_blackstone []
setblock ~-7 ~10 ~-6 shroomlight []
setblock ~-7 ~9 ~6 gilded_blackstone []
setblock ~-7 ~10 ~6 shroomlight []
setblock ~7 ~9 ~-6 gilded_blackstone []
setblock ~7 ~10 ~-6 shroomlight []
setblock ~7 ~9 ~6 gilded_blackstone []
setblock ~7 ~10 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 polished_blackstone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x4) ---
fill ~10 ~0 ~-8 ~10 ~7 ~-8 gilded_blackstone []
setblock ~10 ~8 ~-8 gold_block []
setblock ~10 ~9 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-6 ~1 ~4 slot.container 2 magma_cream 10
replaceitem block ~-6 ~1 ~4 slot.container 3 ghast_tear 8
replaceitem block ~-6 ~1 ~4 slot.container 4 string 16
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 11
replaceitem block ~-6 ~1 ~4 slot.container 9 netherite_scrap 1
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_helmet 1
replaceitem block ~-6 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~-6 ~1 ~4 slot.container 12 arrow 27
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_carrot 13
loot insert ~-6 ~1 ~4 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
