# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0889/4224 | 主题内编号: b121/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·卫城廊柱王座大殿与地宫 (cold_taiga_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 2 arrow 22
replaceitem block ~0 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 9 lantern 10
replaceitem block ~0 ~-3 ~4 slot.container 10 cooked_mutton 8
replaceitem block ~0 ~-3 ~4 slot.container 11 sweet_berries 13
replaceitem block ~0 ~-3 ~4 slot.container 12 spruce_log 18
replaceitem block ~0 ~-3 ~4 slot.container 13 coal 19
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_ingot 10
loot insert ~0 ~-3 ~4 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~4 loot "chests/igloo_chest"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 20
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 cooked_mutton 14
replaceitem block ~0 ~-3 ~-4 slot.container 11 sweet_berries 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 spruce_log 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 coal 18
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 9
loot insert ~0 ~-3 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~8 ~6 deepslate_bricks []
fill ~-6 ~1 ~0 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 spruce_log []
fill ~-7 ~8 ~-6 ~7 ~8 ~-1 spruce_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~9 ~-7 ~-8 ~9 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~8 ~9 ~-7 ~8 ~9 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-7 ~10 ~-6 ~-7 ~10 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-6 ~7 ~10 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~10 ~-6 ~6 ~10 ~6 deepslate_brick_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-7 ~0 ~7 ~-8 ~15 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~16 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 4 leather 13
replaceitem block ~6 ~1 ~4 slot.container 5 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 10 campfire 3
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 12 cooked_mutton 11
replaceitem block ~6 ~1 ~4 slot.container 13 sweet_berries 16
replaceitem block ~6 ~1 ~4 slot.container 14 spruce_log 21
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 2 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 3 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 10 campfire 8
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 12 cooked_mutton 9
replaceitem block ~-6 ~1 ~5 slot.container 13 sweet_berries 14
replaceitem block ~-6 ~1 ~5 slot.container 14 spruce_log 19
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
