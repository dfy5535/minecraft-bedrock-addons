# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3063/4224 | 主题内编号: b119/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·半地下恒温洞穴苗圃 (mushroom_island_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 brown_mushroom_block [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 brown_mushroom_block [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 mushroom_stem []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 bone 18
replaceitem block ~-2 ~-4 ~4 slot.container 1 gunpowder 17
replaceitem block ~-2 ~-4 ~4 slot.container 2 string 10
replaceitem block ~-2 ~-4 ~4 slot.container 3 spider_eye 9
replaceitem block ~-2 ~-4 ~4 slot.container 4 slime_ball 10
replaceitem block ~-2 ~-4 ~4 slot.container 5 ender_pearl 7
replaceitem block ~-2 ~-4 ~4 slot.container 9 golden_apple 7
replaceitem block ~-2 ~-4 ~4 slot.container 10 diamond 8
replaceitem block ~-2 ~-4 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-2 ~-4 ~4 slot.container 12 bowl 7
replaceitem block ~-2 ~-4 ~4 slot.container 13 shroomlight 6
replaceitem block ~-2 ~-4 ~4 slot.container 14 mushroom_stew 1
loot insert ~-2 ~-4 ~4 loot "rsf/mushroom_island"
loot insert ~-2 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 brown_mushroom_block []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mushroom_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mushroom_stem []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~4 ~-6 ~4 ~4 ~6 mushroom_stem []
fill ~-3 ~5 ~-5 ~3 ~6 ~5 glass []
fill ~-2 ~5 ~-4 ~2 ~5 ~4 air []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 cobblestone_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x9x5) ---
fill ~5 ~0 ~2 ~5 ~7 ~2 mushroom_stem []
fill ~4 ~8 ~1 ~6 ~8 ~3 red_mushroom_block []
setblock ~5 ~7 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 13
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 13
replaceitem block ~3 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~5 slot.container 9 shroomlight 8
replaceitem block ~3 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~5 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~1 ~5 slot.container 12 mycelium 8
replaceitem block ~3 ~1 ~5 slot.container 13 red_mushroom 13
replaceitem block ~3 ~1 ~5 slot.container 14 brown_mushroom 14
loot insert ~3 ~1 ~5 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
