# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0495/4224 | 主题内编号: b111/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·地下禁忌书库与炼药室 (roofed_forest_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 soul_lantern []
setblock ~3 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 12
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-4 ~4 slot.container 3 emerald 11
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 17
replaceitem block ~0 ~-4 ~4 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~4 slot.container 10 arrow 29
replaceitem block ~0 ~-4 ~4 slot.container 11 lantern 10
replaceitem block ~0 ~-4 ~4 slot.container 12 dark_oak_log 16
replaceitem block ~0 ~-4 ~4 slot.container 13 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-4 ~4 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~4 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 string 10
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 totem_of_undying 3
replaceitem block ~0 ~-4 ~-4 slot.container 3 emerald 9
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~-4 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~-4 slot.container 10 arrow 28
replaceitem block ~0 ~-4 ~-4 slot.container 11 lantern 9
replaceitem block ~0 ~-4 ~-4 slot.container 12 dark_oak_log 22
replaceitem block ~0 ~-4 ~-4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~-4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-4 ~-4 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dark_oak_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 dark_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 bookshelf []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-6 ~0 ~1 ~-7 ~3 ~3 iron_bars []
fill ~-6 ~4 ~1 ~-7 ~4 ~3 dark_oak_slab []
setblock ~-7 ~5 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 experience_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 arrow 25
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 14 dark_oak_log 19
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
