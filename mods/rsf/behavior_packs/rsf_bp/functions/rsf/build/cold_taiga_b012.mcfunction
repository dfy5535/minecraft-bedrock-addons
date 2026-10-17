# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0780/4224 | 主题内编号: b012/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子暗门地底宝库 (cold_taiga_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_planks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 deepslate_bricks []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 bone 17
replaceitem block ~5 ~-4 ~2 slot.container 1 arrow 22
replaceitem block ~5 ~-4 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-4 ~2 slot.container 3 string 8
replaceitem block ~5 ~-4 ~2 slot.container 4 gunpowder 7
replaceitem block ~5 ~-4 ~2 slot.container 5 leather 10
replaceitem block ~5 ~-4 ~2 slot.container 9 iron_ingot 12
replaceitem block ~5 ~-4 ~2 slot.container 10 leather_boots 1
replaceitem block ~5 ~-4 ~2 slot.container 11 golden_apple 2
replaceitem block ~5 ~-4 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~-4 ~2 slot.container 13 campfire 5
replaceitem block ~5 ~-4 ~2 slot.container 14 lantern 8
loot insert ~5 ~-4 ~2 loot "rsf/cold_taiga"
loot insert ~5 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 packed_ice []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 stripped_spruce_log []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 stripped_spruce_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 stripped_spruce_log []
fill ~8 ~0 ~2 ~8 ~5 ~2 stripped_spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-7 ~0 ~5 ~-8 ~14 ~6 cobblestone []
setblock ~-7 ~1 ~5 campfire []
setblock ~-7 ~15 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~2 slot.container 1 leather 13
replaceitem block ~-6 ~1 ~2 slot.container 2 rabbit_foot 8
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 5 arrow 17
replaceitem block ~-6 ~1 ~2 slot.container 9 cooked_mutton 11
replaceitem block ~-6 ~1 ~2 slot.container 10 sweet_berries 16
replaceitem block ~-6 ~1 ~2 slot.container 11 spruce_log 21
replaceitem block ~-6 ~1 ~2 slot.container 12 coal 22
replaceitem block ~-6 ~1 ~2 slot.container 13 iron_ingot 6
replaceitem block ~-6 ~1 ~2 slot.container 14 leather_boots 1
loot insert ~-6 ~1 ~2 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
