# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0154/4224 | 主题内编号: b026/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·尖顶信标引航高塔 (forest_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 cobblestone []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 slime_ball 7
replaceitem block ~1 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~1 ~-2 ~2 slot.container 2 rotten_flesh 15
replaceitem block ~1 ~-2 ~2 slot.container 3 bone 16
replaceitem block ~1 ~-2 ~2 slot.container 4 string 17
replaceitem block ~1 ~-2 ~2 slot.container 5 spider_eye 5
replaceitem block ~1 ~-2 ~2 slot.container 9 golden_apple 4
replaceitem block ~1 ~-2 ~2 slot.container 10 iron_axe 1
replaceitem block ~1 ~-2 ~2 slot.container 11 bow 1
replaceitem block ~1 ~-2 ~2 slot.container 12 lantern 10
replaceitem block ~1 ~-2 ~2 slot.container 13 honey_bottle 4
replaceitem block ~1 ~-2 ~2 slot.container 14 sweet_berries 11
loot insert ~1 ~-2 ~2 loot "rsf/forest"
loot insert ~1 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~12 ~4 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~11 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~13 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~13 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~13 ~4 air []
fill ~3 ~1 ~4 ~3 ~13 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~12 ~-3 spruce_log []
fill ~2 ~1 ~-3 ~2 ~12 ~-3 spruce_log []
fill ~-2 ~1 ~3 ~-2 ~12 ~3 spruce_log []
fill ~2 ~1 ~3 ~2 ~12 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 moss_block []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 stone_bricks []
fill ~0 ~18 ~0 ~0 ~20 ~0 bookshelf []
setblock ~0 ~21 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~11 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~11 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~11 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~11 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-6 ~0 ~-6 ~-6 ~7 ~-6 spruce_log []
fill ~6 ~0 ~-6 ~6 ~7 ~-6 spruce_log []
fill ~-6 ~7 ~-6 ~6 ~7 ~-6 moss_block []
setblock ~1 ~8 ~-6 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 string 12
replaceitem block ~-2 ~1 ~3 slot.container 1 spider_eye 8
replaceitem block ~-2 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-2 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-2 ~1 ~3 slot.container 4 slime_ball 10
replaceitem block ~-2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-2 ~1 ~3 slot.container 9 cooked_porkchop 6
replaceitem block ~-2 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-2 ~1 ~3 slot.container 11 oak_log 18
replaceitem block ~-2 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~-2 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-2 ~1 ~3 slot.container 14 iron_axe 1
loot insert ~-2 ~1 ~3 loot "rsf/forest"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 1 arrow 16
replaceitem block ~2 ~1 ~3 slot.container 2 slime_ball 5
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~2 ~1 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 5 bone 14
replaceitem block ~2 ~1 ~3 slot.container 9 cooked_porkchop 11
replaceitem block ~2 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~2 ~1 ~3 slot.container 11 oak_log 16
replaceitem block ~2 ~1 ~3 slot.container 12 emerald 4
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~2 ~1 ~3 slot.container 14 iron_axe 1
loot insert ~2 ~1 ~3 loot "rsf/forest"
loot insert ~2 ~1 ~3 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
