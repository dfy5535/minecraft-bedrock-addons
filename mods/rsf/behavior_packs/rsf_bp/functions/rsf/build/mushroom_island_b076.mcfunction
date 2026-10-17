# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3020/4224 | 主题内编号: b076/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·阶梯高台图腾战阵 (mushroom_island_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~-3 ~-4 ~-4 lantern []
setblock ~3 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 spider_eye 9
replaceitem block ~0 ~-2 ~4 slot.container 1 slime_ball 10
replaceitem block ~0 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-2 ~4 slot.container 3 blaze_rod 6
replaceitem block ~0 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 5 bone 18
replaceitem block ~0 ~-2 ~4 slot.container 9 mycelium 8
replaceitem block ~0 ~-2 ~4 slot.container 10 red_mushroom 13
replaceitem block ~0 ~-2 ~4 slot.container 11 brown_mushroom 14
replaceitem block ~0 ~-2 ~4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-2 ~4 slot.container 13 diamond 6
replaceitem block ~0 ~-2 ~4 slot.container 14 iron_ingot 13
loot insert ~0 ~-2 ~4 loot "rsf/mushroom_island"
loot insert ~0 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 red_mushroom_block []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 red_mushroom_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 stone_bricks []
fill ~0 ~13 ~0 ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mushroom_stem []
setblock ~0 ~4 ~-8 diamond_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 mushroom_stem []
setblock ~0 ~4 ~8 diamond_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mushroom_stem []
setblock ~-7 ~4 ~0 diamond_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 mushroom_stem []
setblock ~7 ~4 ~0 diamond_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~6 ~0 ~1 ~6 ~4 ~1 mushroom_stem []
fill ~5 ~5 ~0 ~7 ~5 ~2 red_mushroom_block []
setblock ~6 ~4 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~5 slot.container 1 slime_ball 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 11 mycelium 13
replaceitem block ~-4 ~1 ~5 slot.container 12 red_mushroom 18
replaceitem block ~-4 ~1 ~5 slot.container 13 brown_mushroom 12
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 16
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 16
replaceitem block ~4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 mycelium 11
replaceitem block ~4 ~1 ~5 slot.container 12 red_mushroom 16
replaceitem block ~4 ~1 ~5 slot.container 13 brown_mushroom 17
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
