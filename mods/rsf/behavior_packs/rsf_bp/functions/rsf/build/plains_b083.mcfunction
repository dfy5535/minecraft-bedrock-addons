# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0083/4224 | 主题内编号: b083/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·铁砧锻造与模具工坊 (plains_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 2 bone 14
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 13
replaceitem block ~4 ~-2 ~3 slot.container 4 string 8
replaceitem block ~4 ~-2 ~3 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 9 apple 11
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~-2 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 12 shield 1
replaceitem block ~4 ~-2 ~3 slot.container 13 torch 18
replaceitem block ~4 ~-2 ~3 slot.container 14 bread 11
loot insert ~4 ~-2 ~3 loot "rsf/plains"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 oak_planks []
fill ~-6 ~1 ~0 ~6 ~5 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 stone_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~1 ~8 ~9 ~1 oak_log []
fill ~8 ~8 ~-1 ~8 ~8 ~3 oak_fence []
fill ~8 ~6 ~1 ~8 ~10 ~1 oak_fence []
setblock ~8 ~10 ~1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 torch 22
replaceitem block ~5 ~1 ~3 slot.container 10 bread 8
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_beef 7
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 13 coal 15
replaceitem block ~5 ~1 ~3 slot.container 14 oak_log 20
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 20
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 13
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_beef 12
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 5
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 14 oak_log 18
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
