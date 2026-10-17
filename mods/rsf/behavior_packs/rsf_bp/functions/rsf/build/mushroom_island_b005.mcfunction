# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2949/4224 | 主题内编号: b005/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·下沉圣泉秘宝祭坛 (mushroom_island_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 quartz_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 red_mushroom_block []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 blaze_rod 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 gunpowder 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 spider_eye 9
replaceitem block ~-2 ~-4 ~3 slot.container 9 red_mushroom 15
replaceitem block ~-2 ~-4 ~3 slot.container 10 brown_mushroom 16
replaceitem block ~-2 ~-4 ~3 slot.container 11 golden_apple 7
replaceitem block ~-2 ~-4 ~3 slot.container 12 diamond 8
replaceitem block ~-2 ~-4 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 bowl 7
loot insert ~-2 ~-4 ~3 loot "rsf/mushroom_island"
loot insert ~-2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 red_mushroom_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 red_mushroom_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-6 ~-5 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-6 ~5 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~-4 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-5 ~4 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-5 ~3 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~5 ~0 ~-2 ~5 ~8 ~-2 mushroom_stem []
fill ~4 ~9 ~-3 ~6 ~9 ~-1 red_mushroom_block []
setblock ~5 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 13
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 10 bowl 9
replaceitem block ~3 ~1 ~4 slot.container 11 shroomlight 8
replaceitem block ~3 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 13 suspicious_stew 1
replaceitem block ~3 ~1 ~4 slot.container 14 mycelium 8
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
