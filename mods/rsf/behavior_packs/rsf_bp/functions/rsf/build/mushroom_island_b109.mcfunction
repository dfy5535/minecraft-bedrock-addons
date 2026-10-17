# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3053/4224 | 主题内编号: b109/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·环柱能量矩阵奥术厅 (mushroom_island_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
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
replaceitem block ~3 ~-3 ~4 slot.container 9 red_mushroom 16
replaceitem block ~3 ~-3 ~4 slot.container 10 brown_mushroom 17
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 8
replaceitem block ~3 ~-3 ~4 slot.container 12 diamond 2
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 14 bowl 8
loot insert ~3 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 red_mushroom_block []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 mushroom_stem []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 mushroom_stem []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 mushroom_stem []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 mushroom_stem []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 mushroom_stem []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 mushroom_stem []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 mushroom_stem []
fill ~1 ~1 ~6 ~1 ~6 ~6 mushroom_stem []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 mushroom_stem []
fill ~3 ~1 ~6 ~3 ~6 ~6 mushroom_stem []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 mushroom_stem []
fill ~5 ~1 ~6 ~5 ~6 ~6 mushroom_stem []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 mushroom_stem []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 mushroom_stem []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 mushroom_stem []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 mushroom_stem []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 mushroom_stem []
fill ~5 ~1 ~0 ~5 ~6 ~0 mushroom_stem []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 mushroom_stem []
fill ~5 ~1 ~2 ~5 ~6 ~2 mushroom_stem []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 mushroom_stem []
fill ~5 ~1 ~4 ~5 ~6 ~4 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 red_mushroom_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 quartz_block []
fill ~0 ~13 ~0 ~0 ~13 ~0 diamond_block []
setblock ~0 ~14 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mushroom_stem []
setblock ~0 ~4 ~-8 shroomlight []
setblock ~0 ~5 ~-8 shroomlight []
fill ~0 ~0 ~8 ~0 ~3 ~8 mushroom_stem []
setblock ~0 ~4 ~8 shroomlight []
setblock ~0 ~5 ~8 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mushroom_stem []
setblock ~-7 ~4 ~0 shroomlight []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 mushroom_stem []
setblock ~7 ~4 ~0 shroomlight []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~6 ~0 ~-2 ~6 ~7 ~-2 mushroom_stem []
fill ~5 ~8 ~-3 ~7 ~8 ~-1 red_mushroom_block []
setblock ~6 ~7 ~-1 shroomlight []

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
replaceitem block ~4 ~1 ~5 slot.container 9 shroomlight 5
replaceitem block ~4 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 12 mycelium 12
replaceitem block ~4 ~1 ~5 slot.container 13 red_mushroom 17
replaceitem block ~4 ~1 ~5 slot.container 14 brown_mushroom 18
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
