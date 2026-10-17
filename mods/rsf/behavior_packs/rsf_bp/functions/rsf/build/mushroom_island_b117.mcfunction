# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3061/4224 | 主题内编号: b117/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·环柱生态标本采集馆 (mushroom_island_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_mushroom_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 18
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 17
replaceitem block ~3 ~-3 ~4 slot.container 2 string 10
replaceitem block ~3 ~-3 ~4 slot.container 3 spider_eye 9
replaceitem block ~3 ~-3 ~4 slot.container 4 slime_ball 10
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_ingot 13
replaceitem block ~3 ~-3 ~4 slot.container 10 bowl 12
replaceitem block ~3 ~-3 ~4 slot.container 11 shroomlight 4
replaceitem block ~3 ~-3 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~-3 ~4 slot.container 13 suspicious_stew 1
replaceitem block ~3 ~-3 ~4 slot.container 14 mycelium 11
loot insert ~3 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 red_mushroom_block []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 mushroom_stem []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 mushroom_stem []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 mushroom_stem []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 mushroom_stem []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 mushroom_stem []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 mushroom_stem []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 mushroom_stem []
fill ~1 ~1 ~6 ~1 ~5 ~6 mushroom_stem []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 mushroom_stem []
fill ~3 ~1 ~6 ~3 ~5 ~6 mushroom_stem []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 mushroom_stem []
fill ~5 ~1 ~6 ~5 ~5 ~6 mushroom_stem []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 mushroom_stem []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 mushroom_stem []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 mushroom_stem []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 mushroom_stem []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 mushroom_stem []
fill ~5 ~1 ~0 ~5 ~5 ~0 mushroom_stem []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 mushroom_stem []
fill ~5 ~1 ~2 ~5 ~5 ~2 mushroom_stem []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 mushroom_stem []
fill ~5 ~1 ~4 ~5 ~5 ~4 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 red_mushroom_block []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 mushroom_stem []
setblock ~-7 ~4 ~-8 shroomlight []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 mushroom_stem []
setblock ~-7 ~4 ~8 shroomlight []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 mushroom_stem []
setblock ~7 ~4 ~-8 shroomlight []
fill ~7 ~0 ~8 ~7 ~3 ~8 mushroom_stem []
setblock ~7 ~4 ~8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~0 ~6 ~5 ~0 mushroom_stem []
fill ~5 ~6 ~-1 ~7 ~6 ~1 red_mushroom_block []
setblock ~6 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 red_mushroom 14
replaceitem block ~4 ~1 ~5 slot.container 10 brown_mushroom 15
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 14 bowl 6
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
