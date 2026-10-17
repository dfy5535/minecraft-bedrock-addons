# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1834/4224 | 主题内编号: b042/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·地底铁栏死斗深坑 (cherry_grove_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 soul_lantern []
setblock ~4 ~-6 ~-3 soul_lantern []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-4 ~3 slot.container 1 ender_pearl 4
replaceitem block ~4 ~-4 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~4 ~-4 ~3 slot.container 3 feather 12
replaceitem block ~4 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-4 ~3 slot.container 5 bone 14
replaceitem block ~4 ~-4 ~3 slot.container 9 golden_apple 4
replaceitem block ~4 ~-4 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-4 ~3 slot.container 11 emerald 8
replaceitem block ~4 ~-4 ~3 slot.container 12 amethyst_shard 11
replaceitem block ~4 ~-4 ~3 slot.container 13 bow 1
replaceitem block ~4 ~-4 ~3 slot.container 14 lantern 4
loot insert ~4 ~-4 ~3 loot "rsf/cherry_grove"
loot insert ~4 ~-4 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cherry_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_deepslate []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~4 ~-5 ~-6 ~6 ~-5 cherry_log []
setblock ~-6 ~7 ~-5 soul_lantern []
fill ~-6 ~4 ~5 ~-6 ~6 ~5 cherry_log []
setblock ~-6 ~7 ~5 soul_lantern []
fill ~6 ~4 ~-5 ~6 ~6 ~-5 cherry_log []
setblock ~6 ~7 ~-5 soul_lantern []
fill ~6 ~4 ~5 ~6 ~6 ~5 cherry_log []
setblock ~6 ~7 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cherry_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-2 ~0 ~-7 ~-2 ~6 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~6 ~-7 cherry_log []
fill ~-3 ~6 ~-7 ~3 ~6 ~-7 cherry_slab []
fill ~-2 ~5 ~-7 ~2 ~5 ~-7 stripped_cherry_log []
setblock ~0 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 7
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 feather 15
replaceitem block ~-5 ~1 ~3 slot.container 9 honey_bottle 4
replaceitem block ~-5 ~1 ~3 slot.container 10 honeycomb 7
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~-5 ~1 ~3 slot.container 14 amethyst_shard 11
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
