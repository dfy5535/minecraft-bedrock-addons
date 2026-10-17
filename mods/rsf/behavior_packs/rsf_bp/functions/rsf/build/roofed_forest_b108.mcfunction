# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0492/4224 | 主题内编号: b108/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十字四相元素秘法殿 (roofed_forest_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 1 string 12
replaceitem block ~3 ~-2 ~0 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 3 totem_of_undying 5
replaceitem block ~3 ~-2 ~0 slot.container 4 emerald 11
replaceitem block ~3 ~-2 ~0 slot.container 5 rotten_flesh 18
replaceitem block ~3 ~-2 ~0 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~-2 ~0 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-2 ~0 slot.container 11 diamond 4
replaceitem block ~3 ~-2 ~0 slot.container 12 experience_bottle 7
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_chestplate 1
replaceitem block ~3 ~-2 ~0 slot.container 14 crossbow 1
loot insert ~3 ~-2 ~0 loot "rsf/roofed_forest"
loot insert ~3 ~-2 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 deepslate_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 deepslate_bricks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 dark_oak_fence []
setblock ~5 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_oak_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 dark_oak_log []
setblock ~0 ~4 ~-8 red_mushroom_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 dark_oak_log []
setblock ~0 ~4 ~8 red_mushroom_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 dark_oak_log []
setblock ~-7 ~4 ~0 red_mushroom_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 dark_oak_log []
setblock ~7 ~4 ~0 red_mushroom_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-6 ~0 ~-2 ~-7 ~5 ~0 iron_bars []
fill ~-6 ~6 ~-2 ~-7 ~6 ~0 dark_oak_slab []
setblock ~-7 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 3 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 4 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 11 arrow 28
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 13 dark_oak_log 22
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 1 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 2 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 11 arrow 26
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 13 dark_oak_log 20
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
