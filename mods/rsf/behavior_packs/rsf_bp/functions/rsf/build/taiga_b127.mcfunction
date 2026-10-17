# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0767/4224 | 主题内编号: b127/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·万神殿巨型穹顶与试炼宫 (taiga_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 iron_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 22
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 4 string 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 9 spruce_log 17
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-4 ~5 slot.container 11 coal 15
replaceitem block ~0 ~-4 ~5 slot.container 12 emerald 7
replaceitem block ~0 ~-4 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~5 slot.container 14 campfire 8
loot insert ~0 ~-4 ~5 loot "rsf/taiga"
loot insert ~0 ~-4 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 spruce_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 spruce_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 spruce_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 spruce_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 spruce_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 spruce_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 spruce_slab []
setblock ~0 ~11 ~0 bookshelf []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 spruce_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 spruce_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-3 ~0 ~-8 ~-1 ~0 ~-9 mossy_cobblestone []
setblock ~-2 ~1 ~-9 campfire []
fill ~-3 ~1 ~-8 ~-3 ~6 ~-8 spruce_fence []
fill ~-1 ~1 ~-8 ~-1 ~6 ~-8 spruce_fence []
fill ~-3 ~7 ~-8 ~-1 ~7 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~6 brewing_stand []
setblock ~1 ~1 ~6 cauldron []
setblock ~0 ~1 ~6 iron_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 11
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_rabbit 10
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 11
replaceitem block ~5 ~1 ~6 slot.container 11 spruce_log 22
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 13 coal 13
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 5
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
