# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0081/4224 | 主题内编号: b081/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双高炉重工冶炼密室 (plains_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 cobblestone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 spider_eye 6
replaceitem block ~3 ~-3 ~3 slot.container 1 leather 9
replaceitem block ~3 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 14
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 13
replaceitem block ~3 ~-3 ~3 slot.container 9 torch 19
replaceitem block ~3 ~-3 ~3 slot.container 10 bread 12
replaceitem block ~3 ~-3 ~3 slot.container 11 cooked_beef 11
replaceitem block ~3 ~-3 ~3 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-3 ~3 slot.container 13 coal 12
replaceitem block ~3 ~-3 ~3 slot.container 14 oak_log 17
loot insert ~3 ~-3 ~3 loot "rsf/plains"
loot insert ~3 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~9 ~5 stone_bricks []
setblock ~-5 ~10 ~5 torch []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~-1 ~7 ~7 ~-1 oak_log []
fill ~7 ~6 ~-3 ~7 ~6 ~1 oak_fence []
fill ~7 ~4 ~-1 ~7 ~8 ~-1 oak_fence []
setblock ~7 ~8 ~-1 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 9
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 8
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 leather 12
replaceitem block ~4 ~1 ~3 slot.container 9 coal 16
replaceitem block ~4 ~1 ~3 slot.container 10 oak_log 21
replaceitem block ~4 ~1 ~3 slot.container 11 apple 12
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 1
replaceitem block ~4 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 14 shield 1
loot insert ~4 ~1 ~3 loot "rsf/plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-4 ~1 ~4 slot.container 3 leather 7
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 9 coal 14
replaceitem block ~-4 ~1 ~4 slot.container 10 oak_log 19
replaceitem block ~-4 ~1 ~4 slot.container 11 apple 10
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 14 shield 1
loot insert ~-4 ~1 ~4 loot "rsf/plains"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
