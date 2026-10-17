# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0738/4224 | 主题内编号: b098/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·四角炮楼重装要塞 (taiga_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 podzol []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 torch []
setblock ~4 ~-5 ~-5 torch []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 7
replaceitem block ~4 ~-3 ~5 slot.container 1 rabbit_hide 8
replaceitem block ~4 ~-3 ~5 slot.container 2 leather 9
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 bone 15
replaceitem block ~4 ~-3 ~5 slot.container 5 arrow 22
replaceitem block ~4 ~-3 ~5 slot.container 9 emerald 8
replaceitem block ~4 ~-3 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~-3 ~5 slot.container 11 campfire 2
replaceitem block ~4 ~-3 ~5 slot.container 12 lantern 5
replaceitem block ~4 ~-3 ~5 slot.container 13 sweet_berries 14
replaceitem block ~4 ~-3 ~5 slot.container 14 cooked_rabbit 9
loot insert ~4 ~-3 ~5 loot "rsf/taiga"
loot insert ~4 ~-3 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 cobblestone []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 spruce_planks []
setblock ~-6 ~9 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 spruce_planks []
setblock ~-6 ~9 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 spruce_planks []
setblock ~5 ~9 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~8 ~7 spruce_planks []
setblock ~5 ~9 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 spruce_planks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 spruce_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 spruce_log []
setblock ~-6 ~8 ~-7 torch []
setblock ~-6 ~7 ~7 spruce_log []
setblock ~-6 ~8 ~7 torch []
setblock ~6 ~7 ~-7 spruce_log []
setblock ~6 ~8 ~-7 torch []
setblock ~6 ~7 ~7 spruce_log []
setblock ~6 ~8 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x10x6) ---
fill ~-2 ~0 ~-9 ~0 ~0 ~-10 mossy_cobblestone []
setblock ~-1 ~1 ~-10 campfire []
fill ~-2 ~1 ~-9 ~-2 ~7 ~-9 spruce_fence []
fill ~0 ~1 ~-9 ~0 ~7 ~-9 spruce_fence []
fill ~-2 ~8 ~-9 ~0 ~8 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 rabbit_hide 11
replaceitem block ~-5 ~1 ~6 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 10 coal 16
replaceitem block ~-5 ~1 ~6 slot.container 11 emerald 8
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 13 campfire 2
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 5
loot insert ~-5 ~1 ~6 loot "rsf/taiga"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 rabbit_hide 6
replaceitem block ~5 ~1 ~6 slot.container 2 leather 7
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 13
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 10 coal 14
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 campfire 7
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 10
loot insert ~5 ~1 ~6 loot "rsf/taiga"
loot insert ~5 ~1 ~6 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
