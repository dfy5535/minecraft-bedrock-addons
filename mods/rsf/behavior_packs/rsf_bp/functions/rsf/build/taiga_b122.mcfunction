# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0762/4224 | 主题内编号: b122/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·十字穹顶宏伟圣堂与墓窟 (taiga_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 podzol []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 iron_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 7
replaceitem block ~0 ~-3 ~-5 slot.container 1 rabbit_hide 8
replaceitem block ~0 ~-3 ~-5 slot.container 2 leather 9
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 arrow 22
replaceitem block ~0 ~-3 ~-5 slot.container 9 cooked_salmon 8
replaceitem block ~0 ~-3 ~-5 slot.container 10 spruce_log 19
replaceitem block ~0 ~-3 ~-5 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~-5 slot.container 12 coal 17
replaceitem block ~0 ~-3 ~-5 slot.container 13 emerald 9
replaceitem block ~0 ~-3 ~-5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-5 loot "rsf/taiga"
loot insert ~0 ~-3 ~-5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~8 ~7 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 cobblestone []
fill ~-1 ~1 ~-6 ~1 ~7 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 mossy_stone_bricks []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cobblestone_wall []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 spruce_log []
setblock ~-6 ~7 ~-7 lantern []
setblock ~-6 ~6 ~7 spruce_log []
setblock ~-6 ~7 ~7 lantern []
setblock ~6 ~6 ~-7 spruce_log []
setblock ~6 ~7 ~-7 lantern []
setblock ~6 ~6 ~7 spruce_log []
setblock ~6 ~7 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~-2 ~0 ~-9 ~0 ~0 ~-10 mossy_cobblestone []
setblock ~-1 ~1 ~-10 campfire []
fill ~-2 ~1 ~-9 ~-2 ~6 ~-9 spruce_fence []
fill ~0 ~1 ~-9 ~0 ~6 ~-9 spruce_fence []
fill ~-2 ~7 ~-9 ~0 ~7 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 rabbit_hide 11
replaceitem block ~-5 ~1 ~6 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 emerald 9
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 11 campfire 3
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 13 sweet_berries 15
replaceitem block ~-5 ~1 ~6 slot.container 14 cooked_rabbit 10
loot insert ~-5 ~1 ~6 loot "rsf/taiga"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 rabbit_hide 6
replaceitem block ~5 ~1 ~6 slot.container 2 leather 7
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 13
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 11 campfire 8
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 13 sweet_berries 13
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_rabbit 8
loot insert ~5 ~1 ~6 loot "rsf/taiga"
loot insert ~5 ~1 ~6 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
