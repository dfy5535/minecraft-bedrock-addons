# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3066/4224 | 主题内编号: b122/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十字穹顶宏伟圣堂与墓窟 (mushroom_island_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 brown_mushroom_block []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mushroom_stem []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 spider_eye 9
replaceitem block ~0 ~-3 ~-5 slot.container 1 slime_ball 10
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-3 ~-5 slot.container 3 blaze_rod 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 bone 18
replaceitem block ~0 ~-3 ~-5 slot.container 9 brown_mushroom 15
replaceitem block ~0 ~-3 ~-5 slot.container 10 golden_apple 6
replaceitem block ~0 ~-3 ~-5 slot.container 11 diamond 7
replaceitem block ~0 ~-3 ~-5 slot.container 12 iron_ingot 14
replaceitem block ~0 ~-3 ~-5 slot.container 13 bowl 6
replaceitem block ~0 ~-3 ~-5 slot.container 14 shroomlight 5
loot insert ~0 ~-3 ~-5 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~8 ~7 red_mushroom_block []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 red_mushroom_block []
fill ~-1 ~1 ~-6 ~1 ~7 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mushroom_stem []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_mushroom_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 shroomlight []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 mushroom_stem []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 mushroom_stem []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 mushroom_stem []
fill ~7 ~0 ~2 ~7 ~7 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~7 ~0 ~1 ~7 ~5 ~1 mushroom_stem []
fill ~6 ~6 ~0 ~8 ~6 ~2 red_mushroom_block []
setblock ~7 ~5 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 13
replaceitem block ~-5 ~1 ~6 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~6 slot.container 3 slime_ball 13
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 10
replaceitem block ~-5 ~1 ~6 slot.container 5 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 9 bowl 6
replaceitem block ~-5 ~1 ~6 slot.container 10 shroomlight 5
replaceitem block ~-5 ~1 ~6 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 12 suspicious_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 13 mycelium 12
replaceitem block ~-5 ~1 ~6 slot.container 14 red_mushroom 17
loot insert ~-5 ~1 ~6 loot "rsf/mushroom_island"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 15
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 8
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 3 blaze_rod 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 16
replaceitem block ~5 ~1 ~6 slot.container 9 bowl 11
replaceitem block ~5 ~1 ~6 slot.container 10 shroomlight 10
replaceitem block ~5 ~1 ~6 slot.container 11 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 12 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 13 mycelium 10
replaceitem block ~5 ~1 ~6 slot.container 14 red_mushroom 15
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
