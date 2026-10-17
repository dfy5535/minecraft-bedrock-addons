# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2989/4224 | 主题内编号: b045/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十二柱神殿试炼场 (mushroom_island_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 quartz_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 quartz_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 brown_mushroom_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 quartz_block []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~-4 ~-5 ~-5 shroomlight []
setblock ~4 ~-5 ~5 shroomlight []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 slime_ball 10
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-3 ~5 slot.container 2 blaze_rod 6
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 18
replaceitem block ~0 ~-3 ~5 slot.container 5 gunpowder 17
replaceitem block ~0 ~-3 ~5 slot.container 9 shroomlight 8
replaceitem block ~0 ~-3 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~0 ~-3 ~5 slot.container 11 suspicious_stew 1
replaceitem block ~0 ~-3 ~5 slot.container 12 mycelium 8
replaceitem block ~0 ~-3 ~5 slot.container 13 red_mushroom 13
replaceitem block ~0 ~-3 ~5 slot.container 14 brown_mushroom 14
loot insert ~0 ~-3 ~5 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 red_mushroom_block []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 mushroom_stem []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 mushroom_stem []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 mushroom_stem []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 mushroom_stem []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 mushroom_stem []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 mushroom_stem []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 mushroom_stem []
fill ~0 ~1 ~7 ~0 ~5 ~7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 mushroom_stem []
fill ~2 ~1 ~7 ~2 ~5 ~7 mushroom_stem []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 mushroom_stem []
fill ~4 ~1 ~7 ~4 ~5 ~7 mushroom_stem []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 mushroom_stem []
fill ~6 ~1 ~7 ~6 ~5 ~7 mushroom_stem []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 mushroom_stem []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 mushroom_stem []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 mushroom_stem []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 mushroom_stem []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 mushroom_stem []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 mushroom_stem []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 mushroom_stem []
fill ~6 ~1 ~1 ~6 ~5 ~1 mushroom_stem []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 mushroom_stem []
fill ~6 ~1 ~3 ~6 ~5 ~3 mushroom_stem []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 mushroom_stem []
fill ~6 ~1 ~5 ~6 ~5 ~5 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 mushroom_stem []
setblock ~-6 ~9 ~-7 shroomlight []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 mushroom_stem []
setblock ~-6 ~9 ~7 shroomlight []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 mushroom_stem []
setblock ~6 ~9 ~-7 shroomlight []
fill ~6 ~6 ~7 ~6 ~8 ~7 mushroom_stem []
setblock ~6 ~9 ~7 shroomlight []

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

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 mushroom_stem []
fill ~6 ~9 ~0 ~8 ~9 ~2 red_mushroom_block []
setblock ~7 ~8 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 2 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 bone 13
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 10 bowl 7
replaceitem block ~5 ~1 ~6 slot.container 11 shroomlight 6
replaceitem block ~5 ~1 ~6 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 13 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 14 mycelium 13
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
