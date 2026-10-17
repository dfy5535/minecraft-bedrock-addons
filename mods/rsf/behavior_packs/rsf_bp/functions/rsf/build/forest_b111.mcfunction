# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0239/4224 | 主题内编号: b111/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·地下禁忌书库与炼药室 (forest_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 arrow 18
replaceitem block ~0 ~-4 ~4 slot.container 1 slime_ball 7
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~4 slot.container 5 string 17
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 4
replaceitem block ~0 ~-4 ~4 slot.container 10 honey_bottle 5
replaceitem block ~0 ~-4 ~4 slot.container 11 sweet_berries 12
replaceitem block ~0 ~-4 ~4 slot.container 12 cooked_porkchop 9
replaceitem block ~0 ~-4 ~4 slot.container 13 iron_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 14 oak_log 21
loot insert ~0 ~-4 ~4 loot "rsf/forest"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 arrow 16
replaceitem block ~0 ~-4 ~-4 slot.container 1 slime_ball 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-4 ~-4 slot.container 9 lantern 10
replaceitem block ~0 ~-4 ~-4 slot.container 10 honey_bottle 4
replaceitem block ~0 ~-4 ~-4 slot.container 11 sweet_berries 11
replaceitem block ~0 ~-4 ~-4 slot.container 12 cooked_porkchop 8
replaceitem block ~0 ~-4 ~-4 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-4 ~-4 slot.container 14 oak_log 20
loot insert ~0 ~-4 ~-4 loot "rsf/forest"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mossy_stone_bricks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~-9 ~-8 ~7 ~-9 oak_log []
fill ~8 ~0 ~-9 ~8 ~7 ~-9 oak_log []
fill ~-8 ~7 ~-9 ~8 ~7 ~-9 moss_block []
setblock ~0 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 blast_furnace []
setblock ~-2 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 10 bow 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 12 honey_bottle 8
replaceitem block ~4 ~1 ~5 slot.container 13 sweet_berries 15
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_porkchop 12
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
