# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3019/4224 | 主题内编号: b075/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·远古巨石环廊法阵 (mushroom_island_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 mushroom_stem []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 mushroom_stem []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 mushroom_stem []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 mushroom_stem []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 mushroom_stem []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 mushroom_stem []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 mushroom_stem []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 mushroom_stem []
fill ~0 ~1 ~7 ~0 ~5 ~7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 mushroom_stem []
fill ~2 ~1 ~7 ~2 ~5 ~7 mushroom_stem []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 mushroom_stem []
fill ~4 ~1 ~7 ~4 ~5 ~7 mushroom_stem []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 mushroom_stem []
fill ~6 ~1 ~7 ~6 ~5 ~7 mushroom_stem []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 mushroom_stem []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 mushroom_stem []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 mushroom_stem []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 mushroom_stem []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 mushroom_stem []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 mushroom_stem []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 mushroom_stem []
fill ~6 ~1 ~1 ~6 ~5 ~1 mushroom_stem []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 mushroom_stem []
fill ~6 ~1 ~3 ~6 ~5 ~3 mushroom_stem []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 mushroom_stem []
fill ~6 ~1 ~5 ~6 ~5 ~5 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 mushroom_stem []
setblock ~-6 ~9 ~-7 shroomlight []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 mushroom_stem []
setblock ~-6 ~9 ~7 shroomlight []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 mushroom_stem []
setblock ~6 ~9 ~-7 shroomlight []
fill ~6 ~6 ~7 ~6 ~8 ~7 mushroom_stem []
setblock ~6 ~9 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 mushroom_stem []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 shroomlight []
fill ~0 ~0 ~9 ~0 ~3 ~9 mushroom_stem []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 mushroom_stem []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 mushroom_stem []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~3 ~7 ~8 ~3 mushroom_stem []
fill ~6 ~9 ~2 ~8 ~9 ~4 red_mushroom_block []
setblock ~7 ~8 ~4 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 10 bowl 9
replaceitem block ~5 ~1 ~6 slot.container 11 shroomlight 8
replaceitem block ~5 ~1 ~6 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 13 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 mycelium 8
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
