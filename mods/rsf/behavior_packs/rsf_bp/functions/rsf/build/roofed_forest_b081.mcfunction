# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0465/4224 | 主题内编号: b081/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双高炉重工冶炼密室 (roofed_forest_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 dark_oak_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 cobblestone []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 string 12
replaceitem block ~2 ~-4 ~4 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-4 ~4 slot.container 2 totem_of_undying 5
replaceitem block ~2 ~-4 ~4 slot.container 3 emerald 11
replaceitem block ~2 ~-4 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~2 ~-4 ~4 slot.container 5 bone 17
replaceitem block ~2 ~-4 ~4 slot.container 9 golden_apple 4
replaceitem block ~2 ~-4 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~-4 ~4 slot.container 11 iron_ingot 12
replaceitem block ~2 ~-4 ~4 slot.container 12 diamond 7
replaceitem block ~2 ~-4 ~4 slot.container 13 experience_bottle 10
replaceitem block ~2 ~-4 ~4 slot.container 14 iron_chestplate 1
loot insert ~2 ~-4 ~4 loot "rsf/roofed_forest"
loot insert ~2 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~9 ~6 dark_oak_planks []
setblock ~-4 ~10 ~6 torch []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 dark_oak_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_dark_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_dark_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_dark_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_dark_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-5 ~0 ~1 ~-6 ~3 ~3 iron_bars []
fill ~-5 ~4 ~1 ~-6 ~4 ~3 dark_oak_slab []
setblock ~-6 ~5 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~5 blast_furnace []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 1 bone 12
replaceitem block ~3 ~1 ~5 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 15
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 9 experience_bottle 7
replaceitem block ~3 ~1 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~3 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~3 ~1 ~5 slot.container 12 arrow 30
replaceitem block ~3 ~1 ~5 slot.container 13 lantern 4
replaceitem block ~3 ~1 ~5 slot.container 14 dark_oak_log 17
loot insert ~3 ~1 ~5 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
