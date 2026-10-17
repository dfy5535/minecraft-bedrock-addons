# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2954/4224 | 主题内编号: b010/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十字交叉深层地牢 (mushroom_island_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_mushroom_block []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 18
replaceitem block ~0 ~-4 ~5 slot.container 2 gunpowder 17
replaceitem block ~0 ~-4 ~5 slot.container 3 string 10
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 9
replaceitem block ~0 ~-4 ~5 slot.container 5 slime_ball 10
replaceitem block ~0 ~-4 ~5 slot.container 9 brown_mushroom 18
replaceitem block ~0 ~-4 ~5 slot.container 10 golden_apple 2
replaceitem block ~0 ~-4 ~5 slot.container 11 diamond 3
replaceitem block ~0 ~-4 ~5 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 13 bowl 9
replaceitem block ~0 ~-4 ~5 slot.container 14 shroomlight 8
loot insert ~0 ~-4 ~5 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~-5 slot.container 2 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 16
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 slime_ball 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 brown_mushroom 17
replaceitem block ~0 ~-4 ~-5 slot.container 10 golden_apple 8
replaceitem block ~0 ~-4 ~-5 slot.container 11 diamond 2
replaceitem block ~0 ~-4 ~-5 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 bowl 8
replaceitem block ~0 ~-4 ~-5 slot.container 14 shroomlight 7
loot insert ~0 ~-4 ~-5 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~4 ~7 red_mushroom_block []
fill ~-6 ~1 ~-2 ~6 ~4 ~2 red_mushroom_block []
fill ~-1 ~1 ~-6 ~1 ~3 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~3 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 mushroom_stem []
setblock ~-8 ~4 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 mushroom_stem []
setblock ~-8 ~4 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 mushroom_stem []
setblock ~8 ~4 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~3 ~9 mushroom_stem []
setblock ~8 ~4 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 mushroom_stem []
fill ~6 ~9 ~0 ~8 ~9 ~2 red_mushroom_block []
setblock ~7 ~8 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 13
replaceitem block ~-5 ~1 ~6 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~6 slot.container 3 slime_ball 13
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 10
replaceitem block ~-5 ~1 ~6 slot.container 5 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 9 mycelium 8
replaceitem block ~-5 ~1 ~6 slot.container 10 red_mushroom 13
replaceitem block ~-5 ~1 ~6 slot.container 11 brown_mushroom 14
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~6 slot.container 13 diamond 6
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 13
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 3 blaze_rod 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 16
replaceitem block ~5 ~1 ~6 slot.container 9 mycelium 13
replaceitem block ~5 ~1 ~6 slot.container 10 red_mushroom 18
replaceitem block ~5 ~1 ~6 slot.container 11 brown_mushroom 12
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 13 diamond 4
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 11
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
