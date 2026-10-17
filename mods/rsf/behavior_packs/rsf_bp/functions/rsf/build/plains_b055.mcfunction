# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0055/4224 | 主题内编号: b055/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·木栅栏防御拓荒哨所 (plains_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 3 leather 9
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 9 torch 18
replaceitem block ~4 ~-2 ~3 slot.container 10 bread 11
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_beef 10
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 13 coal 18
replaceitem block ~4 ~-2 ~3 slot.container 14 oak_log 16
loot insert ~4 ~-2 ~3 loot "rsf/plains"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 cobblestone []
setblock ~-6 ~9 ~-5 torch []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 cobblestone []
setblock ~-6 ~9 ~4 torch []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 cobblestone []
setblock ~5 ~9 ~-5 torch []
fill ~5 ~1 ~4 ~6 ~8 ~5 cobblestone []
setblock ~5 ~9 ~4 torch []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 oak_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 oak_log []
setblock ~-6 ~8 ~-5 torch []
setblock ~-6 ~7 ~5 oak_log []
setblock ~-6 ~8 ~5 torch []
setblock ~6 ~7 ~-5 oak_log []
setblock ~6 ~8 ~-5 torch []
setblock ~6 ~7 ~5 oak_log []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-2 ~8 ~6 ~-2 oak_log []
fill ~8 ~5 ~-4 ~8 ~5 ~0 oak_fence []
fill ~8 ~3 ~-2 ~8 ~7 ~-2 oak_fence []
setblock ~8 ~7 ~-2 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 9
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 apple 12
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~5 ~1 ~3 slot.container 13 torch 19
replaceitem block ~5 ~1 ~3 slot.container 14 bread 12
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 5 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 9 apple 10
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 13 torch 17
replaceitem block ~-5 ~1 ~4 slot.container 14 bread 10
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
