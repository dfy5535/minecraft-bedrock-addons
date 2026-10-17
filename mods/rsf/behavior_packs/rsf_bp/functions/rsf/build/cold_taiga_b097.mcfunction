# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0865/4224 | 主题内编号: b097/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·八角射击孔防御棱堡 (cold_taiga_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 1 rabbit_foot 5
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 3 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 4 arrow 22
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_mutton 9
replaceitem block ~4 ~-2 ~3 slot.container 11 sweet_berries 14
replaceitem block ~4 ~-2 ~3 slot.container 12 spruce_log 19
replaceitem block ~4 ~-2 ~3 slot.container 13 coal 20
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 11
loot insert ~4 ~-2 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 spruce_log []
setblock ~-6 ~9 ~-5 lantern []
setblock ~-6 ~8 ~5 spruce_log []
setblock ~-6 ~9 ~5 lantern []
setblock ~6 ~8 ~-5 spruce_log []
setblock ~6 ~9 ~-5 lantern []
setblock ~6 ~8 ~5 spruce_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-6 ~0 ~6 ~-7 ~15 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~16 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 4 leather 13
replaceitem block ~5 ~1 ~3 slot.container 5 rabbit_foot 8
replaceitem block ~5 ~1 ~3 slot.container 9 leather_boots 1
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 12 campfire 2
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_mutton 10
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rabbit_foot 3
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 12 campfire 7
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_mutton 8
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
