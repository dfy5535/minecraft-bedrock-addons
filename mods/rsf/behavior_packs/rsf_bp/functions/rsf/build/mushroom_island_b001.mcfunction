# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2945/4224 | 主题内编号: b001/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·三层阶梯圣火祭坛 (mushroom_island_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_mushroom_block []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 slime_ball 10
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~3 slot.container 2 blaze_rod 6
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 4 bone 18
replaceitem block ~2 ~-3 ~3 slot.container 5 gunpowder 17
replaceitem block ~2 ~-3 ~3 slot.container 9 shroomlight 5
replaceitem block ~2 ~-3 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~-3 ~3 slot.container 11 suspicious_stew 1
replaceitem block ~2 ~-3 ~3 slot.container 12 mycelium 12
replaceitem block ~2 ~-3 ~3 slot.container 13 red_mushroom 17
replaceitem block ~2 ~-3 ~3 slot.container 14 brown_mushroom 18
loot insert ~2 ~-3 ~3 loot "rsf/mushroom_island"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 quartz_block []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 red_mushroom_block []
fill ~-2 ~5 ~-3 ~2 ~5 ~3 red_mushroom_block []
fill ~-2 ~1 ~-3 ~2 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 mushroom_stem []
setblock ~-4 ~8 ~-5 shroomlight []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 mushroom_stem []
setblock ~-4 ~8 ~5 shroomlight []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 mushroom_stem []
setblock ~4 ~8 ~-5 shroomlight []
fill ~4 ~5 ~5 ~4 ~7 ~5 mushroom_stem []
setblock ~4 ~8 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_mushroom_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~5 ~0 ~-1 ~5 ~4 ~-1 mushroom_stem []
fill ~4 ~5 ~-2 ~6 ~5 ~0 red_mushroom_block []
setblock ~5 ~4 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 13
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 4 slime_ball 13
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 12 bowl 7
replaceitem block ~3 ~1 ~4 slot.container 13 shroomlight 6
replaceitem block ~3 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
