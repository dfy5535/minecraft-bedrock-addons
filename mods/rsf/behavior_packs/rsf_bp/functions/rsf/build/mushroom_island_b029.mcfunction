# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2973/4224 | 主题内编号: b029/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·奥术星象琉璃塔 (mushroom_island_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_mushroom_block []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 slime_ball 10
replaceitem block ~2 ~-3 ~0 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~0 slot.container 2 blaze_rod 6
replaceitem block ~2 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~0 slot.container 4 bone 18
replaceitem block ~2 ~-3 ~0 slot.container 5 gunpowder 17
replaceitem block ~2 ~-3 ~0 slot.container 9 golden_apple 5
replaceitem block ~2 ~-3 ~0 slot.container 10 diamond 6
replaceitem block ~2 ~-3 ~0 slot.container 11 iron_ingot 13
replaceitem block ~2 ~-3 ~0 slot.container 12 bowl 12
replaceitem block ~2 ~-3 ~0 slot.container 13 shroomlight 4
replaceitem block ~2 ~-3 ~0 slot.container 14 mushroom_stew 1
loot insert ~2 ~-3 ~0 loot "rsf/mushroom_island"
loot insert ~2 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~9 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 red_mushroom_block []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 glass []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 mushroom_stem []
setblock ~0 ~4 ~-7 shroomlight []
setblock ~0 ~5 ~-7 shroomlight []
fill ~0 ~0 ~7 ~0 ~3 ~7 mushroom_stem []
setblock ~0 ~4 ~7 shroomlight []
setblock ~0 ~5 ~7 shroomlight []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 mushroom_stem []
setblock ~-6 ~4 ~0 shroomlight []
setblock ~-6 ~5 ~0 shroomlight []
fill ~6 ~0 ~0 ~6 ~3 ~0 mushroom_stem []
setblock ~6 ~4 ~0 shroomlight []
setblock ~6 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~5 ~0 ~2 ~5 ~7 ~2 mushroom_stem []
fill ~4 ~8 ~1 ~6 ~8 ~3 red_mushroom_block []
setblock ~5 ~7 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 13
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 shroomlight 9
replaceitem block ~3 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 11 suspicious_stew 1
replaceitem block ~3 ~1 ~4 slot.container 12 mycelium 9
replaceitem block ~3 ~1 ~4 slot.container 13 red_mushroom 14
replaceitem block ~3 ~1 ~4 slot.container 14 brown_mushroom 15
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
