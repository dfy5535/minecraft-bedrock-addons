# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0164/4224 | 主题内编号: b036/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·下沉碑林地宫方尖碑 (forest_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 lantern []
setblock ~2 ~-5 ~-3 lantern []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 slime_ball 7
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 4 string 17
replaceitem block ~2 ~-3 ~3 slot.container 5 spider_eye 5
replaceitem block ~2 ~-3 ~3 slot.container 9 oak_log 21
replaceitem block ~2 ~-3 ~3 slot.container 10 emerald 9
replaceitem block ~2 ~-3 ~3 slot.container 11 golden_apple 1
replaceitem block ~2 ~-3 ~3 slot.container 12 iron_axe 1
replaceitem block ~2 ~-3 ~3 slot.container 13 bow 1
replaceitem block ~2 ~-3 ~3 slot.container 14 lantern 7
loot insert ~2 ~-3 ~3 loot "rsf/forest"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-8 ~-7 ~7 ~-8 oak_log []
fill ~7 ~0 ~-8 ~7 ~7 ~-8 oak_log []
fill ~-7 ~7 ~-8 ~7 ~7 ~-8 moss_block []
setblock ~0 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 blast_furnace []
setblock ~-2 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 2 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_porkchop 9
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 11 oak_log 21
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_apple 1
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_axe 1
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 15
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_porkchop 7
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 11 oak_log 19
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 14 iron_axe 1
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-3 ~0
