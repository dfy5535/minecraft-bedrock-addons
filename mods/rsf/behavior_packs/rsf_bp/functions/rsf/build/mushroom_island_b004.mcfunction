# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2948/4224 | 主题内编号: b004/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子火盆高台神坛 (mushroom_island_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 red_mushroom_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 mushroom_stem []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 mushroom_stem []
setblock ~-6 ~9 ~5 lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 mushroom_stem []
setblock ~6 ~9 ~-5 lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 mushroom_stem []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_mushroom_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 mushroom_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~0 ~2 ~7 ~7 ~2 mushroom_stem []
fill ~6 ~8 ~1 ~8 ~8 ~3 red_mushroom_block []
setblock ~7 ~7 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 9 brown_mushroom 13
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 13 bowl 11
replaceitem block ~-5 ~1 ~4 slot.container 14 shroomlight 10
loot insert ~-5 ~1 ~4 loot "rsf/mushroom_island"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 16
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 16
replaceitem block ~5 ~1 ~4 slot.container 9 brown_mushroom 18
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 13 bowl 9
replaceitem block ~5 ~1 ~4 slot.container 14 shroomlight 8
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
