# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0419/4224 | 主题内编号: b035/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·巨石垒砌古战石冢 (roofed_forest_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 17
replaceitem block ~0 ~-4 ~3 slot.container 2 spider_eye 6
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 9
replaceitem block ~0 ~-4 ~3 slot.container 4 string 12
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 9 lantern 9
replaceitem block ~0 ~-4 ~3 slot.container 10 dark_oak_log 22
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 2
replaceitem block ~0 ~-4 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-4 ~3 slot.container 13 iron_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 14 diamond 5
loot insert ~0 ~-4 ~3 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~3 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 16
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 2 spider_eye 12
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 dark_oak_log 21
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 8
replaceitem block ~0 ~-4 ~-3 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 14 diamond 4
loot insert ~0 ~-4 ~-3 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_dark_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 dark_oak_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_oak_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 dark_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 dark_oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-5 ~0 ~-3 ~-6 ~7 ~-1 iron_bars []
fill ~-5 ~8 ~-3 ~-6 ~8 ~-1 dark_oak_slab []
setblock ~-6 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 15
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 4 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 5 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 10 arrow 24
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 12 dark_oak_log 18
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0
