# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0015/4224 | 主题内编号: b015/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·竖井阶梯深渊地牢 (plains_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 torch []
setblock ~3 ~-6 ~-2 torch []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 1 gunpowder 13
replaceitem block ~3 ~-4 ~2 slot.container 2 string 8
replaceitem block ~3 ~-4 ~2 slot.container 3 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 4 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 5 leather 9
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-4 ~2 slot.container 10 shield 1
replaceitem block ~3 ~-4 ~2 slot.container 11 torch 21
replaceitem block ~3 ~-4 ~2 slot.container 12 bread 14
replaceitem block ~3 ~-4 ~2 slot.container 13 cooked_beef 6
replaceitem block ~3 ~-4 ~2 slot.container 14 iron_ingot 6
loot insert ~3 ~-4 ~2 loot "rsf/plains"
loot insert ~3 ~-4 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 oak_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 cobblestone []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 oak_planks []
fill ~0 ~13 ~0 ~0 ~14 ~0 bookshelf []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stone_bricks []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stone_bricks []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stone_bricks []
setblock ~-9 ~4 ~0 chiseled_stone_bricks []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 stone_bricks []
setblock ~9 ~4 ~0 chiseled_stone_bricks []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~-2 ~7 ~6 ~-2 oak_log []
fill ~7 ~5 ~-4 ~7 ~5 ~0 oak_fence []
fill ~7 ~3 ~-2 ~7 ~7 ~-2 oak_fence []
setblock ~7 ~7 ~-2 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 bone 9
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 8
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 apple 7
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~2 slot.container 12 shield 1
replaceitem block ~4 ~1 ~2 slot.container 13 torch 21
replaceitem block ~4 ~1 ~2 slot.container 14 bread 14
loot insert ~4 ~1 ~2 loot "rsf/plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 5 leather 7
replaceitem block ~-4 ~1 ~3 slot.container 9 apple 12
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 1
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 13 torch 19
replaceitem block ~-4 ~1 ~3 slot.container 14 bread 12
loot insert ~-4 ~1 ~3 loot "rsf/plains"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
