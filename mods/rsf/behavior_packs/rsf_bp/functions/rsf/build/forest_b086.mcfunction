# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0214/4224 | 主题内编号: b086/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·重装矿石金库碉堡 (forest_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 17
replaceitem block ~3 ~-2 ~4 slot.container 1 spider_eye 5
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 7
replaceitem block ~3 ~-2 ~4 slot.container 3 arrow 18
replaceitem block ~3 ~-2 ~4 slot.container 4 slime_ball 7
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 golden_apple 1
replaceitem block ~3 ~-2 ~4 slot.container 10 iron_axe 1
replaceitem block ~3 ~-2 ~4 slot.container 11 bow 1
replaceitem block ~3 ~-2 ~4 slot.container 12 lantern 7
replaceitem block ~3 ~-2 ~4 slot.container 13 honey_bottle 8
replaceitem block ~3 ~-2 ~4 slot.container 14 sweet_berries 15
loot insert ~3 ~-2 ~4 loot "rsf/forest"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 moss_block []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 moss_block []
setblock ~-5 ~10 ~5 campfire []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 moss_block []
setblock ~4 ~10 ~-6 campfire []
fill ~4 ~1 ~5 ~5 ~9 ~6 moss_block []
setblock ~4 ~10 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 moss_block []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 spruce_fence []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 spruce_log []
setblock ~-5 ~9 ~-6 campfire []
setblock ~-5 ~8 ~6 spruce_log []
setblock ~-5 ~9 ~6 campfire []
setblock ~5 ~8 ~-6 spruce_log []
setblock ~5 ~9 ~-6 campfire []
setblock ~5 ~8 ~6 spruce_log []
setblock ~5 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 oak_log []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 oak_log []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 oak_log []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 oak_log []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-8 ~-8 ~7 ~-8 spruce_log []
fill ~8 ~0 ~-8 ~8 ~7 ~-8 spruce_log []
fill ~-8 ~7 ~-8 ~8 ~7 ~-8 moss_block []
setblock ~0 ~8 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 12
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_porkchop 10
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 11 oak_log 22
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_porkchop 8
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 11 oak_log 20
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
