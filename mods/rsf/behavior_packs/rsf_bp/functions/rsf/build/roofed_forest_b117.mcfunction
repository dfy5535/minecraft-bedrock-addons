# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0501/4224 | 主题内编号: b117/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·环柱生态标本采集馆 (roofed_forest_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 2 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 4 string 12
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~-3 ~4 slot.container 10 arrow 25
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 12 dark_oak_log 19
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 6
replaceitem block ~3 ~-3 ~4 slot.container 14 mushroom_stew 1
loot insert ~3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~4 loot "chests/woodland_mansion"

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
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-6 ~0 ~1 ~-7 ~4 ~3 iron_bars []
fill ~-6 ~5 ~1 ~-7 ~5 ~3 dark_oak_slab []
setblock ~-7 ~6 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 red_mushroom_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 2 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 11 experience_bottle 10
replaceitem block ~4 ~1 ~5 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 14 arrow 26
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
