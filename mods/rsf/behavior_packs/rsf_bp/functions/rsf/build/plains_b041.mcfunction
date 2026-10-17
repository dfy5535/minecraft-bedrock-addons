# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0041/4224 | 主题内编号: b041/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·八角看台古罗马斗技场 (plains_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 bone 14
replaceitem block ~0 ~-3 ~2 slot.container 1 gunpowder 13
replaceitem block ~0 ~-3 ~2 slot.container 2 string 8
replaceitem block ~0 ~-3 ~2 slot.container 3 arrow 17
replaceitem block ~0 ~-3 ~2 slot.container 4 spider_eye 6
replaceitem block ~0 ~-3 ~2 slot.container 5 leather 9
replaceitem block ~0 ~-3 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~2 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~2 slot.container 11 torch 17
replaceitem block ~0 ~-3 ~2 slot.container 12 bread 10
replaceitem block ~0 ~-3 ~2 slot.container 13 cooked_beef 9
replaceitem block ~0 ~-3 ~2 slot.container 14 iron_ingot 9
loot insert ~0 ~-3 ~2 loot "rsf/plains"
loot insert ~0 ~-3 ~2 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 23
replaceitem block ~0 ~-3 ~-2 slot.container 4 spider_eye 4
replaceitem block ~0 ~-3 ~-2 slot.container 5 leather 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 torch 16
replaceitem block ~0 ~-3 ~-2 slot.container 12 bread 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 cooked_beef 8
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_ingot 8
loot insert ~0 ~-3 ~-2 loot "rsf/plains"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 air []
fill ~7 ~1 ~6 ~7 ~7 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 oak_log []
setblock ~-7 ~9 ~-6 torch []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 oak_log []
setblock ~-7 ~9 ~6 torch []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 oak_log []
setblock ~7 ~9 ~-6 torch []
fill ~7 ~6 ~6 ~7 ~8 ~6 oak_log []
setblock ~7 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~1 ~9 ~7 ~1 oak_log []
fill ~9 ~6 ~-1 ~9 ~6 ~3 oak_fence []
fill ~9 ~4 ~1 ~9 ~8 ~1 oak_fence []
setblock ~9 ~8 ~1 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 9
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 8
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 5 leather 12
replaceitem block ~6 ~1 ~4 slot.container 9 coal 18
replaceitem block ~6 ~1 ~4 slot.container 10 oak_log 16
replaceitem block ~6 ~1 ~4 slot.container 11 apple 7
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~6 ~1 ~4 slot.container 14 shield 1
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 3 leather 7
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 coal 16
replaceitem block ~-6 ~1 ~5 slot.container 10 oak_log 21
replaceitem block ~-6 ~1 ~5 slot.container 11 apple 12
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 14 shield 1
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
