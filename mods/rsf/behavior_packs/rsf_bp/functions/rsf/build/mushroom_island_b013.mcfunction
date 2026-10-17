# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2957/4224 | 主题内编号: b013/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·地底熔炉苦工地牢 (mushroom_island_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 quartz_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 brown_mushroom_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 18
replaceitem block ~3 ~-4 ~5 slot.container 1 gunpowder 17
replaceitem block ~3 ~-4 ~5 slot.container 2 string 10
replaceitem block ~3 ~-4 ~5 slot.container 3 spider_eye 9
replaceitem block ~3 ~-4 ~5 slot.container 4 slime_ball 10
replaceitem block ~3 ~-4 ~5 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-4 ~5 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 10 bowl 9
replaceitem block ~3 ~-4 ~5 slot.container 11 shroomlight 8
replaceitem block ~3 ~-4 ~5 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~-4 ~5 slot.container 13 suspicious_stew 1
replaceitem block ~3 ~-4 ~5 slot.container 14 mycelium 8
loot insert ~3 ~-4 ~5 loot "rsf/mushroom_island"
loot insert ~3 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 quartz_block []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 mushroom_stem []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 mushroom_stem []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 mushroom_stem []
fill ~5 ~1 ~7 ~5 ~5 ~7 mushroom_stem []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 red_mushroom_block []
fill ~-5 ~6 ~-7 ~5 ~6 ~7 cobblestone_wall []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 air []
setblock ~-5 ~6 ~-7 mushroom_stem []
setblock ~-5 ~7 ~-7 shroomlight []
setblock ~-5 ~6 ~7 mushroom_stem []
setblock ~-5 ~7 ~7 shroomlight []
setblock ~5 ~6 ~-7 mushroom_stem []
setblock ~5 ~7 ~-7 shroomlight []
setblock ~5 ~6 ~7 mushroom_stem []
setblock ~5 ~7 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 red_mushroom_block []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~6 ~0 ~-3 ~6 ~6 ~-3 mushroom_stem []
fill ~5 ~7 ~-4 ~7 ~7 ~-2 red_mushroom_block []
setblock ~6 ~6 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~6 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 4 bone 13
replaceitem block ~4 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 9 suspicious_stew 1
replaceitem block ~4 ~1 ~6 slot.container 10 mycelium 12
replaceitem block ~4 ~1 ~6 slot.container 11 red_mushroom 17
replaceitem block ~4 ~1 ~6 slot.container 12 brown_mushroom 18
replaceitem block ~4 ~1 ~6 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~6 slot.container 14 diamond 3
loot insert ~4 ~1 ~6 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-4 ~0
