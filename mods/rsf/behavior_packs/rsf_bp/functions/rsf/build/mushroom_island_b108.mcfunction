# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3052/4224 | 主题内编号: b108/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十字四相元素秘法殿 (mushroom_island_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 shroomlight []
setblock ~3 ~-6 ~-4 shroomlight []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 10
replaceitem block ~3 ~-4 ~4 slot.container 1 spider_eye 9
replaceitem block ~3 ~-4 ~4 slot.container 2 slime_ball 10
replaceitem block ~3 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-4 ~4 slot.container 4 blaze_rod 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 suspicious_stew 1
replaceitem block ~3 ~-4 ~4 slot.container 10 mycelium 10
replaceitem block ~3 ~-4 ~4 slot.container 11 red_mushroom 15
replaceitem block ~3 ~-4 ~4 slot.container 12 brown_mushroom 16
replaceitem block ~3 ~-4 ~4 slot.container 13 golden_apple 7
replaceitem block ~3 ~-4 ~4 slot.container 14 diamond 8
loot insert ~3 ~-4 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 red_mushroom_block []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 quartz_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 emerald_block []
setblock ~0 ~10 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~-3 ~6 ~6 ~-3 mushroom_stem []
fill ~5 ~7 ~-4 ~7 ~7 ~-2 red_mushroom_block []
setblock ~6 ~6 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~5 slot.container 1 slime_ball 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 2
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 11 bowl 8
replaceitem block ~-4 ~1 ~5 slot.container 12 shroomlight 7
replaceitem block ~-4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 16
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 16
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 11 bowl 6
replaceitem block ~4 ~1 ~5 slot.container 12 shroomlight 5
replaceitem block ~4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 14 suspicious_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
