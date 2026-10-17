# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3002/4224 | 主题内编号: b058/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十字拱顶家族陵墓 (mushroom_island_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 brown_mushroom_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 mushroom_stem []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 18
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 spider_eye 9
replaceitem block ~0 ~-2 ~-3 slot.container 5 slime_ball 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 mycelium 11
replaceitem block ~0 ~-2 ~-3 slot.container 10 red_mushroom 16
replaceitem block ~0 ~-2 ~-3 slot.container 11 brown_mushroom 17
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 diamond 2
replaceitem block ~0 ~-2 ~-3 slot.container 14 iron_ingot 9
loot insert ~0 ~-2 ~-3 loot "rsf/mushroom_island"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 red_mushroom_block []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 red_mushroom_block []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 mushroom_stem []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 mushroom_stem []
setblock ~-7 ~4 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 mushroom_stem []
setblock ~-7 ~4 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 mushroom_stem []
setblock ~7 ~4 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~3 ~8 mushroom_stem []
setblock ~7 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~0 ~1 ~6 ~6 ~1 mushroom_stem []
fill ~5 ~7 ~0 ~7 ~7 ~2 red_mushroom_block []
setblock ~6 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~5 slot.container 3 slime_ball 13
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 8
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 11 bowl 7
replaceitem block ~-4 ~1 ~5 slot.container 12 shroomlight 6
replaceitem block ~-4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 15
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 8
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 16
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 11 bowl 12
replaceitem block ~4 ~1 ~5 slot.container 12 shroomlight 4
replaceitem block ~4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
