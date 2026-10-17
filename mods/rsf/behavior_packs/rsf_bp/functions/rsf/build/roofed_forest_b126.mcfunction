# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0510/4224 | 主题内编号: b126/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子主塔天桥宫殿与暗牢 (roofed_forest_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 dark_oak_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 dark_oak_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 dark_oak_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 dark_oak_planks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 lantern []
setblock ~4 ~-5 ~-4 lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 emerald 11
replaceitem block ~4 ~-3 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~-3 ~4 slot.container 2 bone 17
replaceitem block ~4 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 5 string 12
replaceitem block ~4 ~-3 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~-3 ~4 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 11 diamond 5
replaceitem block ~4 ~-3 ~4 slot.container 12 experience_bottle 8
replaceitem block ~4 ~-3 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~4 ~-3 ~4 slot.container 14 crossbow 1
loot insert ~4 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~4 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~10 ~6 dark_oak_planks []
fill ~2 ~1 ~-6 ~6 ~10 ~6 dark_oak_planks []
fill ~-5 ~1 ~-5 ~-3 ~9 ~5 air []
fill ~3 ~1 ~-5 ~5 ~9 ~5 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 dark_oak_planks []
fill ~0 ~15 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_dark_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_dark_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_dark_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_dark_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-7 ~0 ~-2 ~-8 ~3 ~0 iron_bars []
fill ~-7 ~4 ~-2 ~-8 ~4 ~0 dark_oak_slab []
setblock ~-8 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 1 totem_of_undying 8
replaceitem block ~-5 ~1 ~5 slot.container 2 emerald 6
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~5 slot.container 9 dark_oak_log 22
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 13 diamond 5
replaceitem block ~-5 ~1 ~5 slot.container 14 experience_bottle 8
loot insert ~-5 ~1 ~5 loot "rsf/roofed_forest"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 emerald 9
replaceitem block ~5 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~5 slot.container 2 bone 15
replaceitem block ~5 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~5 slot.container 5 string 10
replaceitem block ~5 ~1 ~5 slot.container 9 dark_oak_log 20
replaceitem block ~5 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~5 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~5 slot.container 13 diamond 3
replaceitem block ~5 ~1 ~5 slot.container 14 experience_bottle 6
loot insert ~5 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
