# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0162/4224 | 主题内编号: b034/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子对称铭文方尖碑 (forest_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 slime_ball 7
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 16
replaceitem block ~3 ~-2 ~2 slot.container 4 string 17
replaceitem block ~3 ~-2 ~2 slot.container 5 spider_eye 5
replaceitem block ~3 ~-2 ~2 slot.container 9 honey_bottle 8
replaceitem block ~3 ~-2 ~2 slot.container 10 sweet_berries 15
replaceitem block ~3 ~-2 ~2 slot.container 11 cooked_porkchop 12
replaceitem block ~3 ~-2 ~2 slot.container 12 iron_ingot 6
replaceitem block ~3 ~-2 ~2 slot.container 13 oak_log 17
replaceitem block ~3 ~-2 ~2 slot.container 14 emerald 5
loot insert ~3 ~-2 ~2 loot "rsf/forest"
loot insert ~3 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~12 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~12 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~11 ~3 air []
fill ~3 ~1 ~-3 ~4 ~11 ~3 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 moss_block []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 moss_block []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 stone_bricks []
fill ~0 ~17 ~0 ~0 ~19 ~0 bookshelf []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 moss_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-8 ~0 ~-5 ~-8 ~5 ~-5 spruce_log []
fill ~8 ~0 ~-5 ~8 ~5 ~-5 spruce_log []
fill ~-8 ~5 ~-5 ~8 ~5 ~-5 moss_block []
setblock ~-2 ~6 ~-5 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 12
replaceitem block ~-4 ~1 ~3 slot.container 1 spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~3 slot.container 4 slime_ball 10
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~3 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 12 lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 13 honey_bottle 9
replaceitem block ~-4 ~1 ~3 slot.container 14 sweet_berries 16
loot insert ~-4 ~1 ~3 loot "rsf/forest"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 arrow 16
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 5
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 10 iron_axe 1
replaceitem block ~4 ~1 ~3 slot.container 11 bow 1
replaceitem block ~4 ~1 ~3 slot.container 12 lantern 6
replaceitem block ~4 ~1 ~3 slot.container 13 honey_bottle 7
replaceitem block ~4 ~1 ~3 slot.container 14 sweet_berries 14
loot insert ~4 ~1 ~3 loot "rsf/forest"
loot insert ~4 ~1 ~3 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
