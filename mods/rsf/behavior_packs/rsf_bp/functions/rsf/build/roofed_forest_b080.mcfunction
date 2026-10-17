# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0464/4224 | 主题内编号: b080/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·悬灯祈福图腾花坛 (roofed_forest_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 lantern []
setblock ~2 ~-6 ~-3 lantern []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-4 ~3 slot.container 1 string 12
replaceitem block ~2 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-4 ~3 slot.container 3 totem_of_undying 5
replaceitem block ~2 ~-4 ~3 slot.container 4 emerald 11
replaceitem block ~2 ~-4 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-4 ~3 slot.container 9 dark_oak_log 22
replaceitem block ~2 ~-4 ~3 slot.container 10 golden_apple 2
replaceitem block ~2 ~-4 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~2 ~-4 ~3 slot.container 12 iron_ingot 10
replaceitem block ~2 ~-4 ~3 slot.container 13 diamond 5
replaceitem block ~2 ~-4 ~3 slot.container 14 experience_bottle 8
loot insert ~2 ~-4 ~3 loot "rsf/roofed_forest"
loot insert ~2 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~3 ~5 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~2 ~4 air []
fill ~-5 ~3 ~-6 ~5 ~3 ~6 deepslate_brick_slab []
fill ~-3 ~4 ~-4 ~3 ~7 ~4 cobblestone []
fill ~-2 ~4 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 deepslate_brick_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 cobblestone []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 dark_oak_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 dark_oak_log []
setblock ~0 ~4 ~-7 red_mushroom_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 dark_oak_log []
setblock ~0 ~4 ~7 red_mushroom_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 dark_oak_log []
setblock ~-6 ~4 ~0 red_mushroom_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 dark_oak_log []
setblock ~6 ~4 ~0 red_mushroom_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-5 ~0 ~-3 ~-6 ~7 ~-1 iron_bars []
fill ~-5 ~8 ~-3 ~-6 ~8 ~-1 dark_oak_slab []
setblock ~-6 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~4 smoker []
setblock ~3 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 15
replaceitem block ~-3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~-3 ~1 ~4 slot.container 12 experience_bottle 9
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~-3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-3 ~1 ~4 loot "rsf/roofed_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 10
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 5 totem_of_undying 3
replaceitem block ~3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 11 diamond 4
replaceitem block ~3 ~1 ~4 slot.container 12 experience_bottle 7
replaceitem block ~3 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
