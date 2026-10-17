# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3046/4224 | 主题内编号: b102/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子箭塔联防碉楼 (mushroom_island_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_mushroom_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_mushroom_block [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 red_mushroom_block []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 lantern []
setblock ~4 ~-4 ~-3 lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 18
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 17
replaceitem block ~4 ~-2 ~3 slot.container 3 string 10
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~-2 ~3 slot.container 5 slime_ball 10
replaceitem block ~4 ~-2 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~-2 ~3 slot.container 10 suspicious_stew 1
replaceitem block ~4 ~-2 ~3 slot.container 11 mycelium 13
replaceitem block ~4 ~-2 ~3 slot.container 12 red_mushroom 18
replaceitem block ~4 ~-2 ~3 slot.container 13 brown_mushroom 12
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 3
loot insert ~4 ~-2 ~3 loot "rsf/mushroom_island"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 red_mushroom_block []
fill ~2 ~1 ~-5 ~6 ~8 ~5 red_mushroom_block []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mushroom_stem []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mushroom_stem []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 mushroom_stem []
setblock ~-6 ~9 ~-5 lantern []
setblock ~-6 ~8 ~5 mushroom_stem []
setblock ~-6 ~9 ~5 lantern []
setblock ~6 ~8 ~-5 mushroom_stem []
setblock ~6 ~9 ~-5 lantern []
setblock ~6 ~8 ~5 mushroom_stem []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~0 ~7 ~5 ~0 mushroom_stem []
fill ~6 ~6 ~-1 ~8 ~6 ~1 red_mushroom_block []
setblock ~7 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 bowl 7
replaceitem block ~-5 ~1 ~4 slot.container 10 shroomlight 6
replaceitem block ~-5 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 13 mycelium 13
replaceitem block ~-5 ~1 ~4 slot.container 14 red_mushroom 18
loot insert ~-5 ~1 ~4 loot "rsf/mushroom_island"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 16
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 3 string 16
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 15
replaceitem block ~5 ~1 ~4 slot.container 5 slime_ball 8
replaceitem block ~5 ~1 ~4 slot.container 9 bowl 12
replaceitem block ~5 ~1 ~4 slot.container 10 shroomlight 4
replaceitem block ~5 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~5 ~1 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~5 ~1 ~4 slot.container 13 mycelium 11
replaceitem block ~5 ~1 ~4 slot.container 14 red_mushroom 16
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
