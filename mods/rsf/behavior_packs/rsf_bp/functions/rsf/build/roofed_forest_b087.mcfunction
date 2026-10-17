# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0471/4224 | 主题内编号: b087/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十字矿道枢纽补给室 (roofed_forest_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-4 ~4 slot.container 2 string 12
replaceitem block ~3 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 4 totem_of_undying 5
replaceitem block ~3 ~-4 ~4 slot.container 5 emerald 11
replaceitem block ~3 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~-4 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-4 ~4 slot.container 11 iron_ingot 13
replaceitem block ~3 ~-4 ~4 slot.container 12 diamond 8
replaceitem block ~3 ~-4 ~4 slot.container 13 experience_bottle 4
replaceitem block ~3 ~-4 ~4 slot.container 14 iron_chestplate 1
loot insert ~3 ~-4 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 dark_oak_planks []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 cobblestone_wall []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 stripped_dark_oak_log []
setblock ~-5 ~7 ~-6 soul_lantern []
setblock ~-5 ~6 ~6 stripped_dark_oak_log []
setblock ~-5 ~7 ~6 soul_lantern []
setblock ~5 ~6 ~-6 stripped_dark_oak_log []
setblock ~5 ~7 ~-6 soul_lantern []
setblock ~5 ~6 ~6 stripped_dark_oak_log []
setblock ~5 ~7 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 dark_oak_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-6 ~0 ~1 ~-7 ~4 ~3 iron_bars []
fill ~-6 ~5 ~1 ~-7 ~5 ~3 dark_oak_slab []
setblock ~-7 ~6 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 11 experience_bottle 8
replaceitem block ~4 ~1 ~5 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 14 arrow 24
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
