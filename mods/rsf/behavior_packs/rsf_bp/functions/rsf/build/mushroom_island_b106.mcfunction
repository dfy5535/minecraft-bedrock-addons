# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3050/4224 | 主题内编号: b106/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·琉璃穹顶魔药炼金室 (mushroom_island_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mushroom_stem []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 spider_eye 9
replaceitem block ~-2 ~-2 ~3 slot.container 1 slime_ball 10
replaceitem block ~-2 ~-2 ~3 slot.container 2 ender_pearl 7
replaceitem block ~-2 ~-2 ~3 slot.container 3 blaze_rod 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~-2 ~-2 ~3 slot.container 5 bone 18
replaceitem block ~-2 ~-2 ~3 slot.container 9 diamond 8
replaceitem block ~-2 ~-2 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-2 ~-2 ~3 slot.container 11 bowl 7
replaceitem block ~-2 ~-2 ~3 slot.container 12 shroomlight 6
replaceitem block ~-2 ~-2 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~-2 ~-2 ~3 slot.container 14 suspicious_stew 1
loot insert ~-2 ~-2 ~3 loot "rsf/mushroom_island"
loot insert ~-2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 red_mushroom_block []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 mushroom_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 mushroom_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 mushroom_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 mushroom_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 mushroom_stem []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 mushroom_stem []
setblock ~-6 ~4 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 mushroom_stem []
setblock ~-6 ~4 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 mushroom_stem []
setblock ~6 ~4 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 mushroom_stem []
setblock ~6 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~5 ~0 ~-1 ~5 ~4 ~-1 mushroom_stem []
fill ~4 ~5 ~-2 ~6 ~5 ~0 red_mushroom_block []
setblock ~5 ~4 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 13
replaceitem block ~-3 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-3 ~1 ~4 slot.container 3 slime_ball 13
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 10 suspicious_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 11 mycelium 8
replaceitem block ~-3 ~1 ~4 slot.container 12 red_mushroom 13
replaceitem block ~-3 ~1 ~4 slot.container 13 brown_mushroom 14
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~-3 ~1 ~4 loot "rsf/mushroom_island"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 15
replaceitem block ~3 ~1 ~4 slot.container 1 slime_ball 8
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 4
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 bone 16
replaceitem block ~3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 suspicious_stew 1
replaceitem block ~3 ~1 ~4 slot.container 11 mycelium 13
replaceitem block ~3 ~1 ~4 slot.container 12 red_mushroom 18
replaceitem block ~3 ~1 ~4 slot.container 13 brown_mushroom 12
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
