# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0218/4224 | 主题内编号: b090/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·八角攒尖悬灯神龛 (forest_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 cobblestone []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 slime_ball 7
replaceitem block ~2 ~-2 ~3 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~2 ~-2 ~3 slot.container 3 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 4 string 17
replaceitem block ~2 ~-2 ~3 slot.container 5 spider_eye 5
replaceitem block ~2 ~-2 ~3 slot.container 9 bow 1
replaceitem block ~2 ~-2 ~3 slot.container 10 lantern 9
replaceitem block ~2 ~-2 ~3 slot.container 11 honey_bottle 10
replaceitem block ~2 ~-2 ~3 slot.container 12 sweet_berries 10
replaceitem block ~2 ~-2 ~3 slot.container 13 cooked_porkchop 7
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_ingot 8
loot insert ~2 ~-2 ~3 loot "rsf/forest"
loot insert ~2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 moss_block []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 bookshelf []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 spruce_log []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 spruce_log []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 spruce_log []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 spruce_log []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~-8 ~-7 ~6 ~-8 spruce_log []
fill ~7 ~0 ~-8 ~7 ~6 ~-8 spruce_log []
fill ~-7 ~6 ~-8 ~7 ~6 ~-8 moss_block []
setblock ~-2 ~7 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 12
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 8
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 4 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 oak_log 17
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 10
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 16
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 5
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 oak_log 22
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 3
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~3 ~1 ~4 slot.container 13 bow 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 8
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-2 ~0
