# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0788/4224 | 主题内编号: b020/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·重甲防爆金库房间 (cold_taiga_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 17
replaceitem block ~3 ~-3 ~2 slot.container 1 arrow 22
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~3 ~-3 ~2 slot.container 4 gunpowder 7
replaceitem block ~3 ~-3 ~2 slot.container 5 leather 10
replaceitem block ~3 ~-3 ~2 slot.container 9 campfire 2
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 5
replaceitem block ~3 ~-3 ~2 slot.container 11 cooked_mutton 10
replaceitem block ~3 ~-3 ~2 slot.container 12 sweet_berries 15
replaceitem block ~3 ~-3 ~2 slot.container 13 spruce_log 20
replaceitem block ~3 ~-3 ~2 slot.container 14 coal 21
loot insert ~3 ~-3 ~2 loot "rsf/cold_taiga"
loot insert ~3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~8 ~-3 packed_ice []
setblock ~-5 ~9 ~-4 campfire []
fill ~-5 ~1 ~3 ~-4 ~8 ~4 packed_ice []
setblock ~-5 ~9 ~3 campfire []
fill ~4 ~1 ~-4 ~5 ~8 ~-3 packed_ice []
setblock ~4 ~9 ~-4 campfire []
fill ~4 ~1 ~3 ~5 ~8 ~4 packed_ice []
setblock ~4 ~9 ~3 campfire []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 packed_ice []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone_wall []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 stripped_spruce_log []
setblock ~-5 ~8 ~-4 campfire []
setblock ~-5 ~7 ~4 stripped_spruce_log []
setblock ~-5 ~8 ~4 campfire []
setblock ~5 ~7 ~-4 stripped_spruce_log []
setblock ~5 ~8 ~-4 campfire []
setblock ~5 ~7 ~4 stripped_spruce_log []
setblock ~5 ~8 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 stripped_spruce_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 stripped_spruce_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 stripped_spruce_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 stripped_spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-5 ~0 ~5 ~-6 ~12 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~13 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rabbit_foot 8
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 10 leather_boots 1
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 13 campfire 3
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 6
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-3 ~0
