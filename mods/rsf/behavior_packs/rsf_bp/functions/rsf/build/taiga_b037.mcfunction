# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0677/4224 | 主题内编号: b037/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·环廊聖柱纪念碑 (taiga_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 barrel []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 rabbit_hide 8
replaceitem block ~3 ~-3 ~0 slot.container 1 leather 9
replaceitem block ~3 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 3 bone 15
replaceitem block ~3 ~-3 ~0 slot.container 4 arrow 22
replaceitem block ~3 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 10 campfire 6
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 9
replaceitem block ~3 ~-3 ~0 slot.container 12 sweet_berries 18
replaceitem block ~3 ~-3 ~0 slot.container 13 cooked_rabbit 6
replaceitem block ~3 ~-3 ~0 slot.container 14 cooked_salmon 7
loot insert ~3 ~-3 ~0 loot "rsf/taiga"
loot insert ~3 ~-3 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 stripped_spruce_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 stripped_spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 stripped_spruce_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 stripped_spruce_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 stripped_spruce_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 stripped_spruce_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 stripped_spruce_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 stripped_spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 stripped_spruce_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 stripped_spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 stripped_spruce_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 stripped_spruce_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 stripped_spruce_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 stripped_spruce_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 stripped_spruce_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 stripped_spruce_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 stripped_spruce_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 stripped_spruce_log []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 stripped_spruce_log []
setblock ~-5 ~10 ~6 campfire []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 stripped_spruce_log []
setblock ~5 ~10 ~-6 campfire []
fill ~5 ~7 ~6 ~5 ~9 ~6 stripped_spruce_log []
setblock ~5 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-3 ~0 ~-7 ~-1 ~0 ~-8 mossy_cobblestone []
setblock ~-2 ~1 ~-8 campfire []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 spruce_fence []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 spruce_fence []
fill ~-3 ~7 ~-7 ~-1 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_rabbit 11
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_salmon 12
replaceitem block ~4 ~1 ~5 slot.container 11 spruce_log 16
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 13 coal 14
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 6
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
