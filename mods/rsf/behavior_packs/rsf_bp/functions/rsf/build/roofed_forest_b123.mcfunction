# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0507/4224 | 主题内编号: b123/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·四角塔楼领主城堡复合体 (roofed_forest_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cracked_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 soul_lantern []
setblock ~4 ~-6 ~-5 soul_lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 string 12
replaceitem block ~4 ~-4 ~5 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 2 totem_of_undying 5
replaceitem block ~4 ~-4 ~5 slot.container 3 emerald 11
replaceitem block ~4 ~-4 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~4 ~-4 ~5 slot.container 5 bone 17
replaceitem block ~4 ~-4 ~5 slot.container 9 iron_ingot 13
replaceitem block ~4 ~-4 ~5 slot.container 10 diamond 8
replaceitem block ~4 ~-4 ~5 slot.container 11 experience_bottle 4
replaceitem block ~4 ~-4 ~5 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~-4 ~5 slot.container 13 crossbow 1
replaceitem block ~4 ~-4 ~5 slot.container 14 arrow 27
loot insert ~4 ~-4 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~-4 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 dark_oak_planks []
setblock ~-6 ~11 ~-7 soul_lantern []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 dark_oak_planks []
setblock ~-6 ~11 ~6 soul_lantern []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 dark_oak_planks []
setblock ~5 ~11 ~-7 soul_lantern []
fill ~5 ~1 ~6 ~6 ~10 ~7 dark_oak_planks []
setblock ~5 ~11 ~6 soul_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dark_oak_planks []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone_wall []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 stripped_dark_oak_log []
setblock ~-6 ~10 ~-7 soul_lantern []
setblock ~-6 ~9 ~7 stripped_dark_oak_log []
setblock ~-6 ~10 ~7 soul_lantern []
setblock ~6 ~9 ~-7 stripped_dark_oak_log []
setblock ~6 ~10 ~-7 soul_lantern []
setblock ~6 ~9 ~7 stripped_dark_oak_log []
setblock ~6 ~10 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_oak_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-7 ~0 ~-1 ~-8 ~5 ~1 iron_bars []
fill ~-7 ~6 ~-1 ~-8 ~6 ~1 dark_oak_slab []
setblock ~-8 ~7 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 4 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 5 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 12 diamond 8
replaceitem block ~5 ~1 ~6 slot.container 13 experience_bottle 4
replaceitem block ~5 ~1 ~6 slot.container 14 iron_chestplate 1
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
