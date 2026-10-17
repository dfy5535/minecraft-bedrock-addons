# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0665/4224 | 主题内编号: b025/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·雉堞女墙四方哨塔 (taiga_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 stripped_spruce_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 stripped_spruce_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 stripped_spruce_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 stripped_spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~9 ~-4 ~3 ~9 ~4 spruce_planks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 cobblestone_wall []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~-3 ~10 ~-4 stripped_spruce_log []
setblock ~-3 ~11 ~-4 campfire []
setblock ~-3 ~10 ~4 stripped_spruce_log []
setblock ~-3 ~11 ~4 campfire []
setblock ~3 ~10 ~-4 stripped_spruce_log []
setblock ~3 ~11 ~-4 campfire []
setblock ~3 ~10 ~4 stripped_spruce_log []
setblock ~3 ~11 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 spruce_log []
setblock ~-6 ~4 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 spruce_log []
setblock ~-6 ~4 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 spruce_log []
setblock ~6 ~4 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~3 ~7 spruce_log []
setblock ~6 ~4 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 4x6x3) ---
fill ~-1 ~0 ~-5 ~1 ~0 ~-6 mossy_cobblestone []
setblock ~0 ~1 ~-6 campfire []
fill ~-1 ~1 ~-5 ~-1 ~4 ~-5 spruce_fence []
fill ~1 ~1 ~-5 ~1 ~4 ~-5 spruce_fence []
fill ~-1 ~5 ~-5 ~1 ~5 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 17
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 rabbit_hide 11
replaceitem block ~2 ~1 ~3 slot.container 5 leather 12
replaceitem block ~2 ~1 ~3 slot.container 9 coal 12
replaceitem block ~2 ~1 ~3 slot.container 10 emerald 4
replaceitem block ~2 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 12 campfire 5
replaceitem block ~2 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~2 ~1 ~3 slot.container 14 sweet_berries 17
loot insert ~2 ~1 ~3 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
