# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0025/4224 | 主题内编号: b025/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·雉堞女墙四方哨塔 (plains_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 cobblestone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cracked_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gunpowder 13
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 coal 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 oak_log 18
replaceitem block ~0 ~-3 ~-2 slot.container 12 apple 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-2 loot "rsf/plains"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~10 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 oak_fence []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~-4 ~11 ~-3 oak_log []
setblock ~-4 ~12 ~-3 torch []
setblock ~-4 ~11 ~3 oak_log []
setblock ~-4 ~12 ~3 torch []
setblock ~4 ~11 ~-3 oak_log []
setblock ~4 ~12 ~-3 torch []
setblock ~4 ~11 ~3 oak_log []
setblock ~4 ~12 ~3 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 stone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 oak_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 oak_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 stone_brick_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~6 ~0 ~-1 ~6 ~6 ~-1 oak_log []
fill ~6 ~5 ~-3 ~6 ~5 ~1 oak_fence []
fill ~6 ~3 ~-1 ~6 ~7 ~-1 oak_fence []
setblock ~6 ~7 ~-1 torch []
fill ~-6 ~1 ~-1 ~-6 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 9
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 8
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 5 leather 12
replaceitem block ~3 ~1 ~1 slot.container 9 apple 10
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~1 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~1 slot.container 12 shield 1
replaceitem block ~3 ~1 ~1 slot.container 13 torch 17
replaceitem block ~3 ~1 ~1 slot.container 14 bread 10
loot insert ~3 ~1 ~1 loot "rsf/plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 4
replaceitem block ~-3 ~1 ~2 slot.container 3 leather 7
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 apple 8
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-3 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~1 ~2 slot.container 12 shield 1
replaceitem block ~-3 ~1 ~2 slot.container 13 torch 22
replaceitem block ~-3 ~1 ~2 slot.container 14 bread 8
loot insert ~-3 ~1 ~2 loot "rsf/plains"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
