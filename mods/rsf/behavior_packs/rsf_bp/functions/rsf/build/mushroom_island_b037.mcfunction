# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2981/4224 | 主题内编号: b037/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·环廊聖柱纪念碑 (mushroom_island_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_mushroom_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 slime_ball 10
replaceitem block ~3 ~-3 ~0 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-3 ~0 slot.container 2 blaze_rod 6
replaceitem block ~3 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 4 bone 18
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 17
replaceitem block ~3 ~-3 ~0 slot.container 9 shroomlight 8
replaceitem block ~3 ~-3 ~0 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 12 mycelium 8
replaceitem block ~3 ~-3 ~0 slot.container 13 red_mushroom 13
replaceitem block ~3 ~-3 ~0 slot.container 14 brown_mushroom 14
loot insert ~3 ~-3 ~0 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 red_mushroom_block []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 mushroom_stem []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 mushroom_stem []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 mushroom_stem []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 mushroom_stem []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 mushroom_stem []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 mushroom_stem []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 mushroom_stem []
fill ~1 ~1 ~6 ~1 ~6 ~6 mushroom_stem []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 mushroom_stem []
fill ~3 ~1 ~6 ~3 ~6 ~6 mushroom_stem []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 mushroom_stem []
fill ~5 ~1 ~6 ~5 ~6 ~6 mushroom_stem []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 mushroom_stem []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 mushroom_stem []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 mushroom_stem []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 mushroom_stem []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 mushroom_stem []
fill ~5 ~1 ~0 ~5 ~6 ~0 mushroom_stem []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 mushroom_stem []
fill ~5 ~1 ~2 ~5 ~6 ~2 mushroom_stem []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 mushroom_stem []
fill ~5 ~1 ~4 ~5 ~6 ~4 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 mushroom_stem []
setblock ~-5 ~10 ~-6 shroomlight []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 mushroom_stem []
setblock ~-5 ~10 ~6 shroomlight []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 mushroom_stem []
setblock ~5 ~10 ~-6 shroomlight []
fill ~5 ~7 ~6 ~5 ~9 ~6 mushroom_stem []
setblock ~5 ~10 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_mushroom_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~-2 ~6 ~5 ~-2 mushroom_stem []
fill ~5 ~6 ~-3 ~7 ~6 ~-1 red_mushroom_block []
setblock ~6 ~5 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 red_mushroom 18
replaceitem block ~4 ~1 ~5 slot.container 10 brown_mushroom 12
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 14 bowl 10
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
