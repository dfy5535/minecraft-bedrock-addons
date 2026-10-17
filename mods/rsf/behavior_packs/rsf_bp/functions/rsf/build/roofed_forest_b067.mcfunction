# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0451/4224 | 主题内编号: b067/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·半掩埋下沉庭院遗迹 (roofed_forest_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 string 12
replaceitem block ~4 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 3 totem_of_undying 5
replaceitem block ~4 ~-3 ~5 slot.container 4 emerald 11
replaceitem block ~4 ~-3 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~-3 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~-3 ~5 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-3 ~5 slot.container 11 diamond 4
replaceitem block ~4 ~-3 ~5 slot.container 12 experience_bottle 7
replaceitem block ~4 ~-3 ~5 slot.container 13 iron_chestplate 1
replaceitem block ~4 ~-3 ~5 slot.container 14 crossbow 1
loot insert ~4 ~-3 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~-3 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 polished_deepslate []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 dark_oak_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-6 ~0 ~-1 ~-7 ~4 ~1 iron_bars []
fill ~-6 ~5 ~-1 ~-7 ~5 ~1 dark_oak_slab []
setblock ~-7 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 11 experience_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 14 arrow 25
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
