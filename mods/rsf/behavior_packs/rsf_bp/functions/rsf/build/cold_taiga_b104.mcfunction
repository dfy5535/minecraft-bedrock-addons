# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0872/4224 | 主题内编号: b104/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双层指挥台卫戍堡 (cold_taiga_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 7
replaceitem block ~4 ~-3 ~3 slot.container 1 leather 10
replaceitem block ~4 ~-3 ~3 slot.container 2 rabbit_foot 5
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 5 arrow 22
replaceitem block ~4 ~-3 ~3 slot.container 9 cooked_mutton 8
replaceitem block ~4 ~-3 ~3 slot.container 10 sweet_berries 13
replaceitem block ~4 ~-3 ~3 slot.container 11 spruce_log 18
replaceitem block ~4 ~-3 ~3 slot.container 12 coal 19
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 10
replaceitem block ~4 ~-3 ~3 slot.container 14 leather_boots 1
loot insert ~4 ~-3 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 stone_brick_slab []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 deepslate_bricks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_wall []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 stripped_spruce_log []
setblock ~-6 ~10 ~-5 campfire []
setblock ~-6 ~9 ~5 stripped_spruce_log []
setblock ~-6 ~10 ~5 campfire []
setblock ~6 ~9 ~-5 stripped_spruce_log []
setblock ~6 ~10 ~-5 campfire []
setblock ~6 ~9 ~5 stripped_spruce_log []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-6 ~0 ~6 ~-7 ~13 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~14 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 11 campfire 8
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_mutton 9
replaceitem block ~-5 ~1 ~3 slot.container 14 sweet_berries 14
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-3 ~0
