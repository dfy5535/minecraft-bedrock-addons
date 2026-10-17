# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0512/4224 | 主题内编号: b128/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·U型紫禁朝堂大殿与地底金库 (roofed_forest_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_deepslate []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 string 12
replaceitem block ~4 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 3 totem_of_undying 5
replaceitem block ~4 ~-3 ~5 slot.container 4 emerald 11
replaceitem block ~4 ~-3 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~-3 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~-3 ~5 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-3 ~5 slot.container 11 diamond 4
replaceitem block ~4 ~-3 ~5 slot.container 12 experience_bottle 7
replaceitem block ~4 ~-3 ~5 slot.container 13 iron_chestplate 1
replaceitem block ~4 ~-3 ~5 slot.container 14 crossbow 1
loot insert ~4 ~-3 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~-3 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 deepslate_bricks []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-8 ~7 ~8 ~8 deepslate_brick_slab []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 cobblestone []
fill ~-6 ~11 ~-7 ~6 ~11 ~7 dark_oak_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 dark_oak_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 dark_oak_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-7 ~0 ~-3 ~-8 ~5 ~-1 iron_bars []
fill ~-7 ~6 ~-3 ~-8 ~6 ~-1 dark_oak_slab []
setblock ~-8 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 15
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~-5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~6 slot.container 11 arrow 27
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 8
replaceitem block ~-5 ~1 ~6 slot.container 13 dark_oak_log 21
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~6 loot "rsf/roofed_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 5 totem_of_undying 3
replaceitem block ~5 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 11 arrow 25
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 13 dark_oak_log 19
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~6 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
