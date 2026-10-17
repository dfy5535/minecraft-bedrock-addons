# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2971/4224 | 主题内编号: b027/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子连廊警戒塔楼 (mushroom_island_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 brown_mushroom_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 brown_mushroom_block []
fill ~2 ~1 ~-4 ~5 ~9 ~4 brown_mushroom_block []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mushroom_stem []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mushroom_stem []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cobblestone_wall []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~-5 ~9 ~-4 mushroom_stem []
setblock ~-5 ~10 ~-4 shroomlight []
setblock ~-5 ~9 ~4 mushroom_stem []
setblock ~-5 ~10 ~4 shroomlight []
setblock ~5 ~9 ~-4 mushroom_stem []
setblock ~5 ~10 ~-4 shroomlight []
setblock ~5 ~9 ~4 mushroom_stem []
setblock ~5 ~10 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 mushroom_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 mushroom_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 mushroom_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~6 ~0 ~1 ~6 ~5 ~1 mushroom_stem []
fill ~5 ~6 ~0 ~7 ~6 ~2 red_mushroom_block []
setblock ~6 ~5 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 shroomlight []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 13
replaceitem block ~4 ~1 ~3 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 13
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~3 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 red_mushroom 15
replaceitem block ~4 ~1 ~3 slot.container 10 brown_mushroom 16
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 12 diamond 8
replaceitem block ~4 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 14 bowl 7
loot insert ~4 ~1 ~3 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
