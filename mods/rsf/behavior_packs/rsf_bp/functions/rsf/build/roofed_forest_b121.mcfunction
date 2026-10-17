# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0505/4224 | 主题内编号: b121/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·卫城廊柱王座大殿与地宫 (roofed_forest_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 totem_of_undying 5
replaceitem block ~0 ~-4 ~5 slot.container 1 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~5 slot.container 10 arrow 25
replaceitem block ~0 ~-4 ~5 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~5 slot.container 12 dark_oak_log 19
replaceitem block ~0 ~-4 ~5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~5 slot.container 14 mushroom_stew 1
loot insert ~0 ~-4 ~5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~5 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 totem_of_undying 3
replaceitem block ~0 ~-4 ~-5 slot.container 1 emerald 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 arrow 24
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 5
replaceitem block ~0 ~-4 ~-5 slot.container 12 dark_oak_log 18
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 5
replaceitem block ~0 ~-4 ~-5 slot.container 14 mushroom_stew 1
loot insert ~0 ~-4 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~8 ~7 cobblestone []
fill ~-5 ~1 ~0 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 dark_oak_log []
fill ~-6 ~8 ~-7 ~6 ~8 ~-1 dark_oak_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 dark_oak_planks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 dark_oak_fence []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 dark_oak_log []
setblock ~-5 ~9 ~-5 lantern []
setblock ~-5 ~8 ~5 dark_oak_log []
setblock ~-5 ~9 ~5 lantern []
setblock ~5 ~8 ~-5 dark_oak_log []
setblock ~5 ~9 ~-5 lantern []
setblock ~5 ~8 ~5 dark_oak_log []
setblock ~5 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 dark_oak_log []
setblock ~-8 ~5 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 dark_oak_log []
setblock ~-8 ~5 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 dark_oak_log []
setblock ~8 ~5 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~4 ~9 dark_oak_log []
setblock ~8 ~5 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~-7 ~0 ~-3 ~-8 ~3 ~-1 iron_bars []
fill ~-7 ~4 ~-3 ~-8 ~4 ~-1 dark_oak_slab []
setblock ~-8 ~5 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 red_mushroom_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 bone 12
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 15
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 9 experience_bottle 5
replaceitem block ~5 ~1 ~6 slot.container 10 iron_chestplate 1
replaceitem block ~5 ~1 ~6 slot.container 11 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 12 arrow 28
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 14 dark_oak_log 22
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
