# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0011/4224 | 主题内编号: b011/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·深渊困兽角斗地牢 (plains_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 bookshelf []
setblock ~-4 ~-5 ~-3 torch []
setblock ~4 ~-5 ~3 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 8
replaceitem block ~0 ~-3 ~3 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~0 ~-3 ~3 slot.container 3 leather 9
replaceitem block ~0 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 9 apple 7
replaceitem block ~0 ~-3 ~3 slot.container 10 golden_apple 3
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~3 slot.container 12 shield 1
replaceitem block ~0 ~-3 ~3 slot.container 13 torch 21
replaceitem block ~0 ~-3 ~3 slot.container 14 bread 14
loot insert ~0 ~-3 ~3 loot "rsf/plains"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 torch []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 torch []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 torch []
fill ~6 ~6 ~5 ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 oak_log []
fill ~8 ~6 ~-3 ~8 ~6 ~1 oak_fence []
fill ~8 ~4 ~-1 ~8 ~8 ~-1 oak_fence []
setblock ~8 ~8 ~-1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 coal 16
replaceitem block ~5 ~1 ~3 slot.container 10 oak_log 21
replaceitem block ~5 ~1 ~3 slot.container 11 apple 12
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 14 shield 1
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 14
replaceitem block ~-5 ~1 ~4 slot.container 10 oak_log 19
replaceitem block ~-5 ~1 ~4 slot.container 11 apple 10
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 14 shield 1
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
