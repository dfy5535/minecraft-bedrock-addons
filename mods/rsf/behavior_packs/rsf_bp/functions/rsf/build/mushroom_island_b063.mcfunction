# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3007/4224 | 主题内编号: b063/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·方尖碑镇压古墓穴 (mushroom_island_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 brown_mushroom_block [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 brown_mushroom_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 brown_mushroom_block []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 slime_ball 10
replaceitem block ~0 ~-4 ~3 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-4 ~3 slot.container 2 blaze_rod 6
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 18
replaceitem block ~0 ~-4 ~3 slot.container 5 gunpowder 17
replaceitem block ~0 ~-4 ~3 slot.container 9 red_mushroom 15
replaceitem block ~0 ~-4 ~3 slot.container 10 brown_mushroom 16
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 7
replaceitem block ~0 ~-4 ~3 slot.container 12 diamond 8
replaceitem block ~0 ~-4 ~3 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 14 bowl 7
loot insert ~0 ~-4 ~3 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 slime_ball 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 2 blaze_rod 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 9 red_mushroom 14
replaceitem block ~0 ~-4 ~-3 slot.container 10 brown_mushroom 15
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 6
replaceitem block ~0 ~-4 ~-3 slot.container 12 diamond 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 14
replaceitem block ~0 ~-4 ~-3 slot.container 14 bowl 6
loot insert ~0 ~-4 ~-3 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 brown_mushroom_block []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 mushroom_stem []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 mushroom_stem []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 mushroom_stem []
fill ~3 ~1 ~4 ~3 ~8 ~4 mushroom_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mushroom_stem []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 brown_mushroom_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 mushroom_stem []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 mushroom_stem []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 mushroom_stem []
fill ~5 ~0 ~2 ~5 ~7 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~5 ~0 ~1 ~5 ~6 ~1 mushroom_stem []
fill ~4 ~7 ~0 ~6 ~7 ~2 red_mushroom_block []
setblock ~5 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 13
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 9 suspicious_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 mycelium 13
replaceitem block ~3 ~1 ~4 slot.container 11 red_mushroom 18
replaceitem block ~3 ~1 ~4 slot.container 12 brown_mushroom 12
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 4
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
