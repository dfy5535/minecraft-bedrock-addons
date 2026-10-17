# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2966/4224 | 主题内编号: b022/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·廊柱书库秘藏室 (mushroom_island_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mushroom_stem []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 mushroom_stem []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 mushroom_stem []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 mushroom_stem []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 mushroom_stem []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 mushroom_stem []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 mushroom_stem []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 mushroom_stem []
fill ~1 ~1 ~6 ~1 ~5 ~6 mushroom_stem []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 mushroom_stem []
fill ~3 ~1 ~6 ~3 ~5 ~6 mushroom_stem []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 mushroom_stem []
fill ~5 ~1 ~6 ~5 ~5 ~6 mushroom_stem []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 mushroom_stem []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 mushroom_stem []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 mushroom_stem []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 mushroom_stem []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 mushroom_stem []
fill ~5 ~1 ~0 ~5 ~5 ~0 mushroom_stem []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 mushroom_stem []
fill ~5 ~1 ~2 ~5 ~5 ~2 mushroom_stem []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 mushroom_stem []
fill ~5 ~1 ~4 ~5 ~5 ~4 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mushroom_stem []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 brown_mushroom_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 shroomlight []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mushroom_stem []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 mushroom_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 mushroom_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~1 ~6 ~5 ~1 mushroom_stem []
fill ~5 ~6 ~0 ~7 ~6 ~2 red_mushroom_block []
setblock ~6 ~5 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 13
replaceitem block ~-4 ~1 ~5 slot.container 9 bowl 11
replaceitem block ~-4 ~1 ~5 slot.container 10 shroomlight 10
replaceitem block ~-4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 12 suspicious_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 13 mycelium 10
replaceitem block ~-4 ~1 ~5 slot.container 14 red_mushroom 15
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 16
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 8
replaceitem block ~4 ~1 ~5 slot.container 9 bowl 9
replaceitem block ~4 ~1 ~5 slot.container 10 shroomlight 8
replaceitem block ~4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 12 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 13 mycelium 8
replaceitem block ~4 ~1 ~5 slot.container 14 red_mushroom 13
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
