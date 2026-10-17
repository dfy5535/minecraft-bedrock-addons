# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2964/4224 | 主题内编号: b020/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·重甲防爆金库房间 (mushroom_island_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 18
replaceitem block ~3 ~-4 ~5 slot.container 1 gunpowder 17
replaceitem block ~3 ~-4 ~5 slot.container 2 string 10
replaceitem block ~3 ~-4 ~5 slot.container 3 spider_eye 9
replaceitem block ~3 ~-4 ~5 slot.container 4 slime_ball 10
replaceitem block ~3 ~-4 ~5 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-4 ~5 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 10 bowl 9
replaceitem block ~3 ~-4 ~5 slot.container 11 shroomlight 8
replaceitem block ~3 ~-4 ~5 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~-4 ~5 slot.container 13 suspicious_stew 1
replaceitem block ~3 ~-4 ~5 slot.container 14 mycelium 8
loot insert ~3 ~-4 ~5 loot "rsf/mushroom_island"
loot insert ~3 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~7 ~-4 red_mushroom_block []
setblock ~-4 ~8 ~-5 lantern []
fill ~-4 ~1 ~4 ~-3 ~7 ~5 red_mushroom_block []
setblock ~-4 ~8 ~4 lantern []
fill ~3 ~1 ~-5 ~4 ~7 ~-4 red_mushroom_block []
setblock ~3 ~8 ~-5 lantern []
fill ~3 ~1 ~4 ~4 ~7 ~5 red_mushroom_block []
setblock ~3 ~8 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 red_mushroom_block []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 cobblestone_wall []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 mushroom_stem []
setblock ~-4 ~7 ~-5 lantern []
setblock ~-4 ~6 ~5 mushroom_stem []
setblock ~-4 ~7 ~5 lantern []
setblock ~4 ~6 ~-5 mushroom_stem []
setblock ~4 ~7 ~-5 lantern []
setblock ~4 ~6 ~5 mushroom_stem []
setblock ~4 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~4 ~-2 mushroom_stem []
fill ~-5 ~0 ~2 ~-5 ~4 ~2 mushroom_stem []
fill ~5 ~0 ~-2 ~5 ~4 ~-2 mushroom_stem []
fill ~5 ~0 ~2 ~5 ~4 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~5 ~0 ~-2 ~5 ~8 ~-2 mushroom_stem []
fill ~4 ~9 ~-3 ~6 ~9 ~-1 red_mushroom_block []
setblock ~5 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 13
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-3 ~1 ~4 slot.container 9 mycelium 11
replaceitem block ~-3 ~1 ~4 slot.container 10 red_mushroom 16
replaceitem block ~-3 ~1 ~4 slot.container 11 brown_mushroom 17
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~-3 ~1 ~4 loot "rsf/mushroom_island"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 16
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 16
replaceitem block ~3 ~1 ~4 slot.container 9 mycelium 9
replaceitem block ~3 ~1 ~4 slot.container 10 red_mushroom 14
replaceitem block ~3 ~1 ~4 slot.container 11 brown_mushroom 15
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 7
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
