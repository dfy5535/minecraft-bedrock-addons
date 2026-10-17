# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3001/4224 | 主题内编号: b057/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·中央石棺帝王地下陵寝 (mushroom_island_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 quartz_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 brown_mushroom_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 quartz_block []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 red_mushroom_block []
fill ~0 ~1 ~-7 ~0 ~2 ~7 red_mushroom_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 red_mushroom_block []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 red_mushroom_block []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 diamond_block []
setblock ~0 ~8 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_mushroom_block []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 mushroom_stem []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 mushroom_stem []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 quartz_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~-1 ~6 ~5 ~-1 mushroom_stem []
fill ~5 ~6 ~-2 ~7 ~6 ~0 red_mushroom_block []
setblock ~6 ~5 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 shroomlight []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 13
replaceitem block ~4 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 2 string 13
replaceitem block ~4 ~1 ~6 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~6 slot.container 4 slime_ball 13
replaceitem block ~4 ~1 ~6 slot.container 5 ender_pearl 10
replaceitem block ~4 ~1 ~6 slot.container 9 red_mushroom 17
replaceitem block ~4 ~1 ~6 slot.container 10 brown_mushroom 18
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~6 slot.container 12 diamond 3
replaceitem block ~4 ~1 ~6 slot.container 13 iron_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 14 bowl 9
loot insert ~4 ~1 ~6 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
