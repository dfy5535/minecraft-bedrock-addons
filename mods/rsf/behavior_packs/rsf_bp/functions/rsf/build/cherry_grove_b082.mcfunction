# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1874/4224 | 主题内编号: b082/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·竖井井架矿工物资站 (cherry_grove_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 6格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 soul_lantern []
setblock ~3 ~-7 ~-2 soul_lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-5 ~2 slot.container 1 ender_pearl 4
replaceitem block ~3 ~-5 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~3 ~-5 ~2 slot.container 3 feather 12
replaceitem block ~3 ~-5 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-5 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-5 ~2 slot.container 9 golden_apple 2
replaceitem block ~3 ~-5 ~2 slot.container 10 iron_ingot 7
replaceitem block ~3 ~-5 ~2 slot.container 11 emerald 6
replaceitem block ~3 ~-5 ~2 slot.container 12 amethyst_shard 9
replaceitem block ~3 ~-5 ~2 slot.container 13 bow 1
replaceitem block ~3 ~-5 ~2 slot.container 14 lantern 9
loot insert ~3 ~-5 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-5 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 cherry_planks []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 cherry_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 cherry_planks []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 polished_deepslate []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 cherry_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 calcite []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x6x4) ---
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
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 10
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 7
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 feather 15
replaceitem block ~-4 ~1 ~2 slot.container 9 honey_bottle 9
replaceitem block ~-4 ~1 ~2 slot.container 10 honeycomb 12
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 13 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 14 amethyst_shard 9
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-5 ~0
