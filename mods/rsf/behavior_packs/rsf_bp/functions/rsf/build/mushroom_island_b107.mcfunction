# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3051/4224 | 主题内编号: b107/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·观星高塔与秘术地宫 (mushroom_island_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 brown_mushroom_block [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 brown_mushroom_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 gold_block []
setblock ~0 ~-7 ~0 shroomlight []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 string 10
replaceitem block ~2 ~-4 ~0 slot.container 1 spider_eye 9
replaceitem block ~2 ~-4 ~0 slot.container 2 slime_ball 10
replaceitem block ~2 ~-4 ~0 slot.container 3 ender_pearl 7
replaceitem block ~2 ~-4 ~0 slot.container 4 blaze_rod 6
replaceitem block ~2 ~-4 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-4 ~0 slot.container 9 shroomlight 8
replaceitem block ~2 ~-4 ~0 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~-4 ~0 slot.container 11 suspicious_stew 1
replaceitem block ~2 ~-4 ~0 slot.container 12 mycelium 8
replaceitem block ~2 ~-4 ~0 slot.container 13 red_mushroom 13
replaceitem block ~2 ~-4 ~0 slot.container 14 brown_mushroom 14
loot insert ~2 ~-4 ~0 loot "rsf/mushroom_island"
loot insert ~2 ~-4 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 brown_mushroom_block []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~8 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mushroom_stem []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 mushroom_stem []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 mushroom_stem []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 mushroom_stem []
fill ~5 ~0 ~2 ~5 ~7 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~5 ~0 ~0 ~5 ~5 ~0 mushroom_stem []
fill ~4 ~6 ~-1 ~6 ~6 ~1 red_mushroom_block []
setblock ~5 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 13
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 13
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 red_mushroom 18
replaceitem block ~3 ~1 ~4 slot.container 10 brown_mushroom 12
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 12 diamond 4
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 bowl 10
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
