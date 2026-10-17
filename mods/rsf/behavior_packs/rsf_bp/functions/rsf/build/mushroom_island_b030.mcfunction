# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2974/4224 | 主题内编号: b030/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双坡顶驻军卫戍塔 (mushroom_island_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 red_mushroom_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 lantern []
setblock ~2 ~-4 ~-3 lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 18
replaceitem block ~2 ~-2 ~3 slot.container 2 gunpowder 17
replaceitem block ~2 ~-2 ~3 slot.container 3 string 10
replaceitem block ~2 ~-2 ~3 slot.container 4 spider_eye 9
replaceitem block ~2 ~-2 ~3 slot.container 5 slime_ball 10
replaceitem block ~2 ~-2 ~3 slot.container 9 brown_mushroom 13
replaceitem block ~2 ~-2 ~3 slot.container 10 golden_apple 4
replaceitem block ~2 ~-2 ~3 slot.container 11 diamond 5
replaceitem block ~2 ~-2 ~3 slot.container 12 iron_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 13 bowl 11
replaceitem block ~2 ~-2 ~3 slot.container 14 shroomlight 10
loot insert ~2 ~-2 ~3 loot "rsf/mushroom_island"
loot insert ~2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~8 ~5 red_mushroom_block []
fill ~-4 ~1 ~0 ~4 ~7 ~5 brown_mushroom_block []
fill ~-3 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~3 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~-4 ~10 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-5 ~4 ~10 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-5 ~3 ~10 ~5 stone_brick_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 mushroom_stem []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 brown_mushroom_block []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~5 ~0 ~-2 ~5 ~8 ~-2 mushroom_stem []
fill ~4 ~9 ~-3 ~6 ~9 ~-1 red_mushroom_block []
setblock ~5 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 13
replaceitem block ~-3 ~1 ~4 slot.container 9 mycelium 14
replaceitem block ~-3 ~1 ~4 slot.container 10 red_mushroom 12
replaceitem block ~-3 ~1 ~4 slot.container 11 brown_mushroom 13
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~-3 ~1 ~4 loot "rsf/mushroom_island"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 16
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 16
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 15
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 8
replaceitem block ~3 ~1 ~4 slot.container 9 mycelium 12
replaceitem block ~3 ~1 ~4 slot.container 10 red_mushroom 17
replaceitem block ~3 ~1 ~4 slot.container 11 brown_mushroom 18
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 3
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
