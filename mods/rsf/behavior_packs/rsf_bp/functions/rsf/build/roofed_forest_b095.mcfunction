# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0479/4224 | 主题内编号: b095/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子灯笼守卫神龛 (roofed_forest_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cracked_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~8 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dark_oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 stripped_dark_oak_log []
setblock ~-7 ~5 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 stripped_dark_oak_log []
setblock ~-7 ~5 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 stripped_dark_oak_log []
setblock ~7 ~5 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 stripped_dark_oak_log []
setblock ~7 ~5 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-6 ~0 ~0 ~-7 ~7 ~2 iron_bars []
fill ~-6 ~8 ~0 ~-7 ~8 ~2 dark_oak_slab []
setblock ~-7 ~9 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 totem_of_undying 8
replaceitem block ~4 ~1 ~3 slot.container 1 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~3 slot.container 3 bone 12
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 crossbow 1
replaceitem block ~4 ~1 ~3 slot.container 10 arrow 28
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~3 slot.container 12 dark_oak_log 22
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~3 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~2 ~0
