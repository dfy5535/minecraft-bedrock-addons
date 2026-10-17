# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0216/4224 | 主题内编号: b088/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·矿车铁轨转运仓库 (forest_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 stone_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 mossy_cobblestone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 oak_planks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 7
replaceitem block ~2 ~-2 ~5 slot.container 1 arrow 18
replaceitem block ~2 ~-2 ~5 slot.container 2 slime_ball 7
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~2 ~-2 ~5 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~5 slot.container 9 cooked_porkchop 8
replaceitem block ~2 ~-2 ~5 slot.container 10 iron_ingot 9
replaceitem block ~2 ~-2 ~5 slot.container 11 oak_log 20
replaceitem block ~2 ~-2 ~5 slot.container 12 emerald 8
replaceitem block ~2 ~-2 ~5 slot.container 13 golden_apple 7
replaceitem block ~2 ~-2 ~5 slot.container 14 iron_axe 1
loot insert ~2 ~-2 ~5 loot "rsf/forest"
loot insert ~2 ~-2 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~7 ~7 mossy_stone_bricks []
fill ~-3 ~1 ~-6 ~3 ~6 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 oak_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 oak_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 oak_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-8 ~-5 ~8 ~8 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-8 ~5 ~8 ~8 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-7 ~-4 ~9 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-7 ~4 ~9 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-7 ~3 ~9 ~7 stone_brick_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 oak_log []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 oak_log []
fill ~-7 ~4 ~-8 ~7 ~4 ~-8 moss_block []
setblock ~0 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 honeycomb_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 rotten_flesh 10
replaceitem block ~-3 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~6 slot.container 2 string 12
replaceitem block ~-3 ~1 ~6 slot.container 3 spider_eye 8
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~6 slot.container 5 arrow 21
replaceitem block ~-3 ~1 ~6 slot.container 9 bow 1
replaceitem block ~-3 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~-3 ~1 ~6 slot.container 11 honey_bottle 5
replaceitem block ~-3 ~1 ~6 slot.container 12 sweet_berries 12
replaceitem block ~-3 ~1 ~6 slot.container 13 cooked_porkchop 9
replaceitem block ~-3 ~1 ~6 slot.container 14 iron_ingot 10
loot insert ~-3 ~1 ~6 loot "rsf/forest"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 string 15
replaceitem block ~3 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~6 slot.container 3 arrow 16
replaceitem block ~3 ~1 ~6 slot.container 4 slime_ball 5
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 bow 1
replaceitem block ~3 ~1 ~6 slot.container 10 lantern 9
replaceitem block ~3 ~1 ~6 slot.container 11 honey_bottle 10
replaceitem block ~3 ~1 ~6 slot.container 12 sweet_berries 10
replaceitem block ~3 ~1 ~6 slot.container 13 cooked_porkchop 7
replaceitem block ~3 ~1 ~6 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~6 loot "rsf/forest"
loot insert ~3 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
