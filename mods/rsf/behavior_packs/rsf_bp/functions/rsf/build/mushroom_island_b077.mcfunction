# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3021/4224 | 主题内编号: b077/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子鸟居图腾神道 (mushroom_island_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 quartz_block [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 quartz_block [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 quartz_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 brown_mushroom_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 quartz_block []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mushroom_stem []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 brown_mushroom_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_mushroom_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 shroomlight []
setblock ~2 ~4 ~-8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~0 ~6 ~5 ~0 mushroom_stem []
fill ~5 ~6 ~-1 ~7 ~6 ~1 red_mushroom_block []
setblock ~6 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 bone 13
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 9 red_mushroom 16
replaceitem block ~4 ~1 ~4 slot.container 10 brown_mushroom 17
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~4 ~1 ~4 slot.container 12 diamond 2
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 14 bowl 8
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
