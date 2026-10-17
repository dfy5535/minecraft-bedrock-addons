# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3065/4224 | 主题内编号: b121/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·卫城廊柱王座大殿与地宫 (mushroom_island_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 quartz_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 brown_mushroom_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mushroom_stem []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 slime_ball 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 blaze_rod 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 bowl 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 shroomlight 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 suspicious_stew 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 mycelium 9
loot insert ~0 ~-3 ~-4 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~7 ~7 quartz_block []
fill ~-5 ~1 ~0 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 mushroom_stem []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 mushroom_stem []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 mushroom_stem []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 mushroom_stem []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 mushroom_stem []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 mushroom_stem []
fill ~-6 ~7 ~-7 ~6 ~7 ~-1 red_mushroom_block []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-8 ~-7 ~8 ~8 quartz_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-8 ~7 ~8 ~8 quartz_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-7 ~-6 ~9 ~7 quartz_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-7 ~6 ~9 ~7 quartz_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-7 ~5 ~9 ~7 quartz_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 mushroom_stem []
setblock ~-8 ~4 ~-9 shroomlight []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 mushroom_stem []
setblock ~-8 ~4 ~9 shroomlight []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 mushroom_stem []
setblock ~8 ~4 ~-9 shroomlight []
fill ~8 ~0 ~9 ~8 ~3 ~9 mushroom_stem []
setblock ~8 ~4 ~9 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~0 ~7 ~4 ~0 mushroom_stem []
fill ~6 ~5 ~-1 ~8 ~5 ~1 red_mushroom_block []
setblock ~7 ~4 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 diamond_block []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 13
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 10 diamond 2
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 12 bowl 8
replaceitem block ~5 ~1 ~6 slot.container 13 shroomlight 7
replaceitem block ~5 ~1 ~6 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-4 ~0
