# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0678/4224 | 主题内编号: b038/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·四方凯旋衣冠冢 (taiga_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 spruce_planks []
setblock ~0 ~-5 ~0 iron_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 bone 15
replaceitem block ~0 ~-2 ~-3 slot.container 1 arrow 22
replaceitem block ~0 ~-2 ~-3 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 rabbit_hide 8
replaceitem block ~0 ~-2 ~-3 slot.container 9 sweet_berries 14
replaceitem block ~0 ~-2 ~-3 slot.container 10 cooked_rabbit 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 cooked_salmon 10
replaceitem block ~0 ~-2 ~-3 slot.container 12 spruce_log 21
replaceitem block ~0 ~-2 ~-3 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-2 ~-3 slot.container 14 coal 12
loot insert ~0 ~-2 ~-3 loot "rsf/taiga"
loot insert ~0 ~-2 ~-3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 cobblestone []
fill ~-4 ~1 ~-2 ~4 ~7 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 spruce_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~-3 ~0 ~-7 ~-1 ~0 ~-8 mossy_cobblestone []
setblock ~-2 ~1 ~-8 campfire []
fill ~-3 ~1 ~-7 ~-3 ~7 ~-7 spruce_fence []
fill ~-1 ~1 ~-7 ~-1 ~7 ~-7 spruce_fence []
fill ~-3 ~8 ~-7 ~-1 ~8 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 10 coal 12
replaceitem block ~-3 ~1 ~4 slot.container 11 emerald 4
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 campfire 5
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 8
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 10 coal 17
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 campfire 3
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 6
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
