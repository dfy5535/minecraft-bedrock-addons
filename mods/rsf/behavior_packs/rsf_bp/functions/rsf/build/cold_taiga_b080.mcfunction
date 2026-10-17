# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0848/4224 | 主题内编号: b080/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·悬灯祈福图腾花坛 (cold_taiga_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 stone_brick_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 deepslate_bricks []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 stripped_spruce_log []
setblock ~0 ~4 ~-6 coal_block []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 stripped_spruce_log []
setblock ~0 ~4 ~6 coal_block []
setblock ~0 ~5 ~6 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_spruce_log []
setblock ~-7 ~4 ~0 coal_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_spruce_log []
setblock ~7 ~4 ~0 coal_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-5 ~0 ~5 ~-6 ~13 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~14 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 10 leather_boots 1
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 13 campfire 7
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 10
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~2 ~0
