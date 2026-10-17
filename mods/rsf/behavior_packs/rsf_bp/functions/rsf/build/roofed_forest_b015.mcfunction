# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0399/4224 | 主题内编号: b015/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·竖井阶梯深渊地牢 (roofed_forest_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 6格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dark_oak_planks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 string 12
replaceitem block ~0 ~-4 ~5 slot.container 9 diamond 3
replaceitem block ~0 ~-4 ~5 slot.container 10 experience_bottle 6
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-4 ~5 slot.container 12 crossbow 1
replaceitem block ~0 ~-4 ~5 slot.container 13 arrow 29
replaceitem block ~0 ~-4 ~5 slot.container 14 lantern 10
loot insert ~0 ~-4 ~5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~5 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 emerald 9
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 10
replaceitem block ~0 ~-4 ~-5 slot.container 9 diamond 2
replaceitem block ~0 ~-4 ~-5 slot.container 10 experience_bottle 5
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 crossbow 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 arrow 28
replaceitem block ~0 ~-4 ~-5 slot.container 14 lantern 9
loot insert ~0 ~-4 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mossy_stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 dark_oak_planks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 dark_oak_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 mossy_stone_bricks []
fill ~0 ~13 ~0 ~0 ~13 ~0 bookshelf []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 stripped_dark_oak_log []
setblock ~-6 ~5 ~-7 soul_lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 stripped_dark_oak_log []
setblock ~-6 ~5 ~7 soul_lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 stripped_dark_oak_log []
setblock ~6 ~5 ~-7 soul_lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 stripped_dark_oak_log []
setblock ~6 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-5 ~0 ~-3 ~-6 ~7 ~-1 iron_bars []
fill ~-5 ~8 ~-3 ~-6 ~8 ~-1 dark_oak_slab []
setblock ~-6 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 1 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 bone 12
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 10 arrow 25
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 12 dark_oak_log 19
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
