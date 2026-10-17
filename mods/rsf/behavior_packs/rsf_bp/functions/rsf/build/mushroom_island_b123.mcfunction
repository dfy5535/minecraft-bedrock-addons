# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3067/4224 | 主题内编号: b123/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·四角塔楼领主城堡复合体 (mushroom_island_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 brown_mushroom_block []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 shroomlight []
setblock ~4 ~-6 ~-5 shroomlight []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 slime_ball 10
replaceitem block ~4 ~-4 ~5 slot.container 1 ender_pearl 7
replaceitem block ~4 ~-4 ~5 slot.container 2 blaze_rod 6
replaceitem block ~4 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~5 slot.container 4 bone 18
replaceitem block ~4 ~-4 ~5 slot.container 5 gunpowder 17
replaceitem block ~4 ~-4 ~5 slot.container 9 red_mushroom 15
replaceitem block ~4 ~-4 ~5 slot.container 10 brown_mushroom 16
replaceitem block ~4 ~-4 ~5 slot.container 11 golden_apple 7
replaceitem block ~4 ~-4 ~5 slot.container 12 diamond 8
replaceitem block ~4 ~-4 ~5 slot.container 13 iron_ingot 8
replaceitem block ~4 ~-4 ~5 slot.container 14 bowl 7
loot insert ~4 ~-4 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 brown_mushroom_block []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 mushroom_stem []
setblock ~-6 ~10 ~-7 shroomlight []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 mushroom_stem []
setblock ~-6 ~10 ~6 shroomlight []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 mushroom_stem []
setblock ~5 ~10 ~-7 shroomlight []
fill ~5 ~1 ~6 ~6 ~9 ~7 mushroom_stem []
setblock ~5 ~10 ~6 shroomlight []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mushroom_stem []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 cobblestone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 mushroom_stem []
setblock ~-6 ~9 ~-7 shroomlight []
setblock ~-6 ~8 ~7 mushroom_stem []
setblock ~-6 ~9 ~7 shroomlight []
setblock ~6 ~8 ~-7 mushroom_stem []
setblock ~6 ~9 ~-7 shroomlight []
setblock ~6 ~8 ~7 mushroom_stem []
setblock ~6 ~9 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_mushroom_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~2 ~7 ~6 ~2 mushroom_stem []
fill ~6 ~7 ~1 ~8 ~7 ~3 red_mushroom_block []
setblock ~7 ~6 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 10 mycelium 10
replaceitem block ~5 ~1 ~6 slot.container 11 red_mushroom 15
replaceitem block ~5 ~1 ~6 slot.container 12 brown_mushroom 16
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 14 diamond 8
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
