# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1744/4224 | 主题内编号: b080/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·悬灯祈福图腾花坛 (mangrove_swamp_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 mangrove_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 mud_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 mangrove_planks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mud_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 mangrove_planks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 mangrove_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 mangrove_log []
setblock ~0 ~4 ~-7 slime []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 mangrove_log []
setblock ~0 ~4 ~7 slime []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 mangrove_log []
setblock ~-6 ~4 ~0 slime []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 mangrove_log []
setblock ~6 ~4 ~0 slime []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 9
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-3 ~1 ~4 slot.container 13 lead 7
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 6
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 14
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 5
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 13 lead 5
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
