# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0829/4224 | 主题内编号: b061/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子封土古墓地宫 (cold_taiga_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cobblestone []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 barrel []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 22
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 coal 22
replaceitem block ~0 ~-3 ~-2 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 leather_boots 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 campfire 6
loot insert ~0 ~-3 ~-2 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 spruce_planks []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 cobblestone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 coal_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-7 ~0 ~5 ~-8 ~13 ~6 cobblestone []
setblock ~-7 ~1 ~5 campfire []
setblock ~-7 ~14 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 leather 13
replaceitem block ~6 ~1 ~2 slot.container 1 rabbit_foot 8
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 3 bone 12
replaceitem block ~6 ~1 ~2 slot.container 4 arrow 17
replaceitem block ~6 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~6 ~1 ~2 slot.container 10 campfire 6
replaceitem block ~6 ~1 ~2 slot.container 11 lantern 9
replaceitem block ~6 ~1 ~2 slot.container 12 cooked_mutton 14
replaceitem block ~6 ~1 ~2 slot.container 13 sweet_berries 12
replaceitem block ~6 ~1 ~2 slot.container 14 spruce_log 17
loot insert ~6 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 4 string 14
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-6 ~1 ~3 slot.container 10 campfire 4
replaceitem block ~-6 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~-6 ~1 ~3 slot.container 12 cooked_mutton 12
replaceitem block ~-6 ~1 ~3 slot.container 13 sweet_berries 17
replaceitem block ~-6 ~1 ~3 slot.container 14 spruce_log 22
loot insert ~-6 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
