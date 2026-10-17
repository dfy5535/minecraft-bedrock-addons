# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0469/4224 | 主题内编号: b085/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子烟囱砖石窑厂 (roofed_forest_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 cobblestone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~3 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~3 ~-3 ~3 slot.container 3 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 4 string 12
replaceitem block ~3 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 9 iron_ingot 14
replaceitem block ~3 ~-3 ~3 slot.container 10 diamond 2
replaceitem block ~3 ~-3 ~3 slot.container 11 experience_bottle 5
replaceitem block ~3 ~-3 ~3 slot.container 12 iron_chestplate 1
replaceitem block ~3 ~-3 ~3 slot.container 13 crossbow 1
replaceitem block ~3 ~-3 ~3 slot.container 14 arrow 28
loot insert ~3 ~-3 ~3 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 cobblestone []
fill ~2 ~1 ~-5 ~5 ~9 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 dark_oak_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~14 ~0 red_mushroom_block []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-6 ~0 ~-3 ~-7 ~7 ~-1 iron_bars []
fill ~-6 ~8 ~-3 ~-7 ~8 ~-1 dark_oak_slab []
setblock ~-7 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 15
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 2 totem_of_undying 8
replaceitem block ~4 ~1 ~4 slot.container 3 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 5 bone 12
replaceitem block ~4 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~4 ~1 ~4 slot.container 10 arrow 25
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~4 ~1 ~4 slot.container 12 dark_oak_log 19
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
