# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0387/4224 | 主题内编号: b003/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·环柱巨石方尖祭坛 (roofed_forest_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dark_oak_planks []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 stripped_dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 stripped_dark_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 stripped_dark_oak_log []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 stripped_dark_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 stripped_dark_oak_log []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 stripped_dark_oak_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 stripped_dark_oak_log []
fill ~1 ~1 ~6 ~1 ~8 ~6 stripped_dark_oak_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 stripped_dark_oak_log []
fill ~3 ~1 ~6 ~3 ~8 ~6 stripped_dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 stripped_dark_oak_log []
fill ~5 ~1 ~6 ~5 ~8 ~6 stripped_dark_oak_log []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 stripped_dark_oak_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 stripped_dark_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 stripped_dark_oak_log []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 stripped_dark_oak_log []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 stripped_dark_oak_log []
fill ~5 ~1 ~0 ~5 ~8 ~0 stripped_dark_oak_log []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 stripped_dark_oak_log []
fill ~5 ~1 ~2 ~5 ~8 ~2 stripped_dark_oak_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 stripped_dark_oak_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 stripped_dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 dark_oak_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 bookshelf []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-6 ~0 ~1 ~-7 ~5 ~3 iron_bars []
fill ~-6 ~6 ~1 ~-7 ~6 ~3 dark_oak_slab []
setblock ~-7 ~7 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 bookshelf []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 13 experience_bottle 10
replaceitem block ~4 ~1 ~5 slot.container 14 iron_chestplate 1
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
