# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0123/4224 | 主题内编号: b123/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·四角塔楼领主城堡复合体 (plains_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 torch []
setblock ~5 ~-5 ~-4 torch []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 spider_eye 6
replaceitem block ~5 ~-3 ~4 slot.container 1 leather 9
replaceitem block ~5 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 4 bone 14
replaceitem block ~5 ~-3 ~4 slot.container 5 gunpowder 13
replaceitem block ~5 ~-3 ~4 slot.container 9 cooked_beef 12
replaceitem block ~5 ~-3 ~4 slot.container 10 iron_ingot 5
replaceitem block ~5 ~-3 ~4 slot.container 11 coal 13
replaceitem block ~5 ~-3 ~4 slot.container 12 oak_log 18
replaceitem block ~5 ~-3 ~4 slot.container 13 apple 9
replaceitem block ~5 ~-3 ~4 slot.container 14 golden_apple 5
loot insert ~5 ~-3 ~4 loot "rsf/plains"
loot insert ~5 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 oak_planks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 cobblestone []
setblock ~-7 ~11 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 cobblestone []
setblock ~-7 ~11 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 cobblestone []
setblock ~6 ~11 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~10 ~6 cobblestone []
setblock ~6 ~11 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 oak_fence []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 oak_log []
setblock ~-7 ~10 ~-6 torch []
setblock ~-7 ~9 ~6 oak_log []
setblock ~-7 ~10 ~6 torch []
setblock ~7 ~9 ~-6 oak_log []
setblock ~7 ~10 ~-6 torch []
setblock ~7 ~9 ~6 oak_log []
setblock ~7 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cracked_stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~-1 ~9 ~9 ~-1 oak_log []
fill ~9 ~8 ~-3 ~9 ~8 ~1 oak_fence []
fill ~9 ~6 ~-1 ~9 ~10 ~-1 oak_fence []
setblock ~9 ~10 ~-1 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 leather 12
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 torch 20
replaceitem block ~6 ~1 ~4 slot.container 10 bread 13
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_beef 12
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 5
replaceitem block ~6 ~1 ~4 slot.container 13 coal 13
replaceitem block ~6 ~1 ~4 slot.container 14 oak_log 18
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 1 leather 7
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-6 ~1 ~5 slot.container 9 torch 18
replaceitem block ~-6 ~1 ~5 slot.container 10 bread 11
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_beef 10
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 18
replaceitem block ~-6 ~1 ~5 slot.container 14 oak_log 16
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
