# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3035/4224 | 主题内编号: b091/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·跨水拱桥水神小祠 (mushroom_island_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 brown_mushroom_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mushroom_stem []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 slime_ball 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 ender_pearl 7
replaceitem block ~-3 ~-3 ~2 slot.container 2 blaze_rod 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 18
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 suspicious_stew 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 mycelium 14
replaceitem block ~-3 ~-3 ~2 slot.container 11 red_mushroom 12
replaceitem block ~-3 ~-3 ~2 slot.container 12 brown_mushroom 13
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 4
replaceitem block ~-3 ~-3 ~2 slot.container 14 diamond 5
loot insert ~-3 ~-3 ~2 loot "rsf/mushroom_island"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 brown_mushroom_block []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_brick_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 stone_bricks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_brick_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mushroom_stem []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~6 ~0 ~1 ~6 ~4 ~1 mushroom_stem []
fill ~5 ~5 ~0 ~7 ~5 ~2 red_mushroom_block []
setblock ~6 ~4 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 13
replaceitem block ~4 ~1 ~3 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 13
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~3 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 10 diamond 7
replaceitem block ~4 ~1 ~3 slot.container 11 iron_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 12 bowl 6
replaceitem block ~4 ~1 ~3 slot.container 13 shroomlight 5
replaceitem block ~4 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~3 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
