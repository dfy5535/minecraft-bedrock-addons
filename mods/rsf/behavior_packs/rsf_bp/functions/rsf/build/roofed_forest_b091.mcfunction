# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0475/4224 | 主题内编号: b091/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·跨水拱桥水神小祠 (roofed_forest_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cracked_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 dark_oak_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 string 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 2 totem_of_undying 5
replaceitem block ~-3 ~-3 ~2 slot.container 3 emerald 11
replaceitem block ~-3 ~-3 ~2 slot.container 4 rotten_flesh 18
replaceitem block ~-3 ~-3 ~2 slot.container 5 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 golden_apple 2
replaceitem block ~-3 ~-3 ~2 slot.container 10 mushroom_stew 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-3 ~-3 ~2 slot.container 12 diamond 5
replaceitem block ~-3 ~-3 ~2 slot.container 13 experience_bottle 8
replaceitem block ~-3 ~-3 ~2 slot.container 14 iron_chestplate 1
loot insert ~-3 ~-3 ~2 loot "rsf/roofed_forest"
loot insert ~-3 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_brick_slab []
setblock ~0 ~11 ~0 bookshelf []
setblock ~0 ~12 ~0 soul_lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-6 ~0 ~0 ~-7 ~3 ~2 iron_bars []
fill ~-6 ~4 ~0 ~-7 ~4 ~2 dark_oak_slab []
setblock ~-7 ~5 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 15
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~3 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 9 experience_bottle 10
replaceitem block ~4 ~1 ~3 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~3 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~3 slot.container 12 arrow 26
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~3 slot.container 14 dark_oak_log 20
loot insert ~4 ~1 ~3 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
