# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3042/4224 | 主题内编号: b098/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·四角炮楼重装要塞 (mushroom_island_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 red_mushroom_block []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 mushroom_stem []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 mushroom_stem []
setblock ~-6 ~9 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 mushroom_stem []
setblock ~5 ~9 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 mushroom_stem []
setblock ~5 ~9 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 mushroom_stem []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 cobblestone_wall []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 mushroom_stem []
setblock ~-6 ~8 ~-7 lantern []
setblock ~-6 ~7 ~7 mushroom_stem []
setblock ~-6 ~8 ~7 lantern []
setblock ~6 ~7 ~-7 mushroom_stem []
setblock ~6 ~8 ~-7 lantern []
setblock ~6 ~7 ~7 mushroom_stem []
setblock ~6 ~8 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~7 ~0 ~-2 ~7 ~6 ~-2 mushroom_stem []
fill ~6 ~7 ~-3 ~8 ~7 ~-1 red_mushroom_block []
setblock ~7 ~6 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 13
replaceitem block ~-5 ~1 ~6 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~6 slot.container 3 slime_ball 13
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 10
replaceitem block ~-5 ~1 ~6 slot.container 5 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 9 diamond 6
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 11 bowl 12
replaceitem block ~-5 ~1 ~6 slot.container 12 shroomlight 4
replaceitem block ~-5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 3 blaze_rod 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 16
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 4
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 11 bowl 10
replaceitem block ~5 ~1 ~6 slot.container 12 shroomlight 9
replaceitem block ~5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
