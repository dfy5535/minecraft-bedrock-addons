# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0700/4224 | 主题内编号: b060/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·圆形穹顶万骨祠堂 (taiga_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 spruce_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 spruce_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 3 rabbit_hide 8
replaceitem block ~0 ~-3 ~4 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~0 ~-3 ~4 slot.container 10 spruce_log 16
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-3 ~4 slot.container 12 coal 14
replaceitem block ~0 ~-3 ~4 slot.container 13 emerald 6
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~4 loot "rsf/taiga"
loot insert ~0 ~-3 ~4 loot "chests/village/village_taiga_house"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 rabbit_hide 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 leather 7
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_salmon 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 spruce_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 12 coal 13
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-4 loot "rsf/taiga"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mossy_cobblestone []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 stripped_spruce_log []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 stripped_spruce_log []
setblock ~-5 ~10 ~6 campfire []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 stripped_spruce_log []
setblock ~5 ~10 ~-6 campfire []
fill ~5 ~7 ~6 ~5 ~9 ~6 stripped_spruce_log []
setblock ~5 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 barrel []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 barrel []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 barrel []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 barrel []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~0 ~0 ~-6 ~2 ~0 ~-7 mossy_cobblestone []
setblock ~1 ~1 ~-7 campfire []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_fence []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 spruce_fence []
fill ~0 ~5 ~-6 ~2 ~5 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 chiseled_stone_bricks []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 rabbit_hide 11
replaceitem block ~-4 ~1 ~5 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~5 slot.container 9 sweet_berries 12
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_rabbit 7
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 8
replaceitem block ~-4 ~1 ~5 slot.container 12 spruce_log 19
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 14 coal 17
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 7
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 bone 13
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 sweet_berries 17
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_rabbit 12
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 6
replaceitem block ~4 ~1 ~5 slot.container 12 spruce_log 17
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 14 coal 15
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
