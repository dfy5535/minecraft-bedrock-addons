# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0428/4224 | 主题内编号: b044/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子祭台勇士角斗场 (roofed_forest_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_deepslate []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 cobblestone []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 emerald 11
replaceitem block ~4 ~-2 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~-2 ~4 slot.container 2 bone 17
replaceitem block ~4 ~-2 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~-2 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-2 ~4 slot.container 5 string 12
replaceitem block ~4 ~-2 ~4 slot.container 9 arrow 28
replaceitem block ~4 ~-2 ~4 slot.container 10 lantern 9
replaceitem block ~4 ~-2 ~4 slot.container 11 dark_oak_log 22
replaceitem block ~4 ~-2 ~4 slot.container 12 golden_apple 2
replaceitem block ~4 ~-2 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~-2 ~4 slot.container 14 iron_ingot 10
loot insert ~4 ~-2 ~4 loot "rsf/roofed_forest"
loot insert ~4 ~-2 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~7 ~6 deepslate_bricks []
fill ~2 ~1 ~-6 ~6 ~7 ~6 deepslate_bricks []
fill ~-5 ~1 ~-5 ~-3 ~6 ~5 air []
fill ~3 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 dark_oak_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-6 ~-6 ~8 ~-6 dark_oak_log []
setblock ~-6 ~9 ~-6 lantern []
fill ~-6 ~6 ~6 ~-6 ~8 ~6 dark_oak_log []
setblock ~-6 ~9 ~6 lantern []
fill ~6 ~6 ~-6 ~6 ~8 ~-6 dark_oak_log []
setblock ~6 ~9 ~-6 lantern []
fill ~6 ~6 ~6 ~6 ~8 ~6 dark_oak_log []
setblock ~6 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 dark_oak_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 dark_oak_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dark_oak_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-7 ~0 ~0 ~-8 ~6 ~2 iron_bars []
fill ~-7 ~7 ~0 ~-8 ~7 ~2 dark_oak_slab []
setblock ~-8 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 1 string 15
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 3 totem_of_undying 8
replaceitem block ~-5 ~1 ~5 slot.container 4 emerald 6
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 9 diamond 3
replaceitem block ~-5 ~1 ~5 slot.container 10 experience_bottle 6
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~-5 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~5 slot.container 13 arrow 29
replaceitem block ~-5 ~1 ~5 slot.container 14 lantern 10
loot insert ~-5 ~1 ~5 loot "rsf/roofed_forest"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 1 totem_of_undying 3
replaceitem block ~5 ~1 ~5 slot.container 2 emerald 9
replaceitem block ~5 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~5 slot.container 4 bone 15
replaceitem block ~5 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~5 slot.container 9 diamond 8
replaceitem block ~5 ~1 ~5 slot.container 10 experience_bottle 4
replaceitem block ~5 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~5 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~5 slot.container 13 arrow 27
replaceitem block ~5 ~1 ~5 slot.container 14 lantern 8
loot insert ~5 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
