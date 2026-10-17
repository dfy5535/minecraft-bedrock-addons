# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3003/4224 | 主题内编号: b059/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·阶梯金字塔法老墓室 (mushroom_island_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mushroom_stem []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 slime_ball 10
replaceitem block ~-3 ~-3 ~4 slot.container 1 ender_pearl 7
replaceitem block ~-3 ~-3 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 4 bone 18
replaceitem block ~-3 ~-3 ~4 slot.container 5 gunpowder 17
replaceitem block ~-3 ~-3 ~4 slot.container 9 red_mushroom 13
replaceitem block ~-3 ~-3 ~4 slot.container 10 brown_mushroom 14
replaceitem block ~-3 ~-3 ~4 slot.container 11 golden_apple 5
replaceitem block ~-3 ~-3 ~4 slot.container 12 diamond 6
replaceitem block ~-3 ~-3 ~4 slot.container 13 iron_ingot 13
replaceitem block ~-3 ~-3 ~4 slot.container 14 bowl 12
loot insert ~-3 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~-3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 brown_mushroom_block []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mushroom_stem []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mushroom_stem []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 mushroom_stem []
setblock ~-8 ~4 ~-9 shroomlight []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 mushroom_stem []
setblock ~-8 ~4 ~9 shroomlight []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 mushroom_stem []
setblock ~8 ~4 ~-9 shroomlight []
fill ~8 ~0 ~9 ~8 ~3 ~9 mushroom_stem []
setblock ~8 ~4 ~9 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~7 ~0 ~1 ~7 ~7 ~1 mushroom_stem []
fill ~6 ~8 ~0 ~8 ~8 ~2 red_mushroom_block []
setblock ~7 ~7 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 shroomlight 4
replaceitem block ~5 ~1 ~6 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 11 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 12 mycelium 11
replaceitem block ~5 ~1 ~6 slot.container 13 red_mushroom 16
replaceitem block ~5 ~1 ~6 slot.container 14 brown_mushroom 17
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
