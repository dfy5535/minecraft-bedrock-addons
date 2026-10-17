# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0187/4224 | 主题内编号: b059/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·阶梯金字塔法老墓室 (forest_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_stone_bricks []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 arrow 18
replaceitem block ~0 ~-4 ~-5 slot.container 1 slime_ball 7
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_axe 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 bow 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 honey_bottle 8
replaceitem block ~0 ~-4 ~-5 slot.container 13 sweet_berries 15
replaceitem block ~0 ~-4 ~-5 slot.container 14 cooked_porkchop 12
loot insert ~0 ~-4 ~-5 loot "rsf/forest"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mossy_stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 oak_log []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 oak_log []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 oak_log []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 oak_log []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~0 ~-9 ~-9 ~5 ~-9 oak_log []
fill ~9 ~0 ~-9 ~9 ~5 ~-9 oak_log []
fill ~-9 ~5 ~-9 ~9 ~5 ~-9 moss_block []
setblock ~2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 8
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 10
replaceitem block ~5 ~1 ~6 slot.container 9 sweet_berries 15
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_porkchop 12
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 12 oak_log 17
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
