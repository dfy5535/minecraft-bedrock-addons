# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3015/4224 | 主题内编号: b071/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·残破双子哨所遗迹 (mushroom_island_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 brown_mushroom_block [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 brown_mushroom_block []
fill ~2 ~1 ~-5 ~5 ~7 ~5 brown_mushroom_block []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mushroom_stem []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mycelium []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~6 ~0 ~-1 ~6 ~4 ~-1 mushroom_stem []
fill ~5 ~5 ~-2 ~7 ~5 ~0 red_mushroom_block []
setblock ~6 ~4 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 2 bone 13
replaceitem block ~4 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 4 string 13
replaceitem block ~4 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~4 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 12 bowl 7
replaceitem block ~4 ~1 ~4 slot.container 13 shroomlight 6
replaceitem block ~4 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
