# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3032/4224 | 主题内编号: b088/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·矿车铁轨转运仓库 (mushroom_island_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 stone_bricks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 stone_bricks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 stone_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 mycelium []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 red_mushroom_block []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 blaze_rod 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 gunpowder 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 spider_eye 9
replaceitem block ~-2 ~-4 ~3 slot.container 9 red_mushroom 15
replaceitem block ~-2 ~-4 ~3 slot.container 10 brown_mushroom 16
replaceitem block ~-2 ~-4 ~3 slot.container 11 golden_apple 7
replaceitem block ~-2 ~-4 ~3 slot.container 12 diamond 8
replaceitem block ~-2 ~-4 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 bowl 7
loot insert ~-2 ~-4 ~3 loot "rsf/mushroom_island"
loot insert ~-2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~5 ~7 stone_bricks []
fill ~-3 ~1 ~-6 ~3 ~4 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 mushroom_stem []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 mushroom_stem []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 mushroom_stem []
fill ~4 ~1 ~7 ~4 ~5 ~7 mushroom_stem []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-8 ~-5 ~6 ~8 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-8 ~5 ~6 ~8 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-7 ~-4 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-7 ~4 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-7 ~3 ~7 ~7 stone_brick_slab []
fill ~0 ~8 ~-8 ~0 ~8 ~8 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 red_mushroom_block []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x9x4) ---
fill ~5 ~0 ~2 ~5 ~6 ~2 mushroom_stem []
fill ~4 ~7 ~1 ~6 ~7 ~3 red_mushroom_block []
setblock ~5 ~6 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 1 bone 13
replaceitem block ~-3 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~6 slot.container 3 string 13
replaceitem block ~-3 ~1 ~6 slot.container 4 spider_eye 12
replaceitem block ~-3 ~1 ~6 slot.container 5 slime_ball 13
replaceitem block ~-3 ~1 ~6 slot.container 9 diamond 3
replaceitem block ~-3 ~1 ~6 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~1 ~6 slot.container 11 bowl 9
replaceitem block ~-3 ~1 ~6 slot.container 12 shroomlight 8
replaceitem block ~-3 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~-3 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~-3 ~1 ~6 loot "rsf/mushroom_island"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~6 slot.container 1 string 16
replaceitem block ~3 ~1 ~6 slot.container 2 spider_eye 15
replaceitem block ~3 ~1 ~6 slot.container 3 slime_ball 8
replaceitem block ~3 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~3 ~1 ~6 slot.container 5 blaze_rod 4
replaceitem block ~3 ~1 ~6 slot.container 9 diamond 8
replaceitem block ~3 ~1 ~6 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~6 slot.container 11 bowl 7
replaceitem block ~3 ~1 ~6 slot.container 12 shroomlight 6
replaceitem block ~3 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~3 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~3 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~6 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
