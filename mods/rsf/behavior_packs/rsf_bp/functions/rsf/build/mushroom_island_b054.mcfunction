# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2998/4224 | 主题内编号: b054/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·切石与伐木工匠棚屋 (mushroom_island_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_mushroom_block [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_mushroom_block [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~6 ~5 red_mushroom_block []
fill ~2 ~1 ~-5 ~5 ~6 ~5 red_mushroom_block []
fill ~-4 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 mushroom_stem []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mushroom_stem []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cobblestone_wall []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~-5 ~9 ~-4 mushroom_stem []
setblock ~-5 ~10 ~-4 shroomlight []
setblock ~-5 ~9 ~4 mushroom_stem []
setblock ~-5 ~10 ~4 shroomlight []
setblock ~5 ~9 ~-4 mushroom_stem []
setblock ~5 ~10 ~-4 shroomlight []
setblock ~5 ~9 ~4 mushroom_stem []
setblock ~5 ~10 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~2 ~6 ~7 ~2 mushroom_stem []
fill ~5 ~8 ~1 ~7 ~8 ~3 red_mushroom_block []
setblock ~6 ~7 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 string 13
replaceitem block ~-4 ~1 ~4 slot.container 9 brown_mushroom 14
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 13 bowl 12
replaceitem block ~-4 ~1 ~4 slot.container 14 shroomlight 4
loot insert ~-4 ~1 ~4 loot "rsf/mushroom_island"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 bone 16
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 string 16
replaceitem block ~4 ~1 ~4 slot.container 4 spider_eye 15
replaceitem block ~4 ~1 ~4 slot.container 5 slime_ball 8
replaceitem block ~4 ~1 ~4 slot.container 9 brown_mushroom 12
replaceitem block ~4 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~4 slot.container 11 diamond 4
replaceitem block ~4 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 13 bowl 10
replaceitem block ~4 ~1 ~4 slot.container 14 shroomlight 9
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
