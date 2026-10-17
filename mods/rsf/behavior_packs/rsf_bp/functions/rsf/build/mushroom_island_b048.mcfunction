# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2992/4224 | 主题内编号: b048/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·阶梯王座巅峰试炼台 (mushroom_island_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mycelium []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 red_mushroom_block []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 diamond_block []
setblock ~0 ~-7 ~0 shroomlight []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 slime_ball 10
replaceitem block ~4 ~-4 ~0 slot.container 1 ender_pearl 7
replaceitem block ~4 ~-4 ~0 slot.container 2 blaze_rod 6
replaceitem block ~4 ~-4 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~0 slot.container 4 bone 18
replaceitem block ~4 ~-4 ~0 slot.container 5 gunpowder 17
replaceitem block ~4 ~-4 ~0 slot.container 9 red_mushroom 13
replaceitem block ~4 ~-4 ~0 slot.container 10 brown_mushroom 14
replaceitem block ~4 ~-4 ~0 slot.container 11 golden_apple 5
replaceitem block ~4 ~-4 ~0 slot.container 12 diamond 6
replaceitem block ~4 ~-4 ~0 slot.container 13 iron_ingot 13
replaceitem block ~4 ~-4 ~0 slot.container 14 bowl 12
loot insert ~4 ~-4 ~0 loot "rsf/mushroom_island"
loot insert ~4 ~-4 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 red_mushroom_block []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 quartz_block []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 mushroom_stem []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 mushroom_stem []
setblock ~-6 ~9 ~7 lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 mushroom_stem []
setblock ~6 ~9 ~-7 lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 mushroom_stem []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 mushroom_stem []
setblock ~0 ~4 ~-9 diamond_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 mushroom_stem []
setblock ~0 ~4 ~9 diamond_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 mushroom_stem []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 mushroom_stem []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-3 ~7 ~6 ~-3 mushroom_stem []
fill ~6 ~7 ~-4 ~8 ~7 ~-2 red_mushroom_block []
setblock ~7 ~6 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~6 slot.container 5 slime_ball 13
replaceitem block ~-5 ~1 ~6 slot.container 9 diamond 5
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 11 bowl 11
replaceitem block ~-5 ~1 ~6 slot.container 12 shroomlight 10
replaceitem block ~-5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 4
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 3
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 11 bowl 9
replaceitem block ~5 ~1 ~6 slot.container 12 shroomlight 8
replaceitem block ~5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
