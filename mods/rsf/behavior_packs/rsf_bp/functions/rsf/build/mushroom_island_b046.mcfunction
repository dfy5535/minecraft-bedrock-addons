# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2990/4224 | 主题内编号: b046/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·要塞校场比武演武台 (mushroom_island_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 brown_mushroom_block []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~-2 ~5 slot.container 1 string 10
replaceitem block ~4 ~-2 ~5 slot.container 2 spider_eye 9
replaceitem block ~4 ~-2 ~5 slot.container 3 slime_ball 10
replaceitem block ~4 ~-2 ~5 slot.container 4 ender_pearl 7
replaceitem block ~4 ~-2 ~5 slot.container 5 blaze_rod 6
replaceitem block ~4 ~-2 ~5 slot.container 9 brown_mushroom 16
replaceitem block ~4 ~-2 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~-2 ~5 slot.container 11 diamond 8
replaceitem block ~4 ~-2 ~5 slot.container 12 iron_ingot 8
replaceitem block ~4 ~-2 ~5 slot.container 13 bowl 7
replaceitem block ~4 ~-2 ~5 slot.container 14 shroomlight 6
loot insert ~4 ~-2 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~-2 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 red_mushroom_block []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~7 ~-6 mushroom_stem []
setblock ~-6 ~8 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~7 ~7 mushroom_stem []
setblock ~-6 ~8 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~7 ~-6 mushroom_stem []
setblock ~5 ~8 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~7 ~7 mushroom_stem []
setblock ~5 ~8 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mushroom_stem []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 brown_mushroom_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 shroomlight []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 brown_mushroom_block []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~2 ~7 ~4 ~2 mushroom_stem []
fill ~6 ~5 ~1 ~8 ~5 ~3 red_mushroom_block []
setblock ~7 ~4 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~6 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 13
replaceitem block ~-5 ~1 ~6 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 10 suspicious_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 11 mycelium 11
replaceitem block ~-5 ~1 ~6 slot.container 12 red_mushroom 16
replaceitem block ~-5 ~1 ~6 slot.container 13 brown_mushroom 17
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 bone 16
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 16
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 9 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 10 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 11 mycelium 9
replaceitem block ~5 ~1 ~6 slot.container 12 red_mushroom 14
replaceitem block ~5 ~1 ~6 slot.container 13 brown_mushroom 15
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
