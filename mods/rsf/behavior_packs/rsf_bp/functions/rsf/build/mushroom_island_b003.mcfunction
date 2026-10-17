# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2947/4224 | 主题内编号: b003/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·环柱巨石方尖祭坛 (mushroom_island_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mushroom_stem []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 mushroom_stem []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 mushroom_stem []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 mushroom_stem []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 mushroom_stem []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 mushroom_stem []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 mushroom_stem []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 mushroom_stem []
fill ~1 ~1 ~6 ~1 ~7 ~6 mushroom_stem []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 mushroom_stem []
fill ~3 ~1 ~6 ~3 ~7 ~6 mushroom_stem []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 mushroom_stem []
fill ~5 ~1 ~6 ~5 ~7 ~6 mushroom_stem []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 mushroom_stem []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 mushroom_stem []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 mushroom_stem []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 mushroom_stem []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 mushroom_stem []
fill ~5 ~1 ~0 ~5 ~7 ~0 mushroom_stem []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 mushroom_stem []
fill ~5 ~1 ~2 ~5 ~7 ~2 mushroom_stem []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 mushroom_stem []
fill ~5 ~1 ~4 ~5 ~7 ~4 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mushroom_stem []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 brown_mushroom_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 shroomlight []

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

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~0 ~6 ~6 ~0 mushroom_stem []
fill ~5 ~7 ~-1 ~7 ~7 ~1 red_mushroom_block []
setblock ~6 ~6 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 13
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 10 mycelium 9
replaceitem block ~4 ~1 ~5 slot.container 11 red_mushroom 14
replaceitem block ~4 ~1 ~5 slot.container 12 brown_mushroom 15
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 7
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
