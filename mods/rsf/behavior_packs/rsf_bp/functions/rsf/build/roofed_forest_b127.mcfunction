# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0511/4224 | 主题内编号: b127/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·万神殿巨型穹顶与试炼宫 (roofed_forest_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cracked_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 bookshelf []
setblock ~-4 ~-6 ~-5 soul_lantern []
setblock ~4 ~-6 ~5 soul_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 totem_of_undying 5
replaceitem block ~0 ~-4 ~5 slot.container 1 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 experience_bottle 8
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~0 ~-4 ~5 slot.container 11 crossbow 1
replaceitem block ~0 ~-4 ~5 slot.container 12 arrow 24
replaceitem block ~0 ~-4 ~5 slot.container 13 lantern 5
replaceitem block ~0 ~-4 ~5 slot.container 14 dark_oak_log 18
loot insert ~0 ~-4 ~5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dark_oak_planks []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 stripped_dark_oak_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 stripped_dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 stripped_dark_oak_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 stripped_dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 stripped_dark_oak_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 stripped_dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 stripped_dark_oak_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 stripped_dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 stripped_dark_oak_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 stripped_dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 stripped_dark_oak_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 stripped_dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 stripped_dark_oak_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 stripped_dark_oak_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 stripped_dark_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 stripped_dark_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 stripped_dark_oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 stripped_dark_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 stripped_dark_oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 stripped_dark_oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 stripped_dark_oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 stripped_dark_oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 stripped_dark_oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 stripped_dark_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 stripped_dark_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 stripped_dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dark_oak_planks []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 glass []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 dark_oak_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x10x3) ---
fill ~-7 ~0 ~-4 ~-8 ~4 ~-2 iron_bars []
fill ~-7 ~5 ~-4 ~-8 ~5 ~-2 dark_oak_slab []
setblock ~-8 ~6 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~6 brewing_stand []
setblock ~1 ~1 ~6 cauldron []
setblock ~0 ~1 ~6 bookshelf []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 1 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 3 bone 12
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 10 diamond 3
replaceitem block ~5 ~1 ~6 slot.container 11 experience_bottle 6
replaceitem block ~5 ~1 ~6 slot.container 12 iron_chestplate 1
replaceitem block ~5 ~1 ~6 slot.container 13 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 14 arrow 29
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
