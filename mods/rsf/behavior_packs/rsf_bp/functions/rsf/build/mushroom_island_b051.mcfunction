# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2995/4224 | 主题内编号: b051/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·带哨塔围栏探险营地 (mushroom_island_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 brown_mushroom_block []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mycelium []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mushroom_stem []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 mushroom_stem []
setblock ~-5 ~8 ~-6 shroomlight []
setblock ~-5 ~7 ~6 mushroom_stem []
setblock ~-5 ~8 ~6 shroomlight []
setblock ~5 ~7 ~-6 mushroom_stem []
setblock ~5 ~8 ~-6 shroomlight []
setblock ~5 ~7 ~6 mushroom_stem []
setblock ~5 ~8 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~0 ~6 ~4 ~0 mushroom_stem []
fill ~5 ~5 ~-1 ~7 ~5 ~1 red_mushroom_block []
setblock ~6 ~4 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 13
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 2
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 bowl 8
replaceitem block ~4 ~1 ~5 slot.container 13 shroomlight 7
replaceitem block ~4 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
