# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0506/4224 | 主题内编号: b122/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十字穹顶宏伟圣堂与墓窟 (roofed_forest_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dark_oak_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dark_oak_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cobblestone []
setblock ~0 ~-6 ~0 bookshelf []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 9
replaceitem block ~0 ~-3 ~-5 slot.container 1 string 12
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 3 totem_of_undying 5
replaceitem block ~0 ~-3 ~-5 slot.container 4 emerald 11
replaceitem block ~0 ~-3 ~-5 slot.container 5 rotten_flesh 18
replaceitem block ~0 ~-3 ~-5 slot.container 9 diamond 7
replaceitem block ~0 ~-3 ~-5 slot.container 10 experience_bottle 10
replaceitem block ~0 ~-3 ~-5 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-3 ~-5 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~-5 slot.container 13 arrow 26
replaceitem block ~0 ~-3 ~-5 slot.container 14 lantern 7
loot insert ~0 ~-3 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~9 ~7 dark_oak_planks []
fill ~-6 ~1 ~-2 ~6 ~9 ~2 dark_oak_planks []
fill ~-1 ~1 ~-6 ~1 ~8 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~8 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 dark_oak_fence []
setblock ~6 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 dark_oak_planks []
fill ~0 ~15 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-7 ~0 ~-2 ~-8 ~4 ~0 iron_bars []
fill ~-7 ~5 ~-2 ~-8 ~5 ~0 dark_oak_slab []
setblock ~-8 ~6 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 15
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 5 totem_of_undying 8
replaceitem block ~-5 ~1 ~6 slot.container 9 arrow 26
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 7
replaceitem block ~-5 ~1 ~6 slot.container 11 dark_oak_log 20
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~6 loot "rsf/roofed_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 3 totem_of_undying 3
replaceitem block ~5 ~1 ~6 slot.container 4 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 9 arrow 24
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 11 dark_oak_log 18
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 13
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~6 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
