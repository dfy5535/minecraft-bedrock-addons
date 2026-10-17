# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2997/4224 | 主题内编号: b053/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·测绘师观景制图站 (mushroom_island_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 quartz_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 blaze_rod 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 18
replaceitem block ~3 ~-3 ~0 slot.container 3 gunpowder 17
replaceitem block ~3 ~-3 ~0 slot.container 4 string 10
replaceitem block ~3 ~-3 ~0 slot.container 5 spider_eye 9
replaceitem block ~3 ~-3 ~0 slot.container 9 shroomlight 6
replaceitem block ~3 ~-3 ~0 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~-3 ~0 slot.container 12 mycelium 13
replaceitem block ~3 ~-3 ~0 slot.container 13 red_mushroom 18
replaceitem block ~3 ~-3 ~0 slot.container 14 brown_mushroom 12
loot insert ~3 ~-3 ~0 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 mushroom_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 mushroom_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 mushroom_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 mushroom_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 red_mushroom_block []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 red_mushroom_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_mushroom_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 mushroom_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 quartz_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~5 ~0 ~1 ~5 ~6 ~1 mushroom_stem []
fill ~4 ~7 ~0 ~6 ~7 ~2 red_mushroom_block []
setblock ~5 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~3 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 13
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 suspicious_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 mycelium 10
replaceitem block ~3 ~1 ~4 slot.container 11 red_mushroom 15
replaceitem block ~3 ~1 ~4 slot.container 12 brown_mushroom 16
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 8
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
