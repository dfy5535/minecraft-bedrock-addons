# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0167/4224 | 主题内编号: b039/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·永恒圣火图腾方尖塔 (forest_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 oak_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 cobblestone []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 spider_eye 5
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 7
replaceitem block ~1 ~-3 ~2 slot.container 2 arrow 18
replaceitem block ~1 ~-3 ~2 slot.container 3 slime_ball 7
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~1 ~-3 ~2 slot.container 9 iron_axe 1
replaceitem block ~1 ~-3 ~2 slot.container 10 bow 1
replaceitem block ~1 ~-3 ~2 slot.container 11 lantern 4
replaceitem block ~1 ~-3 ~2 slot.container 12 honey_bottle 5
replaceitem block ~1 ~-3 ~2 slot.container 13 sweet_berries 12
replaceitem block ~1 ~-3 ~2 slot.container 14 cooked_porkchop 9
loot insert ~1 ~-3 ~2 loot "rsf/forest"
loot insert ~1 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 oak_log []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 oak_log []
fill ~3 ~1 ~4 ~3 ~11 ~4 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mossy_stone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 cobblestone []
fill ~0 ~17 ~0 ~0 ~19 ~0 emerald_block []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 oak_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 oak_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 oak_log []
setblock ~-5 ~4 ~0 chiseled_stone_bricks []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 oak_log []
setblock ~5 ~4 ~0 chiseled_stone_bricks []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 oak_log []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 oak_log []
fill ~-6 ~5 ~-7 ~6 ~5 ~-7 moss_block []
setblock ~-1 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 10
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 string 12
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 8
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 9 sweet_berries 16
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_porkchop 6
replaceitem block ~2 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~2 ~1 ~3 slot.container 12 oak_log 18
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~2 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~2 ~1 ~3 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
