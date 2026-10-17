# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0459/4224 | 主题内编号: b075/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·远古巨石环廊法阵 (roofed_forest_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cracked_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_oak_planks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 string 12
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-3 ~-5 slot.container 3 emerald 11
replaceitem block ~0 ~-3 ~-5 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-5 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-5 slot.container 9 iron_ingot 8
replaceitem block ~0 ~-3 ~-5 slot.container 10 diamond 3
replaceitem block ~0 ~-3 ~-5 slot.container 11 experience_bottle 6
replaceitem block ~0 ~-3 ~-5 slot.container 12 iron_chestplate 1
replaceitem block ~0 ~-3 ~-5 slot.container 13 crossbow 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 arrow 29
loot insert ~0 ~-3 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 dark_oak_planks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 stripped_dark_oak_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 stripped_dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 stripped_dark_oak_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 stripped_dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 stripped_dark_oak_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 stripped_dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 stripped_dark_oak_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 stripped_dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 stripped_dark_oak_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 stripped_dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 stripped_dark_oak_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 stripped_dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 stripped_dark_oak_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 stripped_dark_oak_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 stripped_dark_oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 stripped_dark_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 stripped_dark_oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 stripped_dark_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 stripped_dark_oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 stripped_dark_oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 stripped_dark_oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 stripped_dark_oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 stripped_dark_oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 stripped_dark_oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 stripped_dark_oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 stripped_dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_dark_oak_log []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 soul_lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_dark_oak_log []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_dark_oak_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_dark_oak_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-7 ~0 ~0 ~-8 ~7 ~2 iron_bars []
fill ~-7 ~8 ~0 ~-8 ~8 ~2 dark_oak_slab []
setblock ~-8 ~9 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 4 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 5 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 9 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 10 arrow 29
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 12 dark_oak_log 16
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
