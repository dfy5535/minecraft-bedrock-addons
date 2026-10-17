# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0089/4224 | 主题内编号: b089/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·四柱挑檐祈愿凉亭 (plains_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~7 ~3 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 stone_brick_slab []
fill ~-3 ~8 ~-2 ~3 ~9 ~2 stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 oak_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 cobblestone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 6x4x2) ---
fill ~6 ~0 ~0 ~6 ~5 ~0 oak_log []
fill ~6 ~4 ~-2 ~6 ~4 ~2 oak_fence []
fill ~6 ~2 ~0 ~6 ~6 ~0 oak_fence []
setblock ~6 ~6 ~0 torch []
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
replaceitem block ~3 ~1 ~1 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~1 slot.container 10 shield 1
replaceitem block ~3 ~1 ~1 slot.container 11 torch 16
replaceitem block ~3 ~1 ~1 slot.container 12 bread 9
replaceitem block ~3 ~1 ~1 slot.container 13 cooked_beef 8
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~1 loot "rsf/plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 4
replaceitem block ~-3 ~1 ~2 slot.container 3 leather 7
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~2 slot.container 10 shield 1
replaceitem block ~-3 ~1 ~2 slot.container 11 torch 21
replaceitem block ~-3 ~1 ~2 slot.container 12 bread 14
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_beef 6
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 6
loot insert ~-3 ~1 ~2 loot "rsf/plains"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
