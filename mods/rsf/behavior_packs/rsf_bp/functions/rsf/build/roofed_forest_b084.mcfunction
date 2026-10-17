# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0468/4224 | 主题内编号: b084/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·露天采石场与矿道库 (roofed_forest_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dark_oak_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 dark_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 dark_oak_log []
setblock ~-5 ~8 ~-6 lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 dark_oak_log []
setblock ~-5 ~8 ~6 lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 dark_oak_log []
setblock ~5 ~8 ~-6 lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 dark_oak_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 dark_oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-6 ~0 ~-2 ~-7 ~6 ~0 iron_bars []
fill ~-6 ~7 ~-2 ~-7 ~7 ~0 dark_oak_slab []
setblock ~-7 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 3 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 4 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 8
replaceitem block ~-4 ~1 ~5 slot.container 10 experience_bottle 4
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 13 arrow 27
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 1 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 2 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 10 experience_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 13 arrow 25
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 6
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
