# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2983/4224 | 主题内编号: b039/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·永恒圣火图腾方尖塔 (mushroom_island_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 brown_mushroom_block [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 brown_mushroom_block [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 brown_mushroom_block []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 string 10
replaceitem block ~1 ~-3 ~2 slot.container 1 spider_eye 9
replaceitem block ~1 ~-3 ~2 slot.container 2 slime_ball 10
replaceitem block ~1 ~-3 ~2 slot.container 3 ender_pearl 7
replaceitem block ~1 ~-3 ~2 slot.container 4 blaze_rod 6
replaceitem block ~1 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~1 ~-3 ~2 slot.container 9 golden_apple 2
replaceitem block ~1 ~-3 ~2 slot.container 10 diamond 3
replaceitem block ~1 ~-3 ~2 slot.container 11 iron_ingot 10
replaceitem block ~1 ~-3 ~2 slot.container 12 bowl 9
replaceitem block ~1 ~-3 ~2 slot.container 13 shroomlight 8
replaceitem block ~1 ~-3 ~2 slot.container 14 mushroom_stew 1
loot insert ~1 ~-3 ~2 loot "rsf/mushroom_island"
loot insert ~1 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 brown_mushroom_block []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 mushroom_stem []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 mushroom_stem []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 mushroom_stem []
fill ~3 ~1 ~4 ~3 ~9 ~4 mushroom_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mushroom_stem []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 brown_mushroom_block []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 mushroom_stem []
setblock ~0 ~4 ~-6 emerald_block []
setblock ~0 ~5 ~-6 shroomlight []
fill ~0 ~0 ~6 ~0 ~3 ~6 mushroom_stem []
setblock ~0 ~4 ~6 emerald_block []
setblock ~0 ~5 ~6 shroomlight []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 mushroom_stem []
setblock ~-5 ~4 ~0 emerald_block []
setblock ~-5 ~5 ~0 shroomlight []
fill ~5 ~0 ~0 ~5 ~3 ~0 mushroom_stem []
setblock ~5 ~4 ~0 emerald_block []
setblock ~5 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 4x5x5) ---
fill ~4 ~0 ~1 ~4 ~7 ~1 mushroom_stem []
fill ~3 ~8 ~0 ~5 ~8 ~2 red_mushroom_block []
setblock ~4 ~7 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 blaze_rod 9
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 bone 13
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 13
replaceitem block ~2 ~1 ~3 slot.container 5 spider_eye 12
replaceitem block ~2 ~1 ~3 slot.container 9 shroomlight 5
replaceitem block ~2 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 11 suspicious_stew 1
replaceitem block ~2 ~1 ~3 slot.container 12 mycelium 12
replaceitem block ~2 ~1 ~3 slot.container 13 red_mushroom 17
replaceitem block ~2 ~1 ~3 slot.container 14 brown_mushroom 18
loot insert ~2 ~1 ~3 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
