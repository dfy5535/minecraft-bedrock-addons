# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0250/4224 | 主题内编号: b122/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十字穹顶宏伟圣堂与墓窟 (forest_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 moss_block []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 7
replaceitem block ~0 ~-3 ~-5 slot.container 1 arrow 18
replaceitem block ~0 ~-3 ~-5 slot.container 2 slime_ball 7
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 golden_apple 2
replaceitem block ~0 ~-3 ~-5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-3 ~-5 slot.container 11 bow 1
replaceitem block ~0 ~-3 ~-5 slot.container 12 lantern 8
replaceitem block ~0 ~-3 ~-5 slot.container 13 honey_bottle 9
replaceitem block ~0 ~-3 ~-5 slot.container 14 sweet_berries 16
loot insert ~0 ~-3 ~-5 loot "rsf/forest"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~10 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~10 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~9 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~9 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 moss_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 bookshelf []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~9 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~9 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-9 ~0 ~-9 ~-9 ~8 ~-9 spruce_log []
fill ~9 ~0 ~-9 ~9 ~8 ~-9 spruce_log []
fill ~-9 ~8 ~-9 ~9 ~8 ~-9 moss_block []
setblock ~-1 ~9 ~-9 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 12
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 8
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 4 slime_ball 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 honey_bottle 9
replaceitem block ~-5 ~1 ~6 slot.container 10 sweet_berries 16
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_porkchop 6
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 13 oak_log 18
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 6
loot insert ~-5 ~1 ~6 loot "rsf/forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 16
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 honey_bottle 7
replaceitem block ~5 ~1 ~6 slot.container 10 sweet_berries 14
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_porkchop 11
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 13 oak_log 16
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 4
loot insert ~5 ~1 ~6 loot "rsf/forest"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
