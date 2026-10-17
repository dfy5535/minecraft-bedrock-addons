# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3045/4224 | 主题内编号: b101/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·L型驻军兵营军械所 (mushroom_island_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_mushroom_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 18
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 17
replaceitem block ~3 ~-3 ~4 slot.container 2 string 10
replaceitem block ~3 ~-3 ~4 slot.container 3 spider_eye 9
replaceitem block ~3 ~-3 ~4 slot.container 4 slime_ball 10
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 9 shroomlight 7
replaceitem block ~3 ~-3 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-3 ~4 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~-3 ~4 slot.container 12 mycelium 14
replaceitem block ~3 ~-3 ~4 slot.container 13 red_mushroom 12
replaceitem block ~3 ~-3 ~4 slot.container 14 brown_mushroom 13
loot insert ~3 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 quartz_block []
fill ~-5 ~1 ~0 ~5 ~5 ~6 red_mushroom_block []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mushroom_stem []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 brown_mushroom_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 shroomlight []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 red_mushroom_block []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~6 ~0 ~2 ~6 ~4 ~2 mushroom_stem []
fill ~5 ~5 ~1 ~7 ~5 ~3 red_mushroom_block []
setblock ~6 ~4 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 3
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 bowl 9
replaceitem block ~4 ~1 ~5 slot.container 13 shroomlight 8
replaceitem block ~4 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
