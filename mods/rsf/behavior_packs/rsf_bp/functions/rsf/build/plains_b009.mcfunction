# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0009/4224 | 主题内编号: b009/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·铁栏双室地下死牢 (plains_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 torch []
setblock ~4 ~-5 ~-3 torch []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 3 leather 9
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 9 torch 20
replaceitem block ~4 ~-3 ~3 slot.container 10 bread 13
replaceitem block ~4 ~-3 ~3 slot.container 11 cooked_beef 12
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 5
replaceitem block ~4 ~-3 ~3 slot.container 13 coal 13
replaceitem block ~4 ~-3 ~3 slot.container 14 oak_log 18
loot insert ~4 ~-3 ~3 loot "rsf/plains"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_bricks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 oak_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 oak_log []
setblock ~-6 ~7 ~-5 torch []
setblock ~-6 ~6 ~5 oak_log []
setblock ~-6 ~7 ~5 torch []
setblock ~6 ~6 ~-5 oak_log []
setblock ~6 ~7 ~-5 torch []
setblock ~6 ~6 ~5 oak_log []
setblock ~6 ~7 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 stripped_oak_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 stripped_oak_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 stripped_oak_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 stripped_oak_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~2 ~8 ~5 ~2 oak_log []
fill ~8 ~4 ~0 ~8 ~4 ~4 oak_fence []
fill ~8 ~2 ~2 ~8 ~6 ~2 oak_fence []
setblock ~8 ~6 ~2 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 9
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 leather 12
replaceitem block ~5 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 10 shield 1
replaceitem block ~5 ~1 ~3 slot.container 11 torch 20
replaceitem block ~5 ~1 ~3 slot.container 12 bread 13
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_beef 12
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 5
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 11 torch 18
replaceitem block ~-5 ~1 ~4 slot.container 12 bread 11
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_beef 10
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
