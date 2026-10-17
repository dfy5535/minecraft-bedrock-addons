# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3005/4224 | 主题内编号: b061/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子封土古墓地宫 (mushroom_island_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 quartz_block [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 quartz_block [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 brown_mushroom_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 red_mushroom_block []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 red_mushroom_block []
setblock ~0 ~-7 ~0 shroomlight []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 blaze_rod 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 18
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 spider_eye 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 suspicious_stew 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 mycelium 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 red_mushroom 12
replaceitem block ~0 ~-4 ~-3 slot.container 12 brown_mushroom 13
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 14 diamond 5
loot insert ~0 ~-4 ~-3 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 quartz_block []
fill ~2 ~1 ~-5 ~6 ~6 ~5 quartz_block []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 red_mushroom_block []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 red_mushroom_block []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 red_mushroom_block []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 diamond_block []
setblock ~0 ~9 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-1 ~7 ~4 ~-1 mushroom_stem []
fill ~6 ~5 ~-2 ~8 ~5 ~0 red_mushroom_block []
setblock ~7 ~4 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 13
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~5 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 bone 13
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 10 diamond 5
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 12 bowl 11
replaceitem block ~5 ~1 ~4 slot.container 13 shroomlight 10
replaceitem block ~5 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-4 ~0
