# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0400/4224 | 主题内编号: b016/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·要塞地底重装暗牢 (roofed_forest_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_deepslate []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 1 totem_of_undying 5
replaceitem block ~0 ~-3 ~5 slot.container 2 emerald 11
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 18
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 17
replaceitem block ~0 ~-3 ~5 slot.container 5 spider_eye 6
replaceitem block ~0 ~-3 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~0 ~-3 ~5 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-3 ~5 slot.container 11 diamond 4
replaceitem block ~0 ~-3 ~5 slot.container 12 experience_bottle 7
replaceitem block ~0 ~-3 ~5 slot.container 13 iron_chestplate 1
replaceitem block ~0 ~-3 ~5 slot.container 14 crossbow 1
loot insert ~0 ~-3 ~5 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~5 loot "chests/woodland_mansion"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 1 totem_of_undying 3
replaceitem block ~0 ~-3 ~-5 slot.container 2 emerald 9
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 spider_eye 12
replaceitem block ~0 ~-3 ~-5 slot.container 9 mushroom_stew 1
replaceitem block ~0 ~-3 ~-5 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-3 ~-5 slot.container 11 diamond 3
replaceitem block ~0 ~-3 ~-5 slot.container 12 experience_bottle 6
replaceitem block ~0 ~-3 ~-5 slot.container 13 iron_chestplate 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 crossbow 1
loot insert ~0 ~-3 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 deepslate_bricks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 dark_oak_planks []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 dark_oak_planks []
setblock ~-6 ~9 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 dark_oak_planks []
setblock ~5 ~9 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 dark_oak_planks []
setblock ~5 ~9 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 dark_oak_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 dark_oak_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~-7 ~0 ~-3 ~-8 ~3 ~-1 iron_bars []
fill ~-7 ~4 ~-3 ~-8 ~4 ~-1 dark_oak_slab []
setblock ~-8 ~5 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 15
replaceitem block ~-5 ~1 ~6 slot.container 9 dark_oak_log 17
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~6 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 13 diamond 7
replaceitem block ~-5 ~1 ~6 slot.container 14 experience_bottle 10
loot insert ~-5 ~1 ~6 loot "rsf/roofed_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 5 totem_of_undying 3
replaceitem block ~5 ~1 ~6 slot.container 9 dark_oak_log 22
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 11 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 13 diamond 5
replaceitem block ~5 ~1 ~6 slot.container 14 experience_bottle 8
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~6 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
