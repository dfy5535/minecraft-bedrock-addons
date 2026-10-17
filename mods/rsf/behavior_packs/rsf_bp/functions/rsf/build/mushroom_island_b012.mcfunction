# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2956/4224 | 主题内编号: b012/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子暗门地底宝库 (mushroom_island_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mycelium []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 red_mushroom_block []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 mushroom_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 mushroom_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 mushroom_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~0 ~7 ~5 ~0 mushroom_stem []
fill ~6 ~6 ~-1 ~8 ~6 ~1 red_mushroom_block []
setblock ~7 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 9 bowl 8
replaceitem block ~-5 ~1 ~4 slot.container 10 shroomlight 7
replaceitem block ~-5 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 13 mycelium 14
replaceitem block ~-5 ~1 ~4 slot.container 14 red_mushroom 12
loot insert ~-5 ~1 ~4 loot "rsf/mushroom_island"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 16
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 16
replaceitem block ~5 ~1 ~4 slot.container 9 bowl 6
replaceitem block ~5 ~1 ~4 slot.container 10 shroomlight 5
replaceitem block ~5 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~5 ~1 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~5 ~1 ~4 slot.container 13 mycelium 12
replaceitem block ~5 ~1 ~4 slot.container 14 red_mushroom 17
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
