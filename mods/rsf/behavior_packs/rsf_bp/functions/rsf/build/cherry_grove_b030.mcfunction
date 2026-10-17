# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1822/4224 | 主题内编号: b030/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双坡顶驻军卫戍塔 (cherry_grove_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 soul_lantern []
setblock ~3 ~-5 ~-2 soul_lantern []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~3 ~-3 ~2 slot.container 3 gunpowder 6
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 4
replaceitem block ~3 ~-3 ~2 slot.container 9 bow 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 9
replaceitem block ~3 ~-3 ~2 slot.container 11 cherry_log 22
replaceitem block ~3 ~-3 ~2 slot.container 12 cherry_sapling 4
replaceitem block ~3 ~-3 ~2 slot.container 13 honey_bottle 5
replaceitem block ~3 ~-3 ~2 slot.container 14 honeycomb 8
loot insert ~3 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~8 ~4 cherry_planks []
fill ~-5 ~1 ~0 ~5 ~7 ~4 cherry_planks []
fill ~-4 ~1 ~-3 ~-1 ~7 ~3 air []
fill ~-1 ~1 ~1 ~4 ~6 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 cherry_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 cherry_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-4 ~-5 ~10 ~4 cherry_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-4 ~5 ~10 ~4 cherry_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-4 ~4 ~10 ~4 cherry_slab []
fill ~0 ~11 ~-5 ~0 ~11 ~5 polished_deepslate []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 cherry_planks []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-2 ~0 ~-6 ~-2 ~4 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~4 ~-6 cherry_log []
fill ~-3 ~4 ~-6 ~3 ~4 ~-6 cherry_slab []
fill ~-2 ~3 ~-6 ~2 ~3 ~-6 stripped_cherry_log []
setblock ~-2 ~5 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 1 feather 15
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 8
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 10
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 10 amethyst_shard 9
replaceitem block ~-4 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 13 cherry_log 22
replaceitem block ~-4 ~1 ~2 slot.container 14 cherry_sapling 4
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
