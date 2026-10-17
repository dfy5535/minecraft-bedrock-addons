# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2960/4224 | 主题内编号: b016/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·要塞地底重装暗牢 (mushroom_island_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mycelium []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 ender_pearl 7
replaceitem block ~0 ~-3 ~5 slot.container 1 blaze_rod 6
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 18
replaceitem block ~0 ~-3 ~5 slot.container 4 gunpowder 17
replaceitem block ~0 ~-3 ~5 slot.container 5 string 10
replaceitem block ~0 ~-3 ~5 slot.container 9 mycelium 13
replaceitem block ~0 ~-3 ~5 slot.container 10 red_mushroom 18
replaceitem block ~0 ~-3 ~5 slot.container 11 brown_mushroom 12
replaceitem block ~0 ~-3 ~5 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~5 slot.container 13 diamond 4
replaceitem block ~0 ~-3 ~5 slot.container 14 iron_ingot 11
loot insert ~0 ~-3 ~5 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 blaze_rod 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 string 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 mycelium 12
replaceitem block ~0 ~-3 ~-5 slot.container 10 red_mushroom 17
replaceitem block ~0 ~-3 ~-5 slot.container 11 brown_mushroom 18
replaceitem block ~0 ~-3 ~-5 slot.container 12 golden_apple 2
replaceitem block ~0 ~-3 ~-5 slot.container 13 diamond 3
replaceitem block ~0 ~-3 ~-5 slot.container 14 iron_ingot 10
loot insert ~0 ~-3 ~-5 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~7 ~-6 red_mushroom_block []
setblock ~-6 ~8 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~7 ~7 red_mushroom_block []
setblock ~-6 ~8 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~7 ~-6 red_mushroom_block []
setblock ~5 ~8 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~7 ~7 red_mushroom_block []
setblock ~5 ~8 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 red_mushroom_block []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cobblestone_wall []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 mushroom_stem []
setblock ~-6 ~7 ~-7 lantern []
setblock ~-6 ~6 ~7 mushroom_stem []
setblock ~-6 ~7 ~7 lantern []
setblock ~6 ~6 ~-7 mushroom_stem []
setblock ~6 ~7 ~-7 lantern []
setblock ~6 ~6 ~7 mushroom_stem []
setblock ~6 ~7 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_mushroom_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~0 ~7 ~4 ~0 mushroom_stem []
fill ~6 ~5 ~-1 ~8 ~5 ~1 red_mushroom_block []
setblock ~7 ~4 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~6 slot.container 5 slime_ball 13
replaceitem block ~-5 ~1 ~6 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 10 suspicious_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 11 mycelium 9
replaceitem block ~-5 ~1 ~6 slot.container 12 red_mushroom 14
replaceitem block ~-5 ~1 ~6 slot.container 13 brown_mushroom 15
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 4
replaceitem block ~5 ~1 ~6 slot.container 9 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 10 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 11 mycelium 14
replaceitem block ~5 ~1 ~6 slot.container 12 red_mushroom 12
replaceitem block ~5 ~1 ~6 slot.container 13 brown_mushroom 13
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
