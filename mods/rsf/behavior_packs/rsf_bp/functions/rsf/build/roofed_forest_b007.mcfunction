# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0391/4224 | 主题内编号: b007/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·八角星芒图腾祭坛 (roofed_forest_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 bookshelf []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 totem_of_undying 5
replaceitem block ~3 ~-3 ~0 slot.container 1 emerald 11
replaceitem block ~3 ~-3 ~0 slot.container 2 rotten_flesh 18
replaceitem block ~3 ~-3 ~0 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 4 spider_eye 6
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 9 lantern 8
replaceitem block ~3 ~-3 ~0 slot.container 10 dark_oak_log 21
replaceitem block ~3 ~-3 ~0 slot.container 11 golden_apple 8
replaceitem block ~3 ~-3 ~0 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 13 iron_ingot 9
replaceitem block ~3 ~-3 ~0 slot.container 14 diamond 4
loot insert ~3 ~-3 ~0 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 stripped_dark_oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 stripped_dark_oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 stripped_dark_oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 stripped_dark_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~14 ~0 bookshelf []
setblock ~0 ~15 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-6 ~0 ~-1 ~-7 ~4 ~1 iron_bars []
fill ~-6 ~5 ~-1 ~-7 ~5 ~1 dark_oak_slab []
setblock ~-7 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 2
replaceitem block ~4 ~1 ~5 slot.container 11 experience_bottle 5
replaceitem block ~4 ~1 ~5 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 14 arrow 28
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
