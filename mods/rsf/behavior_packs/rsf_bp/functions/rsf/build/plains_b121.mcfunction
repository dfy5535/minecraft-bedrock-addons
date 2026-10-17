# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0121/4224 | 主题内编号: b121/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·卫城廊柱王座大殿与地宫 (plains_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

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

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~8 ~6 cobblestone []
fill ~-6 ~1 ~0 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 oak_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 oak_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 oak_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 oak_log []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 oak_log []
fill ~-7 ~8 ~-6 ~7 ~8 ~-1 stone_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~9 ~-7 ~-8 ~9 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~9 ~-7 ~8 ~9 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~10 ~-6 ~-7 ~10 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-6 ~7 ~10 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~10 ~-6 ~6 ~10 ~6 stone_brick_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~-3 ~9 ~7 ~-3 oak_log []
fill ~9 ~6 ~-5 ~9 ~6 ~-1 oak_fence []
fill ~9 ~4 ~-3 ~9 ~8 ~-3 oak_fence []
setblock ~9 ~8 ~-3 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 9
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 8
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 5 leather 12
replaceitem block ~6 ~1 ~4 slot.container 9 coal 14
replaceitem block ~6 ~1 ~4 slot.container 10 oak_log 19
replaceitem block ~6 ~1 ~4 slot.container 11 apple 10
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 6
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
replaceitem block ~-6 ~1 ~5 slot.container 9 coal 12
replaceitem block ~-6 ~1 ~5 slot.container 10 oak_log 17
replaceitem block ~-6 ~1 ~5 slot.container 11 apple 8
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 14 shield 1
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
