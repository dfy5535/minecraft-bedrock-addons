# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3013/4224 | 主题内编号: b069/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·藤蔓侵蚀十字修道院 (mushroom_island_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 brown_mushroom_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 red_mushroom_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 blaze_rod 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 18
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 10
replaceitem block ~0 ~-3 ~-4 slot.container 5 spider_eye 9
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 10 diamond 2
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 bowl 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 shroomlight 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-4 loot "rsf/mushroom_island"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 quartz_block []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 quartz_block []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 quartz_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_mushroom_block []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 mushroom_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 mushroom_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 quartz_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~0 ~0 ~6 ~7 ~0 mushroom_stem []
fill ~5 ~8 ~-1 ~7 ~8 ~1 red_mushroom_block []
setblock ~6 ~7 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 shroomlight 7
replaceitem block ~4 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 12 mycelium 14
replaceitem block ~4 ~1 ~5 slot.container 13 red_mushroom 12
replaceitem block ~4 ~1 ~5 slot.container 14 brown_mushroom 13
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
