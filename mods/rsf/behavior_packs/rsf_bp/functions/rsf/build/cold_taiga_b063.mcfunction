# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0831/4224 | 主题内编号: b063/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·方尖碑镇压古墓穴 (cold_taiga_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~2 slot.container 1 rabbit_foot 5
replaceitem block ~0 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~2 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~2 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~2 slot.container 9 leather_boots 1
replaceitem block ~0 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~0 ~-3 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-3 ~2 slot.container 12 campfire 2
replaceitem block ~0 ~-3 ~2 slot.container 13 lantern 5
replaceitem block ~0 ~-3 ~2 slot.container 14 cooked_mutton 10
loot insert ~0 ~-3 ~2 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~2 loot "chests/igloo_chest"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 leather 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 rabbit_foot 3
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 20
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 leather_boots 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 campfire 8
replaceitem block ~0 ~-3 ~-2 slot.container 13 lantern 4
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_mutton 9
loot insert ~0 ~-3 ~-2 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~10 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~10 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~10 ~4 air []
fill ~5 ~1 ~4 ~5 ~10 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~9 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 spruce_planks []
fill ~0 ~15 ~0 ~0 ~18 ~0 snow []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-5 ~0 ~5 ~-6 ~13 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~14 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 12
replaceitem block ~4 ~1 ~2 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 9 coal 21
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 11 leather_boots 1
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~1 ~2 slot.container 14 campfire 5
loot insert ~4 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 4 leather 8
replaceitem block ~-4 ~1 ~3 slot.container 5 rabbit_foot 3
replaceitem block ~-4 ~1 ~3 slot.container 9 coal 19
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 11 leather_boots 1
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~3 slot.container 14 campfire 3
loot insert ~-4 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
