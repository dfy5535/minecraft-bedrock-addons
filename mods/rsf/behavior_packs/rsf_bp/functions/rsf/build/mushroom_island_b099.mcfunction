# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3043/4224 | 主题内编号: b099/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·铁闸门瓮城防御堡 (mushroom_island_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 brown_mushroom_block [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 blaze_rod 6
replaceitem block ~3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 2 bone 18
replaceitem block ~3 ~-3 ~3 slot.container 3 gunpowder 17
replaceitem block ~3 ~-3 ~3 slot.container 4 string 10
replaceitem block ~3 ~-3 ~3 slot.container 5 spider_eye 9
replaceitem block ~3 ~-3 ~3 slot.container 9 red_mushroom 13
replaceitem block ~3 ~-3 ~3 slot.container 10 brown_mushroom 14
replaceitem block ~3 ~-3 ~3 slot.container 11 golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 12 diamond 6
replaceitem block ~3 ~-3 ~3 slot.container 13 iron_ingot 13
replaceitem block ~3 ~-3 ~3 slot.container 14 bowl 12
loot insert ~3 ~-3 ~3 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 brown_mushroom_block []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 mushroom_stem []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone_wall []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 mushroom_stem []
setblock ~-5 ~8 ~-5 shroomlight []
setblock ~-5 ~7 ~5 mushroom_stem []
setblock ~-5 ~8 ~5 shroomlight []
setblock ~5 ~7 ~-5 mushroom_stem []
setblock ~5 ~8 ~-5 shroomlight []
setblock ~5 ~7 ~5 mushroom_stem []
setblock ~5 ~8 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mushroom_stem []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 shroomlight []
fill ~0 ~0 ~8 ~0 ~3 ~8 mushroom_stem []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mushroom_stem []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 mushroom_stem []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~2 ~6 ~7 ~2 mushroom_stem []
fill ~5 ~8 ~1 ~7 ~8 ~3 red_mushroom_block []
setblock ~6 ~7 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 13
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 2 slime_ball 13
replaceitem block ~4 ~1 ~4 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 shroomlight 9
replaceitem block ~4 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~4 slot.container 11 suspicious_stew 1
replaceitem block ~4 ~1 ~4 slot.container 12 mycelium 9
replaceitem block ~4 ~1 ~4 slot.container 13 red_mushroom 14
replaceitem block ~4 ~1 ~4 slot.container 14 brown_mushroom 15
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
