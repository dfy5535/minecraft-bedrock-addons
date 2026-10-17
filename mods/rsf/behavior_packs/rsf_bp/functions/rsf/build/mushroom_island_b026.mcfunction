# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2970/4224 | 主题内编号: b026/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·尖顶信标引航高塔 (mushroom_island_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_mushroom_block [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_mushroom_block [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 brown_mushroom_block []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 ender_pearl 7
replaceitem block ~1 ~-2 ~2 slot.container 1 blaze_rod 6
replaceitem block ~1 ~-2 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~1 ~-2 ~2 slot.container 3 bone 18
replaceitem block ~1 ~-2 ~2 slot.container 4 gunpowder 17
replaceitem block ~1 ~-2 ~2 slot.container 5 string 10
replaceitem block ~1 ~-2 ~2 slot.container 9 brown_mushroom 17
replaceitem block ~1 ~-2 ~2 slot.container 10 golden_apple 8
replaceitem block ~1 ~-2 ~2 slot.container 11 diamond 2
replaceitem block ~1 ~-2 ~2 slot.container 12 iron_ingot 9
replaceitem block ~1 ~-2 ~2 slot.container 13 bowl 8
replaceitem block ~1 ~-2 ~2 slot.container 14 shroomlight 7
loot insert ~1 ~-2 ~2 loot "rsf/mushroom_island"
loot insert ~1 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 red_mushroom_block []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 air []
fill ~3 ~1 ~4 ~3 ~11 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~10 ~-3 mushroom_stem []
fill ~2 ~1 ~-3 ~2 ~10 ~-3 mushroom_stem []
fill ~-2 ~1 ~3 ~-2 ~10 ~3 mushroom_stem []
fill ~2 ~1 ~3 ~2 ~10 ~3 mushroom_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mushroom_stem []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 red_mushroom_block []
fill ~0 ~16 ~0 ~0 ~16 ~0 shroomlight []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 mushroom_stem []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 mushroom_stem []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 mushroom_stem []
fill ~4 ~0 ~2 ~4 ~9 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 4x7x2) ---
fill ~4 ~0 ~0 ~4 ~4 ~0 mushroom_stem []
fill ~3 ~5 ~-1 ~5 ~5 ~1 red_mushroom_block []
setblock ~4 ~4 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-2 ~1 ~3 slot.container 1 string 13
replaceitem block ~-2 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-2 ~1 ~3 slot.container 3 slime_ball 13
replaceitem block ~-2 ~1 ~3 slot.container 4 ender_pearl 10
replaceitem block ~-2 ~1 ~3 slot.container 5 blaze_rod 9
replaceitem block ~-2 ~1 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~-2 ~1 ~3 slot.container 10 suspicious_stew 1
replaceitem block ~-2 ~1 ~3 slot.container 11 mycelium 12
replaceitem block ~-2 ~1 ~3 slot.container 12 red_mushroom 17
replaceitem block ~-2 ~1 ~3 slot.container 13 brown_mushroom 18
replaceitem block ~-2 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~-2 ~1 ~3 loot "rsf/mushroom_island"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 spider_eye 15
replaceitem block ~2 ~1 ~3 slot.container 1 slime_ball 8
replaceitem block ~2 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~2 ~1 ~3 slot.container 3 blaze_rod 4
replaceitem block ~2 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 5 bone 16
replaceitem block ~2 ~1 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 10 suspicious_stew 1
replaceitem block ~2 ~1 ~3 slot.container 11 mycelium 10
replaceitem block ~2 ~1 ~3 slot.container 12 red_mushroom 15
replaceitem block ~2 ~1 ~3 slot.container 13 brown_mushroom 16
replaceitem block ~2 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~2 ~1 ~3 loot "rsf/mushroom_island"
loot insert ~2 ~1 ~3 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
