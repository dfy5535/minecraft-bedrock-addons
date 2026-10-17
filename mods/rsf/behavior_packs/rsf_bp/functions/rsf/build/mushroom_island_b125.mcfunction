# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3069/4224 | 主题内编号: b125/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·巨型阶梯金字塔神王殿 (mushroom_island_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 quartz_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 brown_mushroom_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 brown_mushroom_block []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 shroomlight []
setblock ~2 ~-7 ~-3 shroomlight []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 bone 18
replaceitem block ~2 ~-5 ~3 slot.container 1 gunpowder 17
replaceitem block ~2 ~-5 ~3 slot.container 2 string 10
replaceitem block ~2 ~-5 ~3 slot.container 3 spider_eye 9
replaceitem block ~2 ~-5 ~3 slot.container 4 slime_ball 10
replaceitem block ~2 ~-5 ~3 slot.container 5 ender_pearl 7
replaceitem block ~2 ~-5 ~3 slot.container 9 shroomlight 4
replaceitem block ~2 ~-5 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~-5 ~3 slot.container 11 suspicious_stew 1
replaceitem block ~2 ~-5 ~3 slot.container 12 mycelium 11
replaceitem block ~2 ~-5 ~3 slot.container 13 red_mushroom 16
replaceitem block ~2 ~-5 ~3 slot.container 14 brown_mushroom 17
loot insert ~2 ~-5 ~3 loot "rsf/mushroom_island"
loot insert ~2 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 quartz_block []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 red_mushroom_block []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 red_mushroom_block []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 red_mushroom_block []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 red_mushroom_block []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 diamond_block []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 mushroom_stem []
setblock ~0 ~4 ~-9 shroomlight []
setblock ~0 ~5 ~-9 shroomlight []
fill ~0 ~0 ~9 ~0 ~3 ~9 mushroom_stem []
setblock ~0 ~4 ~9 shroomlight []
setblock ~0 ~5 ~9 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 mushroom_stem []
setblock ~-8 ~4 ~0 shroomlight []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 mushroom_stem []
setblock ~8 ~4 ~0 shroomlight []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x10x6) ---
fill ~7 ~0 ~-3 ~7 ~8 ~-3 mushroom_stem []
fill ~6 ~9 ~-4 ~8 ~9 ~-2 red_mushroom_block []
setblock ~7 ~8 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 shroomlight []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 2 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 bone 13
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 10 bowl 10
replaceitem block ~5 ~1 ~6 slot.container 11 shroomlight 9
replaceitem block ~5 ~1 ~6 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 13 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 mycelium 9
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
