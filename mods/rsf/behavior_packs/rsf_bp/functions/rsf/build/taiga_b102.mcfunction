# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0742/4224 | 主题内编号: b102/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子箭塔联防碉楼 (taiga_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 podzol []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 torch []
setblock ~4 ~-4 ~-3 torch []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 22
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 3 string 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 5 rabbit_hide 8
replaceitem block ~4 ~-2 ~3 slot.container 9 campfire 4
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 11 sweet_berries 16
replaceitem block ~4 ~-2 ~3 slot.container 12 cooked_rabbit 11
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~-2 ~3 slot.container 14 spruce_log 16
loot insert ~4 ~-2 ~3 loot "rsf/taiga"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 cobblestone []
fill ~2 ~1 ~-5 ~6 ~8 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 spruce_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 spruce_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-4 ~0 ~-5 ~-2 ~0 ~-6 mossy_cobblestone []
setblock ~-3 ~1 ~-6 campfire []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_fence []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_fence []
fill ~-4 ~7 ~-5 ~-2 ~7 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 3
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 11 campfire 4
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 13 sweet_berries 16
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_rabbit 11
loot insert ~-5 ~1 ~4 loot "rsf/taiga"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 13
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 5 rabbit_hide 6
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 11 campfire 2
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~5 ~1 ~4 slot.container 13 sweet_berries 14
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_rabbit 9
loot insert ~5 ~1 ~4 loot "rsf/taiga"
loot insert ~5 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
