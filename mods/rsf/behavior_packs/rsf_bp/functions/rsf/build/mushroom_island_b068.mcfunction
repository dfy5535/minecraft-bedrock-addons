# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3012/4224 | 主题内编号: b068/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·断裂凯旋高架拱廊 (mushroom_island_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mycelium []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 mushroom_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 mushroom_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 mushroom_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~1 ~7 ~6 ~1 mushroom_stem []
fill ~6 ~7 ~0 ~8 ~7 ~2 red_mushroom_block []
setblock ~7 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 11 bowl 10
replaceitem block ~-5 ~1 ~4 slot.container 12 shroomlight 9
replaceitem block ~-5 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 14 suspicious_stew 1
loot insert ~-5 ~1 ~4 loot "rsf/mushroom_island"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 16
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 16
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 2
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 11 bowl 8
replaceitem block ~5 ~1 ~4 slot.container 12 shroomlight 7
replaceitem block ~5 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~5 ~1 ~4 slot.container 14 suspicious_stew 1
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
