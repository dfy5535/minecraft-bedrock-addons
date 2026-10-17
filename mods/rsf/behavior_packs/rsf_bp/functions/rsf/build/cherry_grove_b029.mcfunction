# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1821/4224 | 主题内编号: b029/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·奥术星象琉璃塔 (cherry_grove_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cherry_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 amethyst_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 ender_pearl 4
replaceitem block ~3 ~-2 ~0 slot.container 1 phantom_membrane 5
replaceitem block ~3 ~-2 ~0 slot.container 2 feather 12
replaceitem block ~3 ~-2 ~0 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-2 ~0 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~0 slot.container 5 string 15
replaceitem block ~3 ~-2 ~0 slot.container 9 lantern 10
replaceitem block ~3 ~-2 ~0 slot.container 10 cherry_log 16
replaceitem block ~3 ~-2 ~0 slot.container 11 cherry_sapling 5
replaceitem block ~3 ~-2 ~0 slot.container 12 honey_bottle 6
replaceitem block ~3 ~-2 ~0 slot.container 13 honeycomb 9
replaceitem block ~3 ~-2 ~0 slot.container 14 golden_apple 6
loot insert ~3 ~-2 ~0 loot "rsf/cherry_grove"
loot insert ~3 ~-2 ~0 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cherry_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cherry_planks []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 cherry_log []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 cherry_log []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 cherry_log []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 cherry_log []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-8 ~-2 ~8 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~8 ~-8 cherry_log []
fill ~-3 ~8 ~-8 ~3 ~8 ~-8 cherry_slab []
fill ~-2 ~7 ~-8 ~2 ~7 ~-8 stripped_cherry_log []
setblock ~2 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 7
replaceitem block ~4 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 2 feather 15
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 8
replaceitem block ~4 ~1 ~2 slot.container 4 bone 9
replaceitem block ~4 ~1 ~2 slot.container 5 string 10
replaceitem block ~4 ~1 ~2 slot.container 9 honeycomb 7
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~4 ~1 ~2 slot.container 13 amethyst_shard 11
replaceitem block ~4 ~1 ~2 slot.container 14 bow 1
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 3 string 13
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 honeycomb 12
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~-4 ~1 ~3 slot.container 13 amethyst_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 14 bow 1
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
