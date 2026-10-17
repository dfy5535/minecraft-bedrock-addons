# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0425/4224 | 主题内编号: b041/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·八角看台古罗马斗技场 (roofed_forest_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_oak_planks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 emerald 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 arrow 30
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 dark_oak_log 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-4 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 cobblestone []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 air []
fill ~6 ~1 ~7 ~6 ~7 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 dark_oak_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 dark_oak_log []
setblock ~-6 ~9 ~-7 torch []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 dark_oak_log []
setblock ~-6 ~9 ~7 torch []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 dark_oak_log []
setblock ~6 ~9 ~-7 torch []
fill ~6 ~6 ~7 ~6 ~8 ~7 dark_oak_log []
setblock ~6 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 dark_oak_log []
setblock ~-8 ~5 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 dark_oak_log []
setblock ~-8 ~5 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 dark_oak_log []
setblock ~8 ~5 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~4 ~9 dark_oak_log []
setblock ~8 ~5 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-7 ~0 ~1 ~-8 ~3 ~3 iron_bars []
fill ~-7 ~4 ~1 ~-8 ~4 ~3 dark_oak_slab []
setblock ~-8 ~5 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 bone 12
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 15
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 9 experience_bottle 9
replaceitem block ~5 ~1 ~6 slot.container 10 iron_chestplate 1
replaceitem block ~5 ~1 ~6 slot.container 11 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 12 arrow 25
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 14 dark_oak_log 19
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-3 ~0
