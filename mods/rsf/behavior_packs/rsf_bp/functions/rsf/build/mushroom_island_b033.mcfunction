# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2977/4224 | 主题内编号: b033/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·太阳金顶高耸方尖碑 (mushroom_island_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 brown_mushroom_block []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_mushroom_block []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 red_mushroom_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 string 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 spider_eye 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 slime_ball 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-3 ~-2 slot.container 4 blaze_rod 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-3 ~-2 slot.container 10 bowl 12
replaceitem block ~0 ~-3 ~-2 slot.container 11 shroomlight 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 suspicious_stew 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 mycelium 11
loot insert ~0 ~-3 ~-2 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 quartz_block []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 red_mushroom_block []
fill ~-1 ~5 ~-2 ~1 ~10 ~2 red_mushroom_block []
fill ~-1 ~1 ~-2 ~1 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 red_mushroom_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 quartz_block []
fill ~0 ~16 ~0 ~0 ~16 ~0 diamond_block []
setblock ~0 ~17 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~3 ~-6 mushroom_stem []
setblock ~-5 ~4 ~-6 shroomlight []
fill ~-5 ~0 ~6 ~-5 ~3 ~6 mushroom_stem []
setblock ~-5 ~4 ~6 shroomlight []
fill ~5 ~0 ~-6 ~5 ~3 ~-6 mushroom_stem []
setblock ~5 ~4 ~-6 shroomlight []
fill ~5 ~0 ~6 ~5 ~3 ~6 mushroom_stem []
setblock ~5 ~4 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 4x5x4) ---
fill ~4 ~0 ~-1 ~4 ~6 ~-1 mushroom_stem []
fill ~3 ~7 ~-2 ~5 ~7 ~0 red_mushroom_block []
setblock ~4 ~6 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 13
replaceitem block ~2 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 13
replaceitem block ~2 ~1 ~3 slot.container 3 spider_eye 12
replaceitem block ~2 ~1 ~3 slot.container 4 slime_ball 13
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~2 ~1 ~3 slot.container 9 suspicious_stew 1
replaceitem block ~2 ~1 ~3 slot.container 10 mycelium 11
replaceitem block ~2 ~1 ~3 slot.container 11 red_mushroom 16
replaceitem block ~2 ~1 ~3 slot.container 12 brown_mushroom 17
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 8
replaceitem block ~2 ~1 ~3 slot.container 14 diamond 2
loot insert ~2 ~1 ~3 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
