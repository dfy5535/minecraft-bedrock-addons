# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0445/4224 | 主题内编号: b061/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子封土古墓地宫 (roofed_forest_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 cobblestone []
fill ~2 ~1 ~-5 ~6 ~7 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 dark_oak_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 dark_oak_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 dark_oak_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 red_mushroom_block []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_oak_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-7 ~0 ~-2 ~-8 ~3 ~0 iron_bars []
fill ~-7 ~4 ~-2 ~-8 ~4 ~0 dark_oak_slab []
setblock ~-8 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 string 15
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 2 totem_of_undying 8
replaceitem block ~5 ~1 ~4 slot.container 3 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 5 bone 12
replaceitem block ~5 ~1 ~4 slot.container 9 experience_bottle 8
replaceitem block ~5 ~1 ~4 slot.container 10 iron_chestplate 1
replaceitem block ~5 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 12 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~4 slot.container 14 dark_oak_log 18
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
