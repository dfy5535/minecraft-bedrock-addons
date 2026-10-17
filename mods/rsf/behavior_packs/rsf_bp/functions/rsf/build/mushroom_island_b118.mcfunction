# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3062/4224 | 主题内编号: b118/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·L型蜂农与林果采集屋 (mushroom_island_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~5 ~6 red_mushroom_block []
fill ~-5 ~1 ~0 ~5 ~4 ~6 brown_mushroom_block []
fill ~-4 ~1 ~-5 ~-1 ~4 ~5 air []
fill ~-1 ~1 ~1 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_brick_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 brown_mushroom_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 shroomlight []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~0 ~1 ~6 ~6 ~1 mushroom_stem []
fill ~5 ~7 ~0 ~7 ~7 ~2 red_mushroom_block []
setblock ~6 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 smoker []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 13
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 5
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 11 bowl 11
replaceitem block ~-4 ~1 ~5 slot.container 12 shroomlight 10
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
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 3
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 bowl 9
replaceitem block ~4 ~1 ~5 slot.container 12 shroomlight 8
replaceitem block ~4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
