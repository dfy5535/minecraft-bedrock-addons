# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0402/4224 | 主题内编号: b018/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·L型转角领主秘宝屋 (roofed_forest_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 dark_oak_planks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 dark_oak_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 stripped_dark_oak_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 stripped_dark_oak_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 stripped_dark_oak_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 stripped_dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-6 ~0 ~-2 ~-7 ~5 ~0 iron_bars []
fill ~-6 ~6 ~-2 ~-7 ~6 ~0 dark_oak_slab []
setblock ~-7 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 5 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 11 arrow 29
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 13 dark_oak_log 16
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 3 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 4 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 11 arrow 27
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 13 dark_oak_log 21
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
