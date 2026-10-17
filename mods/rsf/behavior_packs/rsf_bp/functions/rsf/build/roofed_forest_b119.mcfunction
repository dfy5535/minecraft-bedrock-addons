# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0503/4224 | 主题内编号: b119/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·半地下恒温洞穴苗圃 (roofed_forest_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cracked_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_deepslate []
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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 mossy_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 dark_oak_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 dark_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~5 ~-6 ~4 ~5 ~6 dark_oak_planks []
fill ~-3 ~6 ~-5 ~3 ~7 ~5 glass []
fill ~-2 ~6 ~-4 ~2 ~6 ~4 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 cobblestone_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-5 ~0 ~-3 ~-6 ~6 ~-1 iron_bars []
fill ~-5 ~7 ~-3 ~-6 ~7 ~-1 dark_oak_slab []
setblock ~-6 ~8 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 totem_of_undying 8
replaceitem block ~3 ~1 ~5 slot.container 1 emerald 6
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 3 bone 12
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 10
replaceitem block ~3 ~1 ~5 slot.container 10 dark_oak_log 16
replaceitem block ~3 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 14 diamond 6
loot insert ~3 ~1 ~5 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0
