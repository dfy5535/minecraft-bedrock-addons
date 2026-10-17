# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0416/4224 | 主题内编号: b032/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·断顶残垣古哨塔 (roofed_forest_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 deepslate_bricks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 deepslate_bricks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_deepslate []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 cobblestone []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 dark_oak_planks []
setblock ~0 ~-5 ~0 red_mushroom_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 spider_eye 6
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 12
replaceitem block ~0 ~-2 ~-3 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 5 totem_of_undying 5
replaceitem block ~0 ~-2 ~-3 slot.container 9 diamond 8
replaceitem block ~0 ~-2 ~-3 slot.container 10 experience_bottle 4
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 crossbow 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 arrow 27
replaceitem block ~0 ~-2 ~-3 slot.container 14 lantern 8
loot insert ~0 ~-2 ~-3 loot "rsf/roofed_forest"
loot insert ~0 ~-2 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~9 ~5 deepslate_bricks []
fill ~-2 ~1 ~-4 ~2 ~8 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~9 ~-5 dark_oak_log []
fill ~-3 ~1 ~5 ~-3 ~9 ~5 dark_oak_log []
fill ~3 ~1 ~-5 ~3 ~9 ~-5 dark_oak_log []
fill ~3 ~1 ~5 ~3 ~9 ~5 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 dark_oak_fence []
setblock ~3 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~9 ~-5 ~3 ~9 ~5 deepslate_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-3 ~8 ~-1 ~-3 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-4 ~0 ~-1 ~-5 ~4 ~1 iron_bars []
fill ~-4 ~5 ~-1 ~-5 ~5 ~1 dark_oak_slab []
setblock ~-5 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-2 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 emerald 6
replaceitem block ~-2 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-2 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-2 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-2 ~1 ~4 slot.container 5 string 15
replaceitem block ~-2 ~1 ~4 slot.container 9 arrow 27
replaceitem block ~-2 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-2 ~1 ~4 slot.container 11 dark_oak_log 21
replaceitem block ~-2 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-2 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-2 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~-2 ~1 ~4 loot "rsf/roofed_forest"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 bone 15
replaceitem block ~2 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~2 ~1 ~4 slot.container 3 string 10
replaceitem block ~2 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 5 totem_of_undying 3
replaceitem block ~2 ~1 ~4 slot.container 9 arrow 25
replaceitem block ~2 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~2 ~1 ~4 slot.container 11 dark_oak_log 19
replaceitem block ~2 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~2 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~2 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~2 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~2 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
