# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3047/4224 | 主题内编号: b103/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十字全向防御方堡 (mushroom_island_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
setblock ~0 ~0 ~0 gold_block []

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
fill ~-2 ~1 ~-6 ~2 ~6 ~6 brown_mushroom_block []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 brown_mushroom_block []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mushroom_stem []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 mushroom_stem []
setblock ~-5 ~8 ~-6 shroomlight []
setblock ~-5 ~7 ~6 mushroom_stem []
setblock ~-5 ~8 ~6 shroomlight []
setblock ~5 ~7 ~-6 mushroom_stem []
setblock ~5 ~8 ~-6 shroomlight []
setblock ~5 ~7 ~6 mushroom_stem []
setblock ~5 ~8 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 mushroom_stem []
setblock ~-7 ~4 ~-8 shroomlight []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 mushroom_stem []
setblock ~-7 ~4 ~8 shroomlight []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 mushroom_stem []
setblock ~7 ~4 ~-8 shroomlight []
fill ~7 ~0 ~8 ~7 ~3 ~8 mushroom_stem []
setblock ~7 ~4 ~8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~0 ~-2 ~6 ~6 ~-2 mushroom_stem []
fill ~5 ~7 ~-3 ~7 ~7 ~-1 red_mushroom_block []
setblock ~6 ~6 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 10 mycelium 11
replaceitem block ~4 ~1 ~5 slot.container 11 red_mushroom 16
replaceitem block ~4 ~1 ~5 slot.container 12 brown_mushroom 17
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 2
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
