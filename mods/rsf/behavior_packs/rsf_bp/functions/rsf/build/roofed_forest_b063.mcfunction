# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0447/4224 | 主题内编号: b063/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·方尖碑镇压古墓穴 (roofed_forest_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 string 12
replaceitem block ~0 ~-4 ~3 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-4 ~3 slot.container 3 emerald 11
replaceitem block ~0 ~-4 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-4 ~3 slot.container 5 bone 17
replaceitem block ~0 ~-4 ~3 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-4 ~3 slot.container 10 diamond 8
replaceitem block ~0 ~-4 ~3 slot.container 11 experience_bottle 4
replaceitem block ~0 ~-4 ~3 slot.container 12 iron_chestplate 1
replaceitem block ~0 ~-4 ~3 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~3 slot.container 14 arrow 27
loot insert ~0 ~-4 ~3 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~3 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 string 10
replaceitem block ~0 ~-4 ~-3 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 2 totem_of_undying 3
replaceitem block ~0 ~-4 ~-3 slot.container 3 emerald 9
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 10 diamond 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 experience_bottle 10
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_chestplate 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 arrow 26
loot insert ~0 ~-4 ~-3 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~10 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~10 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~10 ~5 air []
fill ~4 ~1 ~5 ~4 ~10 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 stripped_dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 stripped_dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 stripped_dark_oak_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 stripped_dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 dark_oak_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 bookshelf []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-5 ~0 ~0 ~-6 ~5 ~2 iron_bars []
fill ~-5 ~6 ~0 ~-6 ~6 ~2 dark_oak_slab []
setblock ~-6 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 1 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 bone 12
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 12 diamond 4
replaceitem block ~3 ~1 ~4 slot.container 13 experience_bottle 7
replaceitem block ~3 ~1 ~4 slot.container 14 iron_chestplate 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
