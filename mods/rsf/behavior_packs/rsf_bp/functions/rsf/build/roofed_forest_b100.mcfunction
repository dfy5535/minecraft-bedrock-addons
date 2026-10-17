# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0484/4224 | 主题内编号: b100/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·半地下暗堡火力点 (roofed_forest_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 deepslate_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 emerald 11
replaceitem block ~2 ~-3 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~2 ~-3 ~3 slot.container 2 bone 17
replaceitem block ~2 ~-3 ~3 slot.container 3 spider_eye 6
replaceitem block ~2 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-3 ~3 slot.container 5 string 12
replaceitem block ~2 ~-3 ~3 slot.container 9 arrow 24
replaceitem block ~2 ~-3 ~3 slot.container 10 lantern 5
replaceitem block ~2 ~-3 ~3 slot.container 11 dark_oak_log 18
replaceitem block ~2 ~-3 ~3 slot.container 12 golden_apple 5
replaceitem block ~2 ~-3 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~2 ~-3 ~3 slot.container 14 iron_ingot 13
loot insert ~2 ~-3 ~3 loot "rsf/roofed_forest"
loot insert ~2 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 dark_oak_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 dark_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 dark_oak_planks []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 dark_oak_fence []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 dark_oak_log []
setblock ~-4 ~7 ~-5 lantern []
setblock ~-4 ~6 ~5 dark_oak_log []
setblock ~-4 ~7 ~5 lantern []
setblock ~4 ~6 ~-5 dark_oak_log []
setblock ~4 ~7 ~-5 lantern []
setblock ~4 ~6 ~5 dark_oak_log []
setblock ~4 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 dark_oak_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 dark_oak_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dark_oak_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-5 ~0 ~-3 ~-6 ~7 ~-1 iron_bars []
fill ~-5 ~8 ~-3 ~-6 ~8 ~-1 dark_oak_slab []
setblock ~-6 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 15
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 3 totem_of_undying 8
replaceitem block ~-3 ~1 ~4 slot.container 4 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~-3 ~1 ~4 slot.container 12 experience_bottle 8
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~-3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-3 ~1 ~4 loot "rsf/roofed_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 1 totem_of_undying 3
replaceitem block ~3 ~1 ~4 slot.container 2 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~3 ~1 ~4 slot.container 12 experience_bottle 6
replaceitem block ~3 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~4 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
