# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0059/4224 | 主题内编号: b059/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·阶梯金字塔法老墓室 (plains_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 spider_eye 6
replaceitem block ~5 ~-3 ~0 slot.container 1 leather 9
replaceitem block ~5 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~5 ~-3 ~0 slot.container 4 bone 14
replaceitem block ~5 ~-3 ~0 slot.container 5 gunpowder 13
replaceitem block ~5 ~-3 ~0 slot.container 9 cooked_beef 10
replaceitem block ~5 ~-3 ~0 slot.container 10 iron_ingot 10
replaceitem block ~5 ~-3 ~0 slot.container 11 coal 18
replaceitem block ~5 ~-3 ~0 slot.container 12 oak_log 16
replaceitem block ~5 ~-3 ~0 slot.container 13 apple 7
replaceitem block ~5 ~-3 ~0 slot.container 14 golden_apple 3
loot insert ~5 ~-3 ~0 loot "rsf/plains"
loot insert ~5 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 oak_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 cobblestone []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~9 ~0 ~1 ~9 ~5 ~1 oak_log []
fill ~9 ~4 ~-1 ~9 ~4 ~3 oak_fence []
fill ~9 ~2 ~1 ~9 ~6 ~1 oak_fence []
setblock ~9 ~6 ~1 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 leather 12
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~6 ~1 ~4 slot.container 10 shield 1
replaceitem block ~6 ~1 ~4 slot.container 11 torch 21
replaceitem block ~6 ~1 ~4 slot.container 12 bread 14
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_beef 6
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 1 leather 7
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 10 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 11 torch 19
replaceitem block ~-6 ~1 ~5 slot.container 12 bread 12
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_beef 11
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
