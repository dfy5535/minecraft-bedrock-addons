# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0828/4224 | 主题内编号: b060/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·圆形穹顶万骨祠堂 (cold_taiga_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 7
replaceitem block ~0 ~-4 ~3 slot.container 3 leather 10
replaceitem block ~0 ~-4 ~3 slot.container 4 rabbit_foot 5
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 9 golden_apple 2
replaceitem block ~0 ~-4 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-4 ~3 slot.container 11 campfire 5
replaceitem block ~0 ~-4 ~3 slot.container 12 lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 13 cooked_mutton 13
replaceitem block ~0 ~-4 ~3 slot.container 14 sweet_berries 18
loot insert ~0 ~-4 ~3 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~3 loot "chests/igloo_chest"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 13
replaceitem block ~0 ~-4 ~-3 slot.container 3 leather 8
replaceitem block ~0 ~-4 ~-3 slot.container 4 rabbit_foot 3
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 campfire 4
replaceitem block ~0 ~-4 ~-3 slot.container 12 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 cooked_mutton 12
replaceitem block ~0 ~-4 ~-3 slot.container 14 sweet_berries 17
loot insert ~0 ~-4 ~-3 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 packed_ice []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 stripped_spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 stripped_spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 stripped_spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 stripped_spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 stripped_spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 stripped_spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 stripped_spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 stripped_spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 stripped_spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 stripped_spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 stripped_spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 stripped_spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 stripped_spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 stripped_spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 stripped_spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 stripped_spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 stripped_spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 stripped_spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 stripped_spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 stripped_spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 stripped_spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 packed_ice []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_spruce_log []
setblock ~0 ~4 ~-7 coal_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_spruce_log []
setblock ~0 ~4 ~7 coal_block []
setblock ~0 ~5 ~7 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_spruce_log []
setblock ~-8 ~4 ~0 coal_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_spruce_log []
setblock ~8 ~4 ~0 coal_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-6 ~0 ~6 ~-7 ~13 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~14 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 10 leather_boots 1
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 13 campfire 8
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 4
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
