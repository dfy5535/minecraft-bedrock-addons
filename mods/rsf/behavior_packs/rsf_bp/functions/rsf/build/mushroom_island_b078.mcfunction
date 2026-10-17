# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3022/4224 | 主题内编号: b078/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·下沉祭池图腾柱群 (mushroom_island_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mushroom_stem []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 1 bone 18
replaceitem block ~-3 ~-3 ~4 slot.container 2 gunpowder 17
replaceitem block ~-3 ~-3 ~4 slot.container 3 string 10
replaceitem block ~-3 ~-3 ~4 slot.container 4 spider_eye 9
replaceitem block ~-3 ~-3 ~4 slot.container 5 slime_ball 10
replaceitem block ~-3 ~-3 ~4 slot.container 9 mycelium 14
replaceitem block ~-3 ~-3 ~4 slot.container 10 red_mushroom 12
replaceitem block ~-3 ~-3 ~4 slot.container 11 brown_mushroom 13
replaceitem block ~-3 ~-3 ~4 slot.container 12 golden_apple 4
replaceitem block ~-3 ~-3 ~4 slot.container 13 diamond 5
replaceitem block ~-3 ~-3 ~4 slot.container 14 iron_ingot 12
loot insert ~-3 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~-3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 red_mushroom_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mushroom_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mushroom_stem []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-6 ~-5 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-6 ~5 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~-4 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-5 ~4 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-5 ~3 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 mushroom_stem []
setblock ~-7 ~4 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 mushroom_stem []
setblock ~-7 ~4 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 mushroom_stem []
setblock ~7 ~4 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~3 ~8 mushroom_stem []
setblock ~7 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~-3 ~6 ~6 ~-3 mushroom_stem []
fill ~5 ~7 ~-4 ~7 ~7 ~-2 red_mushroom_block []
setblock ~6 ~6 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 13
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 7
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 11 bowl 6
replaceitem block ~-4 ~1 ~5 slot.container 12 shroomlight 5
replaceitem block ~-4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 16
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 8
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 bowl 11
replaceitem block ~4 ~1 ~5 slot.container 12 shroomlight 10
replaceitem block ~4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
