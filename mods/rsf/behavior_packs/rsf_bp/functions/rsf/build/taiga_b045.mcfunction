# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0685/4224 | 主题内编号: b045/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·十二柱神殿试炼场 (taiga_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 arrow 22
replaceitem block ~3 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~5 slot.container 2 string 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 rabbit_hide 8
replaceitem block ~3 ~-4 ~5 slot.container 5 leather 9
replaceitem block ~3 ~-4 ~5 slot.container 9 coal 13
replaceitem block ~3 ~-4 ~5 slot.container 10 emerald 5
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 12 campfire 6
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 14 sweet_berries 18
loot insert ~3 ~-4 ~5 loot "rsf/taiga"
loot insert ~3 ~-4 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 spruce_planks []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 stripped_spruce_log []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 stripped_spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 stripped_spruce_log []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 stripped_spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 stripped_spruce_log []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 stripped_spruce_log []
fill ~0 ~1 ~7 ~0 ~5 ~7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 stripped_spruce_log []
fill ~2 ~1 ~7 ~2 ~5 ~7 stripped_spruce_log []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 stripped_spruce_log []
fill ~4 ~1 ~7 ~4 ~5 ~7 stripped_spruce_log []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 stripped_spruce_log []
fill ~6 ~1 ~7 ~6 ~5 ~7 stripped_spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 stripped_spruce_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 stripped_spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 stripped_spruce_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 stripped_spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 stripped_spruce_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 stripped_spruce_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 stripped_spruce_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 stripped_spruce_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 stripped_spruce_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 stripped_spruce_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 stripped_spruce_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 stripped_spruce_log []
setblock ~-6 ~9 ~-7 campfire []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 stripped_spruce_log []
setblock ~-6 ~9 ~7 campfire []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 stripped_spruce_log []
setblock ~6 ~9 ~-7 campfire []
fill ~6 ~6 ~7 ~6 ~8 ~7 stripped_spruce_log []
setblock ~6 ~9 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_spruce_log []
setblock ~0 ~4 ~-9 bookshelf []
setblock ~0 ~5 ~-9 campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_spruce_log []
setblock ~0 ~4 ~9 bookshelf []
setblock ~0 ~5 ~9 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_spruce_log []
setblock ~-8 ~4 ~0 bookshelf []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_spruce_log []
setblock ~8 ~4 ~0 bookshelf []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-8 mossy_cobblestone []
setblock ~0 ~1 ~-8 campfire []
fill ~-1 ~1 ~-7 ~-1 ~4 ~-7 spruce_fence []
fill ~1 ~1 ~-7 ~1 ~4 ~-7 spruce_fence []
fill ~-1 ~5 ~-7 ~1 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 barrel []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 1 leather 12
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 coal 18
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 3
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 campfire 4
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~6 slot.container 14 sweet_berries 16
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
