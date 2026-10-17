# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0705/4224 | 主题内编号: b065/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·断柱露天古神庙废墟 (taiga_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 barrel []
setblock ~-4 ~-5 ~-5 campfire []
setblock ~4 ~-5 ~5 campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 rabbit_hide 8
replaceitem block ~0 ~-3 ~5 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~5 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 10 campfire 6
replaceitem block ~0 ~-3 ~5 slot.container 11 lantern 9
replaceitem block ~0 ~-3 ~5 slot.container 12 sweet_berries 18
replaceitem block ~0 ~-3 ~5 slot.container 13 cooked_rabbit 6
replaceitem block ~0 ~-3 ~5 slot.container 14 cooked_salmon 7
loot insert ~0 ~-3 ~5 loot "rsf/taiga"
loot insert ~0 ~-3 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 spruce_planks []
fill ~-5 ~1 ~-7 ~-5 ~4 ~-7 stripped_spruce_log []
fill ~-5 ~1 ~7 ~-5 ~4 ~7 stripped_spruce_log []
fill ~-3 ~1 ~-7 ~-3 ~4 ~-7 stripped_spruce_log []
fill ~-3 ~1 ~7 ~-3 ~4 ~7 stripped_spruce_log []
fill ~-1 ~1 ~-7 ~-1 ~4 ~-7 stripped_spruce_log []
fill ~-1 ~1 ~7 ~-1 ~4 ~7 stripped_spruce_log []
fill ~1 ~1 ~-7 ~1 ~4 ~-7 stripped_spruce_log []
fill ~1 ~1 ~7 ~1 ~4 ~7 stripped_spruce_log []
fill ~3 ~1 ~-7 ~3 ~4 ~-7 stripped_spruce_log []
fill ~3 ~1 ~7 ~3 ~4 ~7 stripped_spruce_log []
fill ~5 ~1 ~-7 ~5 ~4 ~-7 stripped_spruce_log []
fill ~5 ~1 ~7 ~5 ~4 ~7 stripped_spruce_log []
fill ~-5 ~1 ~-5 ~-5 ~4 ~-5 stripped_spruce_log []
fill ~5 ~1 ~-5 ~5 ~4 ~-5 stripped_spruce_log []
fill ~-5 ~1 ~-3 ~-5 ~4 ~-3 stripped_spruce_log []
fill ~5 ~1 ~-3 ~5 ~4 ~-3 stripped_spruce_log []
fill ~-5 ~1 ~-1 ~-5 ~4 ~-1 stripped_spruce_log []
fill ~5 ~1 ~-1 ~5 ~4 ~-1 stripped_spruce_log []
fill ~-5 ~1 ~1 ~-5 ~4 ~1 stripped_spruce_log []
fill ~5 ~1 ~1 ~5 ~4 ~1 stripped_spruce_log []
fill ~-5 ~1 ~3 ~-5 ~4 ~3 stripped_spruce_log []
fill ~5 ~1 ~3 ~5 ~4 ~3 stripped_spruce_log []
fill ~-5 ~1 ~5 ~-5 ~4 ~5 stripped_spruce_log []
fill ~5 ~1 ~5 ~5 ~4 ~5 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~3 ~-9 stripped_spruce_log []
setblock ~-7 ~4 ~-9 campfire []
fill ~-7 ~0 ~9 ~-7 ~3 ~9 stripped_spruce_log []
setblock ~-7 ~4 ~9 campfire []
fill ~7 ~0 ~-9 ~7 ~3 ~-9 stripped_spruce_log []
setblock ~7 ~4 ~-9 campfire []
fill ~7 ~0 ~9 ~7 ~3 ~9 stripped_spruce_log []
setblock ~7 ~4 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x10x3) ---
fill ~0 ~0 ~-9 ~2 ~0 ~-10 mossy_cobblestone []
setblock ~1 ~1 ~-10 campfire []
fill ~0 ~1 ~-9 ~0 ~4 ~-9 spruce_fence []
fill ~2 ~1 ~-9 ~2 ~4 ~-9 spruce_fence []
fill ~0 ~5 ~-9 ~2 ~5 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 2 string 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~6 slot.container 4 rabbit_hide 11
replaceitem block ~4 ~1 ~6 slot.container 5 leather 12
replaceitem block ~4 ~1 ~6 slot.container 9 coal 17
replaceitem block ~4 ~1 ~6 slot.container 10 emerald 9
replaceitem block ~4 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 12 campfire 3
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~6 slot.container 14 sweet_berries 15
loot insert ~4 ~1 ~6 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
