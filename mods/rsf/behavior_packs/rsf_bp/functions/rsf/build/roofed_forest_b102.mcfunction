# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0486/4224 | 主题内编号: b102/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子箭塔联防碉楼 (roofed_forest_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 dark_oak_planks []
fill ~2 ~1 ~-5 ~6 ~9 ~5 dark_oak_planks []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cobblestone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 dark_oak_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 dark_oak_log []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 dark_oak_log []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 dark_oak_log []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 dark_oak_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 dark_oak_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 dark_oak_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 dark_oak_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-7 ~0 ~-1 ~-8 ~4 ~1 iron_bars []
fill ~-7 ~5 ~-1 ~-8 ~5 ~1 dark_oak_slab []
setblock ~-8 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 1 totem_of_undying 8
replaceitem block ~-5 ~1 ~4 slot.container 2 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 9 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 11 dark_oak_log 21
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~-5 ~1 ~4 loot "rsf/roofed_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 10
replaceitem block ~5 ~1 ~4 slot.container 9 arrow 25
replaceitem block ~5 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~5 ~1 ~4 slot.container 11 dark_oak_log 19
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~4 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
