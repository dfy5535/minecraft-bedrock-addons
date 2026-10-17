# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0244/4224 | 主题内编号: b116/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·U型围合秘密花园驿站 (forest_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 glass []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-8 ~-8 ~7 ~-8 oak_log []
fill ~8 ~0 ~-8 ~8 ~7 ~-8 oak_log []
fill ~-8 ~7 ~-8 ~8 ~7 ~-8 moss_block []
setblock ~0 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_porkchop 12
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 11 oak_log 17
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_porkchop 10
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 oak_log 22
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
