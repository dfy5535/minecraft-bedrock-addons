# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0444/4224 | 主题内编号: b060/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·圆形穹顶万骨祠堂 (roofed_forest_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 3 string 12
replaceitem block ~0 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 5 totem_of_undying 5
replaceitem block ~0 ~-3 ~4 slot.container 9 diamond 4
replaceitem block ~0 ~-3 ~4 slot.container 10 experience_bottle 7
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-3 ~4 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~4 slot.container 13 arrow 30
replaceitem block ~0 ~-3 ~4 slot.container 14 lantern 4
loot insert ~0 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~4 loot "chests/woodland_mansion"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 12
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 10
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 5 totem_of_undying 3
replaceitem block ~0 ~-3 ~-4 slot.container 9 diamond 3
replaceitem block ~0 ~-3 ~-4 slot.container 10 experience_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 arrow 29
replaceitem block ~0 ~-3 ~-4 slot.container 14 lantern 10
loot insert ~0 ~-3 ~-4 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 dark_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 dark_oak_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 dark_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 dark_oak_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 dark_oak_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 dark_oak_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 dark_oak_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 dark_oak_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 dark_oak_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 dark_oak_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 dark_oak_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 dark_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 dark_oak_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 dark_oak_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 dark_oak_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 dark_oak_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 dark_oak_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 dark_oak_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 dark_oak_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_planks []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 glass []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-6 ~0 ~-2 ~-7 ~7 ~0 iron_bars []
fill ~-6 ~8 ~-2 ~-7 ~8 ~0 dark_oak_slab []
setblock ~-7 ~9 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 emerald_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 3 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 4 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 11 diamond 7
replaceitem block ~-4 ~1 ~5 slot.container 12 experience_bottle 10
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 14 crossbow 1
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 1 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 2 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 12 experience_bottle 8
replaceitem block ~4 ~1 ~5 slot.container 13 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 14 crossbow 1
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
