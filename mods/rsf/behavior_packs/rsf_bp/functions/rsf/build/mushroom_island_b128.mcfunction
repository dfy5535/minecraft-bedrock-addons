# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3072/4224 | 主题内编号: b128/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·U型紫禁朝堂大殿与地底金库 (mushroom_island_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mycelium []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~-3 ~5 slot.container 1 slime_ball 10
replaceitem block ~4 ~-3 ~5 slot.container 2 ender_pearl 7
replaceitem block ~4 ~-3 ~5 slot.container 3 blaze_rod 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 18
replaceitem block ~4 ~-3 ~5 slot.container 9 mycelium 13
replaceitem block ~4 ~-3 ~5 slot.container 10 red_mushroom 18
replaceitem block ~4 ~-3 ~5 slot.container 11 brown_mushroom 12
replaceitem block ~4 ~-3 ~5 slot.container 12 golden_apple 3
replaceitem block ~4 ~-3 ~5 slot.container 13 diamond 4
replaceitem block ~4 ~-3 ~5 slot.container 14 iron_ingot 11
loot insert ~4 ~-3 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 brown_mushroom_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-8 ~7 ~7 ~8 stone_brick_slab []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 quartz_block []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 quartz_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~7 ~0 ~0 ~7 ~6 ~0 mushroom_stem []
fill ~6 ~7 ~-1 ~8 ~7 ~1 red_mushroom_block []
setblock ~7 ~6 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~6 slot.container 5 slime_ball 13
replaceitem block ~-5 ~1 ~6 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 11 bowl 7
replaceitem block ~-5 ~1 ~6 slot.container 12 shroomlight 6
replaceitem block ~-5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 4
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 6
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 11 bowl 12
replaceitem block ~5 ~1 ~6 slot.container 12 shroomlight 4
replaceitem block ~5 ~1 ~6 slot.container 13 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 suspicious_stew 1
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
