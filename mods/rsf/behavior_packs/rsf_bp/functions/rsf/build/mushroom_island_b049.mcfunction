# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2993/4224 | 主题内编号: b049/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双坡顶林间猎人木屋 (mushroom_island_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log2
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 quartz_block [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 quartz_block [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 brown_mushroom_block []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 red_mushroom_block []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 slime_ball 10
replaceitem block ~2 ~-3 ~4 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~4 slot.container 2 blaze_rod 6
replaceitem block ~2 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~4 slot.container 4 bone 18
replaceitem block ~2 ~-3 ~4 slot.container 5 gunpowder 17
replaceitem block ~2 ~-3 ~4 slot.container 9 red_mushroom 12
replaceitem block ~2 ~-3 ~4 slot.container 10 brown_mushroom 13
replaceitem block ~2 ~-3 ~4 slot.container 11 golden_apple 4
replaceitem block ~2 ~-3 ~4 slot.container 12 diamond 5
replaceitem block ~2 ~-3 ~4 slot.container 13 iron_ingot 12
replaceitem block ~2 ~-3 ~4 slot.container 14 bowl 11
loot insert ~2 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~2 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 quartz_block []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 mushroom_stem []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 mushroom_stem []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 mushroom_stem []
fill ~4 ~1 ~6 ~4 ~5 ~6 mushroom_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 mushroom_stem []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~5 ~0 ~-2 ~5 ~7 ~-2 mushroom_stem []
fill ~4 ~8 ~-3 ~6 ~8 ~-1 red_mushroom_block []
setblock ~5 ~7 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 13
replaceitem block ~3 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 2 string 13
replaceitem block ~3 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~5 slot.container 4 slime_ball 13
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~5 slot.container 9 shroomlight 8
replaceitem block ~3 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~5 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~1 ~5 slot.container 12 mycelium 8
replaceitem block ~3 ~1 ~5 slot.container 13 red_mushroom 13
replaceitem block ~3 ~1 ~5 slot.container 14 brown_mushroom 14
loot insert ~3 ~1 ~5 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
