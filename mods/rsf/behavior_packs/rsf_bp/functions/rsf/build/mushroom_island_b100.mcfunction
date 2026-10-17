# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3044/4224 | 主题内编号: b100/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·半地下暗堡火力点 (mushroom_island_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 1 bone 18
replaceitem block ~2 ~-3 ~3 slot.container 2 gunpowder 17
replaceitem block ~2 ~-3 ~3 slot.container 3 string 10
replaceitem block ~2 ~-3 ~3 slot.container 4 spider_eye 9
replaceitem block ~2 ~-3 ~3 slot.container 5 slime_ball 10
replaceitem block ~2 ~-3 ~3 slot.container 9 bowl 11
replaceitem block ~2 ~-3 ~3 slot.container 10 shroomlight 10
replaceitem block ~2 ~-3 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~2 ~-3 ~3 slot.container 12 suspicious_stew 1
replaceitem block ~2 ~-3 ~3 slot.container 13 mycelium 10
replaceitem block ~2 ~-3 ~3 slot.container 14 red_mushroom 15
loot insert ~2 ~-3 ~3 loot "rsf/mushroom_island"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 red_mushroom_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 red_mushroom_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-5 ~3 ~-1 ~-5 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~5 ~0 ~-2 ~5 ~8 ~-2 mushroom_stem []
fill ~4 ~9 ~-3 ~6 ~9 ~-1 red_mushroom_block []
setblock ~5 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 13
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-3 ~1 ~4 slot.container 9 mycelium 14
replaceitem block ~-3 ~1 ~4 slot.container 10 red_mushroom 12
replaceitem block ~-3 ~1 ~4 slot.container 11 brown_mushroom 13
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~-3 ~1 ~4 loot "rsf/mushroom_island"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 16
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 16
replaceitem block ~3 ~1 ~4 slot.container 9 mycelium 12
replaceitem block ~3 ~1 ~4 slot.container 10 red_mushroom 17
replaceitem block ~3 ~1 ~4 slot.container 11 brown_mushroom 18
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 3
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
