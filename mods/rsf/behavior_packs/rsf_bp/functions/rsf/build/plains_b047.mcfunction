# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0047/4224 | 主题内编号: b047/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·深渊跨桥决斗长台 (plains_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 oak_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 oak_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cobblestone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 cobblestone []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 bone 14
replaceitem block ~-5 ~-3 ~2 slot.container 1 gunpowder 13
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 17
replaceitem block ~-5 ~-3 ~2 slot.container 4 spider_eye 6
replaceitem block ~-5 ~-3 ~2 slot.container 5 leather 9
replaceitem block ~-5 ~-3 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~-3 ~2 slot.container 10 shield 1
replaceitem block ~-5 ~-3 ~2 slot.container 11 torch 17
replaceitem block ~-5 ~-3 ~2 slot.container 12 bread 10
replaceitem block ~-5 ~-3 ~2 slot.container 13 cooked_beef 9
replaceitem block ~-5 ~-3 ~2 slot.container 14 iron_ingot 9
loot insert ~-5 ~-3 ~2 loot "rsf/plains"
loot insert ~-5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 oak_planks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 cracked_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~4 ~-6 oak_log []
setblock ~-9 ~5 ~-6 torch []
fill ~-9 ~0 ~6 ~-9 ~4 ~6 oak_log []
setblock ~-9 ~5 ~6 torch []
fill ~9 ~0 ~-6 ~9 ~4 ~-6 oak_log []
setblock ~9 ~5 ~-6 torch []
fill ~9 ~0 ~6 ~9 ~4 ~6 oak_log []
setblock ~9 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x5x5) ---
fill ~9 ~0 ~-2 ~9 ~8 ~-2 oak_log []
fill ~9 ~7 ~-4 ~9 ~7 ~0 oak_fence []
fill ~9 ~5 ~-2 ~9 ~9 ~-2 oak_fence []
setblock ~9 ~9 ~-2 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 2 bone 9
replaceitem block ~6 ~1 ~2 slot.container 3 gunpowder 8
replaceitem block ~6 ~1 ~2 slot.container 4 string 11
replaceitem block ~6 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~6 ~1 ~2 slot.container 9 cooked_beef 11
replaceitem block ~6 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~6 ~1 ~2 slot.container 11 coal 12
replaceitem block ~6 ~1 ~2 slot.container 12 oak_log 17
replaceitem block ~6 ~1 ~2 slot.container 13 apple 8
replaceitem block ~6 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~6 ~1 ~2 loot "rsf/plains"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-6 ~1 ~3 slot.container 2 string 14
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-6 ~1 ~3 slot.container 5 leather 7
replaceitem block ~-6 ~1 ~3 slot.container 9 cooked_beef 9
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 11 coal 17
replaceitem block ~-6 ~1 ~3 slot.container 12 oak_log 22
replaceitem block ~-6 ~1 ~3 slot.container 13 apple 6
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~-6 ~1 ~3 loot "rsf/plains"
loot insert ~-6 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
