# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2969/4224 | 主题内编号: b025/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·雉堞女墙四方哨塔 (mushroom_island_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 brown_mushroom_block []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 mushroom_stem []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 mushroom_stem []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 mushroom_stem []
fill ~3 ~1 ~4 ~3 ~9 ~4 mushroom_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~9 ~-4 ~3 ~9 ~4 red_mushroom_block []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 cobblestone_wall []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~-3 ~10 ~-4 mushroom_stem []
setblock ~-3 ~11 ~-4 shroomlight []
setblock ~-3 ~10 ~4 mushroom_stem []
setblock ~-3 ~11 ~4 shroomlight []
setblock ~3 ~10 ~-4 mushroom_stem []
setblock ~3 ~11 ~-4 shroomlight []
setblock ~3 ~10 ~4 mushroom_stem []
setblock ~3 ~11 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 red_mushroom_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 mushroom_stem []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 mushroom_stem []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 quartz_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 4x6x6) ---
fill ~4 ~0 ~-1 ~4 ~8 ~-1 mushroom_stem []
fill ~3 ~9 ~-2 ~5 ~9 ~0 red_mushroom_block []
setblock ~4 ~8 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 13
replaceitem block ~2 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 13
replaceitem block ~2 ~1 ~3 slot.container 3 spider_eye 12
replaceitem block ~2 ~1 ~3 slot.container 4 slime_ball 13
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~2 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 10 bowl 8
replaceitem block ~2 ~1 ~3 slot.container 11 shroomlight 7
replaceitem block ~2 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 13 suspicious_stew 1
replaceitem block ~2 ~1 ~3 slot.container 14 mycelium 14
loot insert ~2 ~1 ~3 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0
