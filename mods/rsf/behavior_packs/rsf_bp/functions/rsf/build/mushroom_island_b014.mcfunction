# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2958/4224 | 主题内编号: b014/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·暗渠蓄水池秘境地牢 (mushroom_island_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 blaze_rod 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 18
replaceitem block ~3 ~-3 ~0 slot.container 3 gunpowder 17
replaceitem block ~3 ~-3 ~0 slot.container 4 string 10
replaceitem block ~3 ~-3 ~0 slot.container 5 spider_eye 9
replaceitem block ~3 ~-3 ~0 slot.container 9 shroomlight 6
replaceitem block ~3 ~-3 ~0 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 12 mycelium 13
replaceitem block ~3 ~-3 ~0 slot.container 13 red_mushroom 18
replaceitem block ~3 ~-3 ~0 slot.container 14 brown_mushroom 12
loot insert ~3 ~-3 ~0 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 red_mushroom_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-5 ~3 ~-1 ~-5 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mushroom_stem []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~6 ~0 ~-1 ~6 ~7 ~-1 mushroom_stem []
fill ~5 ~8 ~-2 ~7 ~8 ~0 red_mushroom_block []
setblock ~6 ~7 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 13
replaceitem block ~-4 ~1 ~5 slot.container 9 brown_mushroom 16
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 11 diamond 8
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 13 bowl 7
replaceitem block ~-4 ~1 ~5 slot.container 14 shroomlight 6
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 16
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 8
replaceitem block ~4 ~1 ~5 slot.container 9 brown_mushroom 14
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 13 bowl 12
replaceitem block ~4 ~1 ~5 slot.container 14 shroomlight 4
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
