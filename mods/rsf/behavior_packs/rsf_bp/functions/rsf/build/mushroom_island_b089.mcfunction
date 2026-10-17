# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3033/4224 | 主题内编号: b089/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·四柱挑檐祈愿凉亭 (mushroom_island_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 9x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 brown_mushroom_block []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~6 ~4 quartz_block []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 mushroom_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 mushroom_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 mushroom_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 mushroom_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 quartz_slab []
fill ~-2 ~7 ~-3 ~2 ~8 ~3 red_mushroom_block []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 stone_brick_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 mushroom_stem []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 mushroom_stem []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 mushroom_stem []
fill ~4 ~0 ~2 ~4 ~7 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 4x7x5) ---
fill ~4 ~0 ~-1 ~4 ~7 ~-1 mushroom_stem []
fill ~3 ~8 ~-2 ~5 ~8 ~0 red_mushroom_block []
setblock ~4 ~7 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 13
replaceitem block ~2 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 13
replaceitem block ~2 ~1 ~3 slot.container 3 spider_eye 12
replaceitem block ~2 ~1 ~3 slot.container 4 slime_ball 13
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~2 ~1 ~3 slot.container 9 shroomlight 6
replaceitem block ~2 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 11 suspicious_stew 1
replaceitem block ~2 ~1 ~3 slot.container 12 mycelium 13
replaceitem block ~2 ~1 ~3 slot.container 13 red_mushroom 18
replaceitem block ~2 ~1 ~3 slot.container 14 brown_mushroom 12
loot insert ~2 ~1 ~3 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
