# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0496/4224 | 主题内编号: b112/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·U型回廊学者修道院 (roofed_forest_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 1 string 12
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 3 totem_of_undying 5
replaceitem block ~3 ~-2 ~4 slot.container 4 emerald 11
replaceitem block ~3 ~-2 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~3 ~-2 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~-2 ~4 slot.container 10 iron_ingot 11
replaceitem block ~3 ~-2 ~4 slot.container 11 diamond 6
replaceitem block ~3 ~-2 ~4 slot.container 12 experience_bottle 9
replaceitem block ~3 ~-2 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~3 ~-2 ~4 slot.container 14 crossbow 1
loot insert ~3 ~-2 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-2 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 deepslate_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 dark_oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-6 ~0 ~-4 ~-7 ~4 ~-2 iron_bars []
fill ~-6 ~5 ~-4 ~-7 ~5 ~-2 dark_oak_slab []
setblock ~-7 ~6 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 15
replaceitem block ~-4 ~1 ~5 slot.container 9 arrow 30
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 4
replaceitem block ~-4 ~1 ~5 slot.container 11 dark_oak_log 17
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 5 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 9 arrow 28
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 11 dark_oak_log 22
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
