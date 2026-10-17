# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0395/4224 | 主题内编号: b011/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·深渊困兽角斗地牢 (roofed_forest_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
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

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 air []
fill ~5 ~1 ~6 ~5 ~7 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 stripped_dark_oak_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 stripped_dark_oak_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 stripped_dark_oak_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 stripped_dark_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 stripped_dark_oak_log []
setblock ~-5 ~9 ~-6 soul_lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 stripped_dark_oak_log []
setblock ~-5 ~9 ~6 soul_lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 stripped_dark_oak_log []
setblock ~5 ~9 ~-6 soul_lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 stripped_dark_oak_log []
setblock ~5 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-6 ~0 ~-3 ~-7 ~3 ~-1 iron_bars []
fill ~-6 ~4 ~-3 ~-7 ~4 ~-1 dark_oak_slab []
setblock ~-7 ~5 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 9 experience_bottle 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 arrow 30
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 4
replaceitem block ~4 ~1 ~5 slot.container 14 dark_oak_log 17
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0
