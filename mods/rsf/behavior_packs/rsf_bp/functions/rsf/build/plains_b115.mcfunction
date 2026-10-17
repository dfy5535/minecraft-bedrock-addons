# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0115/4224 | 主题内编号: b115/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·阶梯立体生态种植台 (plains_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~-4 ~-2 ~3 slot.container 1 leather 9
replaceitem block ~-4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~-2 ~3 slot.container 4 bone 14
replaceitem block ~-4 ~-2 ~3 slot.container 5 gunpowder 13
replaceitem block ~-4 ~-2 ~3 slot.container 9 cooked_beef 10
replaceitem block ~-4 ~-2 ~3 slot.container 10 iron_ingot 10
replaceitem block ~-4 ~-2 ~3 slot.container 11 coal 18
replaceitem block ~-4 ~-2 ~3 slot.container 12 oak_log 16
replaceitem block ~-4 ~-2 ~3 slot.container 13 apple 7
replaceitem block ~-4 ~-2 ~3 slot.container 14 golden_apple 3
loot insert ~-4 ~-2 ~3 loot "rsf/plains"
loot insert ~-4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 oak_planks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 cobblestone []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 cracked_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 oak_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-2 ~8 ~6 ~-2 oak_log []
fill ~8 ~5 ~-4 ~8 ~5 ~0 oak_fence []
fill ~8 ~3 ~-2 ~8 ~7 ~-2 oak_fence []
setblock ~8 ~7 ~-2 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 apple 9
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~5 ~1 ~3 slot.container 13 torch 16
replaceitem block ~5 ~1 ~3 slot.container 14 bread 9
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 9 apple 7
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 13 torch 21
replaceitem block ~-5 ~1 ~4 slot.container 14 bread 14
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
