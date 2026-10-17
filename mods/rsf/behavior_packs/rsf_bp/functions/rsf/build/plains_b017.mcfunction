# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0017/4224 | 主题内编号: b017/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双坡顶皇家藏宝室 (plains_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~3 slot.container 1 leather 9
replaceitem block ~3 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-2 ~3 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~3 slot.container 5 gunpowder 13
replaceitem block ~3 ~-2 ~3 slot.container 9 apple 12
replaceitem block ~3 ~-2 ~3 slot.container 10 golden_apple 1
replaceitem block ~3 ~-2 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-2 ~3 slot.container 12 shield 1
replaceitem block ~3 ~-2 ~3 slot.container 13 torch 19
replaceitem block ~3 ~-2 ~3 slot.container 14 bread 12
loot insert ~3 ~-2 ~3 loot "rsf/plains"
loot insert ~3 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 oak_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 oak_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 oak_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 oak_planks []
fill ~0 ~16 ~0 ~0 ~17 ~0 bookshelf []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~0 ~7 ~8 ~0 oak_log []
fill ~7 ~7 ~-2 ~7 ~7 ~2 oak_fence []
fill ~7 ~5 ~0 ~7 ~9 ~0 oak_fence []
setblock ~7 ~9 ~0 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-4 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 9
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 8
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 leather 12
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_beef 9
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 11 coal 17
replaceitem block ~4 ~1 ~3 slot.container 12 oak_log 22
replaceitem block ~4 ~1 ~3 slot.container 13 apple 6
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~4 ~1 ~3 loot "rsf/plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-4 ~1 ~4 slot.container 3 leather 7
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_beef 7
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~-4 ~1 ~4 slot.container 11 coal 15
replaceitem block ~-4 ~1 ~4 slot.container 12 oak_log 20
replaceitem block ~-4 ~1 ~4 slot.container 13 apple 11
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~4 loot "rsf/plains"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
