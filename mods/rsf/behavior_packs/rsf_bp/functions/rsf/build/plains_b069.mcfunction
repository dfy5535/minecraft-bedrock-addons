# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0069/4224 | 主题内编号: b069/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·藤蔓侵蚀十字修道院 (plains_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 hay_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 2 bone 14
replaceitem block ~0 ~-2 ~-3 slot.container 3 gunpowder 13
replaceitem block ~0 ~-2 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 5 arrow 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 coal 14
replaceitem block ~0 ~-2 ~-3 slot.container 10 oak_log 19
replaceitem block ~0 ~-2 ~-3 slot.container 11 apple 10
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 6
replaceitem block ~0 ~-2 ~-3 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 shield 1
loot insert ~0 ~-2 ~-3 loot "rsf/plains"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 oak_fence []
setblock ~6 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 stripped_oak_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 stripped_oak_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 stripped_oak_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 stripped_oak_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~2 ~8 ~5 ~2 oak_log []
fill ~8 ~4 ~0 ~8 ~4 ~4 oak_fence []
fill ~8 ~2 ~2 ~8 ~6 ~2 oak_fence []
setblock ~8 ~6 ~2 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 10 shield 1
replaceitem block ~5 ~1 ~3 slot.container 11 torch 17
replaceitem block ~5 ~1 ~3 slot.container 12 bread 10
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_beef 9
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 11 torch 22
replaceitem block ~-5 ~1 ~4 slot.container 12 bread 8
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_beef 7
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
