# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3060/4224 | 主题内编号: b116/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·U型围合秘密花园驿站 (mushroom_island_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 brown_mushroom_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 red_mushroom_block []
fill ~-4 ~6 ~-5 ~4 ~7 ~5 glass []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 red_mushroom_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~6 ~0 ~-1 ~6 ~4 ~-1 mushroom_stem []
fill ~5 ~5 ~-2 ~7 ~5 ~0 red_mushroom_block []
setblock ~6 ~4 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~5 slot.container 1 slime_ball 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 11 mycelium 11
replaceitem block ~-4 ~1 ~5 slot.container 12 red_mushroom 16
replaceitem block ~-4 ~1 ~5 slot.container 13 brown_mushroom 17
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 16
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 16
replaceitem block ~4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 mycelium 9
replaceitem block ~4 ~1 ~5 slot.container 12 red_mushroom 14
replaceitem block ~4 ~1 ~5 slot.container 13 brown_mushroom 15
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
