# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3004/4224 | 主题内编号: b060/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·圆形穹顶万骨祠堂 (mushroom_island_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 gunpowder 17
replaceitem block ~0 ~-3 ~4 slot.container 1 string 10
replaceitem block ~0 ~-3 ~4 slot.container 2 spider_eye 9
replaceitem block ~0 ~-3 ~4 slot.container 3 slime_ball 10
replaceitem block ~0 ~-3 ~4 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-3 ~4 slot.container 5 blaze_rod 6
replaceitem block ~0 ~-3 ~4 slot.container 9 brown_mushroom 12
replaceitem block ~0 ~-3 ~4 slot.container 10 golden_apple 3
replaceitem block ~0 ~-3 ~4 slot.container 11 diamond 4
replaceitem block ~0 ~-3 ~4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 13 bowl 10
replaceitem block ~0 ~-3 ~4 slot.container 14 shroomlight 9
loot insert ~0 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 16
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 blaze_rod 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 brown_mushroom 18
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 2
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 3
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 bowl 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 shroomlight 8
loot insert ~0 ~-3 ~-4 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

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

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~-3 ~6 ~8 ~-3 mushroom_stem []
fill ~5 ~9 ~-4 ~7 ~9 ~-2 red_mushroom_block []
setblock ~6 ~8 ~-2 shroomlight []

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
replaceitem block ~-4 ~1 ~5 slot.container 9 mycelium 9
replaceitem block ~-4 ~1 ~5 slot.container 10 red_mushroom 14
replaceitem block ~-4 ~1 ~5 slot.container 11 brown_mushroom 15
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 13 diamond 7
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 14
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 16
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 16
replaceitem block ~4 ~1 ~5 slot.container 9 mycelium 14
replaceitem block ~4 ~1 ~5 slot.container 10 red_mushroom 12
replaceitem block ~4 ~1 ~5 slot.container 11 brown_mushroom 13
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
