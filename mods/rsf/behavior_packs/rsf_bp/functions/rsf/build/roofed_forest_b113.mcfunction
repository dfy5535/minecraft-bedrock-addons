# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0497/4224 | 主题内编号: b113/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·八角全采光生态温室 (roofed_forest_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_oak_planks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 emerald 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 arrow 30
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 dark_oak_log 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-4 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 dark_oak_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_oak_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 dark_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 dark_oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-5 ~0 ~0 ~-6 ~5 ~2 iron_bars []
fill ~-5 ~6 ~0 ~-6 ~6 ~2 dark_oak_slab []
setblock ~-6 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 12
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 15
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 diamond 5
replaceitem block ~3 ~1 ~4 slot.container 13 experience_bottle 8
replaceitem block ~3 ~1 ~4 slot.container 14 iron_chestplate 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-3 ~0
