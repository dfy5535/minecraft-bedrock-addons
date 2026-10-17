# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2976/4224 | 主题内编号: b032/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·断顶残垣古哨塔 (mushroom_island_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 9x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mycelium []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 quartz_block []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 red_mushroom_block []
setblock ~0 ~-5 ~0 diamond_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 gunpowder 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 string 10
replaceitem block ~0 ~-2 ~-3 slot.container 2 spider_eye 9
replaceitem block ~0 ~-2 ~-3 slot.container 3 slime_ball 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 blaze_rod 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 brown_mushroom 16
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 7
replaceitem block ~0 ~-2 ~-3 slot.container 11 diamond 8
replaceitem block ~0 ~-2 ~-3 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 bowl 7
replaceitem block ~0 ~-2 ~-3 slot.container 14 shroomlight 6
loot insert ~0 ~-2 ~-3 loot "rsf/mushroom_island"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~8 ~5 stone_bricks []
fill ~-2 ~1 ~-4 ~2 ~7 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~8 ~-5 mushroom_stem []
fill ~-3 ~1 ~5 ~-3 ~8 ~5 mushroom_stem []
fill ~3 ~1 ~-5 ~3 ~8 ~-5 mushroom_stem []
fill ~3 ~1 ~5 ~3 ~8 ~5 mushroom_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~8 ~-5 ~3 ~8 ~5 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-3 ~7 ~-1 ~-3 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 mushroom_stem []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 mushroom_stem []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 mushroom_stem []
fill ~4 ~0 ~2 ~4 ~7 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 4x8x3) ---
fill ~4 ~0 ~0 ~4 ~5 ~0 mushroom_stem []
fill ~3 ~6 ~-1 ~5 ~6 ~1 red_mushroom_block []
setblock ~4 ~5 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-2 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-2 ~1 ~4 slot.container 3 string 13
replaceitem block ~-2 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-2 ~1 ~4 slot.container 5 slime_ball 13
replaceitem block ~-2 ~1 ~4 slot.container 9 bowl 7
replaceitem block ~-2 ~1 ~4 slot.container 10 shroomlight 6
replaceitem block ~-2 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-2 ~1 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~-2 ~1 ~4 slot.container 13 mycelium 13
replaceitem block ~-2 ~1 ~4 slot.container 14 red_mushroom 18
loot insert ~-2 ~1 ~4 loot "rsf/mushroom_island"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~2 ~1 ~4 slot.container 1 string 16
replaceitem block ~2 ~1 ~4 slot.container 2 spider_eye 15
replaceitem block ~2 ~1 ~4 slot.container 3 slime_ball 8
replaceitem block ~2 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~2 ~1 ~4 slot.container 5 blaze_rod 4
replaceitem block ~2 ~1 ~4 slot.container 9 bowl 12
replaceitem block ~2 ~1 ~4 slot.container 10 shroomlight 4
replaceitem block ~2 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~2 ~1 ~4 slot.container 12 suspicious_stew 1
replaceitem block ~2 ~1 ~4 slot.container 13 mycelium 11
replaceitem block ~2 ~1 ~4 slot.container 14 red_mushroom 16
loot insert ~2 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~2 ~1 ~4 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
