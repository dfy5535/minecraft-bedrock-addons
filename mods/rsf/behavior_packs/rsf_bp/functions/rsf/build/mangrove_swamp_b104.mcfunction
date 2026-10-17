# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1768/4224 | 主题内编号: b104/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双层指挥台卫戍堡 (mangrove_swamp_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 mangrove_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 spider_eye 7
replaceitem block ~3 ~-2 ~4 slot.container 1 gunpowder 8
replaceitem block ~3 ~-2 ~4 slot.container 2 prismarine_shard 7
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 slime_ball 19
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 boat 1
replaceitem block ~3 ~-2 ~4 slot.container 10 lantern 5
replaceitem block ~3 ~-2 ~4 slot.container 11 mangrove_log 18
replaceitem block ~3 ~-2 ~4 slot.container 12 mud_bricks 19
replaceitem block ~3 ~-2 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~3 ~-2 ~4 slot.container 14 iron_ingot 11
loot insert ~3 ~-2 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 mud_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-6 ~4 ~-7 ~6 ~4 ~7 mud_brick_slab []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 mangrove_planks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mud_bricks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 mangrove_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~-2 ~-3 ~-8 ~6 ~-3 mangrove_roots []
fill ~8 ~-2 ~-3 ~8 ~6 ~-3 mangrove_roots []
fill ~-8 ~7 ~-3 ~8 ~7 ~-3 mud_brick_slab []
setblock ~0 ~8 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~-4 ~1 ~5 slot.container 11 lead 8
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~-4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 6
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 11 lead 6
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 4
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
