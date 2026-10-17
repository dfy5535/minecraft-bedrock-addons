# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2991/4224 | 主题内编号: b047/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·深渊跨桥决斗长台 (mushroom_island_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 brown_mushroom_block [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 brown_mushroom_block [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 shroomlight []
setblock ~3 ~-6 ~-4 shroomlight []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 10
replaceitem block ~3 ~-4 ~4 slot.container 1 spider_eye 9
replaceitem block ~3 ~-4 ~4 slot.container 2 slime_ball 10
replaceitem block ~3 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-4 ~4 slot.container 4 blaze_rod 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 suspicious_stew 1
replaceitem block ~3 ~-4 ~4 slot.container 10 mycelium 10
replaceitem block ~3 ~-4 ~4 slot.container 11 red_mushroom 15
replaceitem block ~3 ~-4 ~4 slot.container 12 brown_mushroom 16
replaceitem block ~3 ~-4 ~4 slot.container 13 golden_apple 7
replaceitem block ~3 ~-4 ~4 slot.container 14 diamond 8
loot insert ~3 ~-4 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 brown_mushroom_block []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 mushroom_stem []
setblock ~-6 ~8 ~-5 shroomlight []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 mushroom_stem []
setblock ~-6 ~8 ~5 shroomlight []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 mushroom_stem []
setblock ~6 ~8 ~-5 shroomlight []
fill ~6 ~5 ~5 ~6 ~7 ~5 mushroom_stem []
setblock ~6 ~8 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 mushroom_stem []
setblock ~-8 ~4 ~-7 shroomlight []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 mushroom_stem []
setblock ~-8 ~4 ~7 shroomlight []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 mushroom_stem []
setblock ~8 ~4 ~-7 shroomlight []
fill ~8 ~0 ~7 ~8 ~3 ~7 mushroom_stem []
setblock ~8 ~4 ~7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~0 ~7 ~5 ~0 mushroom_stem []
fill ~6 ~6 ~-1 ~8 ~6 ~1 red_mushroom_block []
setblock ~7 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 bone 13
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 string 13
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 9 red_mushroom 14
replaceitem block ~5 ~1 ~4 slot.container 10 brown_mushroom 15
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 12 diamond 7
replaceitem block ~5 ~1 ~4 slot.container 13 iron_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 14 bowl 6
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
