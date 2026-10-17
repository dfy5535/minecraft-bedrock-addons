# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0091/4224 | 主题内编号: b091/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·跨水拱桥水神小祠 (plains_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log2
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 oak_planks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 oak_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 cobblestone []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 spider_eye 6
replaceitem block ~-4 ~-2 ~1 slot.container 1 leather 9
replaceitem block ~-4 ~-2 ~1 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-2 ~1 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 bone 14
replaceitem block ~-4 ~-2 ~1 slot.container 5 gunpowder 13
replaceitem block ~-4 ~-2 ~1 slot.container 9 torch 17
replaceitem block ~-4 ~-2 ~1 slot.container 10 bread 10
replaceitem block ~-4 ~-2 ~1 slot.container 11 cooked_beef 9
replaceitem block ~-4 ~-2 ~1 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~-2 ~1 slot.container 13 coal 17
replaceitem block ~-4 ~-2 ~1 slot.container 14 oak_log 22
loot insert ~-4 ~-2 ~1 loot "rsf/plains"
loot insert ~-4 ~-2 ~1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~7 ~3 oak_planks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 cobblestone_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 mossy_stone_bricks []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 stone_brick_slab []
setblock ~0 ~11 ~0 bookshelf []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 oak_log []
fill ~8 ~6 ~-3 ~8 ~6 ~1 oak_fence []
fill ~8 ~4 ~-1 ~8 ~8 ~-1 oak_fence []
setblock ~8 ~8 ~-1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 3 leather 12
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 9 coal 12
replaceitem block ~5 ~1 ~1 slot.container 10 oak_log 17
replaceitem block ~5 ~1 ~1 slot.container 11 apple 8
replaceitem block ~5 ~1 ~1 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~1 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~1 slot.container 14 shield 1
loot insert ~5 ~1 ~1 loot "rsf/plains"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~2 slot.container 1 leather 7
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~2 slot.container 9 coal 17
replaceitem block ~-5 ~1 ~2 slot.container 10 oak_log 22
replaceitem block ~-5 ~1 ~2 slot.container 11 apple 6
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 14 shield 1
loot insert ~-5 ~1 ~2 loot "rsf/plains"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
