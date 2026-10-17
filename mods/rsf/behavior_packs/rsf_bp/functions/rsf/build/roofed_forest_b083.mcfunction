# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0467/4224 | 主题内编号: b083/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·铁砧锻造与模具工坊 (roofed_forest_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 totem_of_undying 5
replaceitem block ~3 ~-3 ~4 slot.container 1 emerald 11
replaceitem block ~3 ~-3 ~4 slot.container 2 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~-3 ~4 slot.container 10 arrow 29
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 10
replaceitem block ~3 ~-3 ~4 slot.container 12 dark_oak_log 16
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 14 mushroom_stew 1
loot insert ~3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 mossy_stone_bricks []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-6 ~0 ~-3 ~-7 ~5 ~-1 iron_bars []
fill ~-6 ~6 ~-3 ~-7 ~6 ~-1 dark_oak_slab []
setblock ~-7 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 3
replaceitem block ~4 ~1 ~5 slot.container 13 experience_bottle 6
replaceitem block ~4 ~1 ~5 slot.container 14 iron_chestplate 1
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-3 ~0
