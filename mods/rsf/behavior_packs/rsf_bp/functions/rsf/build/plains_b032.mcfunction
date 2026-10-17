# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0032/4224 | 主题内编号: b032/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·断顶残垣古哨塔 (plains_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

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
fill ~-4 ~1 ~-4 ~4 ~9 ~4 mossy_stone_bricks []
fill ~-3 ~1 ~-3 ~3 ~8 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~9 ~-4 stone_bricks []
fill ~-4 ~1 ~4 ~-4 ~9 ~4 stone_bricks []
fill ~4 ~1 ~-4 ~4 ~9 ~-4 stone_bricks []
fill ~4 ~1 ~4 ~4 ~9 ~4 stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 stone_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 stripped_oak_log []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 stripped_oak_log []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 stripped_oak_log []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 stripped_oak_log []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~6 ~0 ~-1 ~6 ~8 ~-1 stone_bricks []
fill ~6 ~7 ~-3 ~6 ~7 ~1 cobblestone_wall []
fill ~6 ~5 ~-1 ~6 ~9 ~-1 cobblestone_wall []
setblock ~6 ~9 ~-1 campfire []
fill ~-6 ~1 ~-1 ~-6 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-3 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-3 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~-3 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-3 ~1 ~2 slot.container 12 torch 16
replaceitem block ~-3 ~1 ~2 slot.container 13 bread 9
replaceitem block ~-3 ~1 ~2 slot.container 14 cooked_beef 8
loot insert ~-3 ~1 ~2 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
