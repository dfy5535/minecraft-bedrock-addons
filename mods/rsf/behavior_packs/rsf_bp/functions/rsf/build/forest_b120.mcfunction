# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0248/4224 | 主题内编号: b120/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·引水渠跨桥水培温室 (forest_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 string 17
replaceitem block ~-3 ~-2 ~3 slot.container 1 spider_eye 5
replaceitem block ~-3 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~-3 ~-2 ~3 slot.container 3 arrow 18
replaceitem block ~-3 ~-2 ~3 slot.container 4 slime_ball 7
replaceitem block ~-3 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-3 ~-2 ~3 slot.container 9 honey_bottle 8
replaceitem block ~-3 ~-2 ~3 slot.container 10 sweet_berries 15
replaceitem block ~-3 ~-2 ~3 slot.container 11 cooked_porkchop 12
replaceitem block ~-3 ~-2 ~3 slot.container 12 iron_ingot 6
replaceitem block ~-3 ~-2 ~3 slot.container 13 oak_log 17
replaceitem block ~-3 ~-2 ~3 slot.container 14 emerald 5
loot insert ~-3 ~-2 ~3 loot "rsf/forest"
loot insert ~-3 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 glass []
fill ~-3 ~8 ~-3 ~3 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-8 ~-8 ~6 ~-8 oak_log []
fill ~8 ~0 ~-8 ~8 ~6 ~-8 oak_log []
fill ~-8 ~6 ~-8 ~8 ~6 ~-8 moss_block []
setblock ~-1 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 12
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~4 slot.container 9 oak_log 19
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~-4 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 5
loot insert ~-4 ~1 ~4 loot "rsf/forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 15
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 3 arrow 16
replaceitem block ~4 ~1 ~4 slot.container 4 slime_ball 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 oak_log 17
replaceitem block ~4 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~4 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~4 ~1 ~4 slot.container 13 bow 1
replaceitem block ~4 ~1 ~4 slot.container 14 lantern 10
loot insert ~4 ~1 ~4 loot "rsf/forest"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-2 ~0
