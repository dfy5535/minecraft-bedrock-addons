# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0715/4224 | 主题内编号: b075/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·远古巨石环廊法阵 (taiga_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 spruce_planks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 rabbit_hide 8
replaceitem block ~0 ~-3 ~-5 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-5 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 9 cooked_rabbit 10
replaceitem block ~0 ~-3 ~-5 slot.container 10 cooked_salmon 11
replaceitem block ~0 ~-3 ~-5 slot.container 11 spruce_log 22
replaceitem block ~0 ~-3 ~-5 slot.container 12 iron_ingot 6
replaceitem block ~0 ~-3 ~-5 slot.container 13 coal 13
replaceitem block ~0 ~-3 ~-5 slot.container 14 emerald 5
loot insert ~0 ~-3 ~-5 loot "rsf/taiga"
loot insert ~0 ~-3 ~-5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 spruce_log []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 spruce_log []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 spruce_log []
fill ~0 ~1 ~7 ~0 ~5 ~7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 spruce_log []
fill ~2 ~1 ~7 ~2 ~5 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~5 ~7 spruce_log []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 spruce_log []
fill ~6 ~1 ~7 ~6 ~5 ~7 spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 spruce_log []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 spruce_log []
setblock ~-6 ~9 ~7 lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 spruce_log []
setblock ~6 ~9 ~-7 lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 spruce_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-8 mossy_cobblestone []
setblock ~0 ~1 ~-8 campfire []
fill ~-1 ~1 ~-7 ~-1 ~4 ~-7 spruce_fence []
fill ~1 ~1 ~-7 ~1 ~4 ~-7 spruce_fence []
fill ~-1 ~5 ~-7 ~1 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 3 leather 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 coal 13
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 campfire 6
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 14 sweet_berries 18
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
