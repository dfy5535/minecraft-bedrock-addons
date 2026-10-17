# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0423/4224 | 主题内编号: b039/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·永恒圣火图腾方尖塔 (roofed_forest_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cracked_stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 mossy_stone_bricks []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 spider_eye 6
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 9
replaceitem block ~1 ~-3 ~2 slot.container 2 string 12
replaceitem block ~1 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 4 totem_of_undying 5
replaceitem block ~1 ~-3 ~2 slot.container 5 emerald 11
replaceitem block ~1 ~-3 ~2 slot.container 9 experience_bottle 6
replaceitem block ~1 ~-3 ~2 slot.container 10 iron_chestplate 1
replaceitem block ~1 ~-3 ~2 slot.container 11 crossbow 1
replaceitem block ~1 ~-3 ~2 slot.container 12 arrow 29
replaceitem block ~1 ~-3 ~2 slot.container 13 lantern 10
replaceitem block ~1 ~-3 ~2 slot.container 14 dark_oak_log 16
loot insert ~1 ~-3 ~2 loot "rsf/roofed_forest"
loot insert ~1 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 stripped_dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 stripped_dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 stripped_dark_oak_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 stripped_dark_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dark_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_stone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 bookshelf []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~-4 ~0 ~0 ~-5 ~6 ~2 iron_bars []
fill ~-4 ~7 ~0 ~-5 ~7 ~2 dark_oak_slab []
setblock ~-5 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 totem_of_undying 8
replaceitem block ~2 ~1 ~3 slot.container 1 emerald 6
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 3 bone 12
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~2 ~1 ~3 slot.container 10 dark_oak_log 20
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~2 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 14 diamond 3
loot insert ~2 ~1 ~3 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
