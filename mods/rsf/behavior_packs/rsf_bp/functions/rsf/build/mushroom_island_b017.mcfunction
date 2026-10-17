# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2961/4224 | 主题内编号: b017/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双坡顶皇家藏宝室 (mushroom_island_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 brown_mushroom_block []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 shroomlight []
setblock ~3 ~-6 ~4 shroomlight []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 10
replaceitem block ~0 ~-4 ~4 slot.container 1 spider_eye 9
replaceitem block ~0 ~-4 ~4 slot.container 2 slime_ball 10
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 4 blaze_rod 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-4 ~4 slot.container 10 bowl 12
replaceitem block ~0 ~-4 ~4 slot.container 11 shroomlight 4
replaceitem block ~0 ~-4 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-4 ~4 slot.container 13 suspicious_stew 1
replaceitem block ~0 ~-4 ~4 slot.container 14 mycelium 11
loot insert ~0 ~-4 ~4 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"

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

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 quartz_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 quartz_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 quartz_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 quartz_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 quartz_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_mushroom_block []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 mushroom_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 mushroom_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 quartz_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x9x3) ---
fill ~5 ~0 ~2 ~5 ~5 ~2 mushroom_stem []
fill ~4 ~6 ~1 ~6 ~6 ~3 red_mushroom_block []
setblock ~5 ~5 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 13
replaceitem block ~3 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 2 string 13
replaceitem block ~3 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~5 slot.container 4 slime_ball 13
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~5 slot.container 9 red_mushroom 12
replaceitem block ~3 ~1 ~5 slot.container 10 brown_mushroom 13
replaceitem block ~3 ~1 ~5 slot.container 11 golden_apple 4
replaceitem block ~3 ~1 ~5 slot.container 12 diamond 5
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 14 bowl 11
loot insert ~3 ~1 ~5 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
