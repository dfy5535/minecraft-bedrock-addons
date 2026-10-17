# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2988/4224 | 主题内编号: b044/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子祭台勇士角斗场 (mushroom_island_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mycelium []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 quartz_block []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 1 bone 18
replaceitem block ~4 ~-2 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~-2 ~4 slot.container 3 string 10
replaceitem block ~4 ~-2 ~4 slot.container 4 spider_eye 9
replaceitem block ~4 ~-2 ~4 slot.container 5 slime_ball 10
replaceitem block ~4 ~-2 ~4 slot.container 9 bowl 8
replaceitem block ~4 ~-2 ~4 slot.container 10 shroomlight 7
replaceitem block ~4 ~-2 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~4 ~-2 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~4 ~-2 ~4 slot.container 13 mycelium 14
replaceitem block ~4 ~-2 ~4 slot.container 14 red_mushroom 12
loot insert ~4 ~-2 ~4 loot "rsf/mushroom_island"
loot insert ~4 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~6 ~6 stone_bricks []
fill ~2 ~1 ~-6 ~6 ~6 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~5 ~5 air []
fill ~3 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 red_mushroom_block []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-6 ~-6 ~7 ~-6 mushroom_stem []
setblock ~-6 ~8 ~-6 lantern []
fill ~-6 ~5 ~6 ~-6 ~7 ~6 mushroom_stem []
setblock ~-6 ~8 ~6 lantern []
fill ~6 ~5 ~-6 ~6 ~7 ~-6 mushroom_stem []
setblock ~6 ~8 ~-6 lantern []
fill ~6 ~5 ~6 ~6 ~7 ~6 mushroom_stem []
setblock ~6 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mushroom_stem []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-1 ~7 ~7 ~-1 mushroom_stem []
fill ~6 ~8 ~-2 ~8 ~8 ~0 red_mushroom_block []
setblock ~7 ~7 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 1 slime_ball 13
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-5 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~5 slot.container 9 brown_mushroom 18
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~5 slot.container 11 diamond 3
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 13 bowl 9
replaceitem block ~-5 ~1 ~5 slot.container 14 shroomlight 8
loot insert ~-5 ~1 ~5 loot "rsf/mushroom_island"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~5 slot.container 1 blaze_rod 4
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 3 bone 16
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~5 slot.container 5 string 16
replaceitem block ~5 ~1 ~5 slot.container 9 brown_mushroom 16
replaceitem block ~5 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~5 slot.container 11 diamond 8
replaceitem block ~5 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~5 slot.container 13 bowl 7
replaceitem block ~5 ~1 ~5 slot.container 14 shroomlight 6
loot insert ~5 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~5 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
