# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0095/4224 | 主题内编号: b095/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子灯笼守卫神龛 (plains_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~8 ~3 oak_planks []
fill ~2 ~1 ~-3 ~6 ~8 ~3 oak_planks []
fill ~-5 ~1 ~-2 ~-3 ~7 ~2 air []
fill ~3 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 cracked_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~4 ~-5 oak_log []
setblock ~-8 ~5 ~-5 torch []
fill ~-8 ~0 ~5 ~-8 ~4 ~5 oak_log []
setblock ~-8 ~5 ~5 torch []
fill ~8 ~0 ~-5 ~8 ~4 ~-5 oak_log []
setblock ~8 ~5 ~-5 torch []
fill ~8 ~0 ~5 ~8 ~4 ~5 oak_log []
setblock ~8 ~5 ~5 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x4x3) ---
fill ~8 ~0 ~0 ~8 ~6 ~0 oak_log []
fill ~8 ~5 ~-2 ~8 ~5 ~2 oak_fence []
fill ~8 ~3 ~0 ~8 ~7 ~0 oak_fence []
setblock ~8 ~7 ~0 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 2 bone 9
replaceitem block ~5 ~1 ~1 slot.container 3 gunpowder 8
replaceitem block ~5 ~1 ~1 slot.container 4 string 11
replaceitem block ~5 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 9 apple 10
replaceitem block ~5 ~1 ~1 slot.container 10 golden_apple 6
replaceitem block ~5 ~1 ~1 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~1 slot.container 12 shield 1
replaceitem block ~5 ~1 ~1 slot.container 13 torch 17
replaceitem block ~5 ~1 ~1 slot.container 14 bread 10
loot insert ~5 ~1 ~1 loot "rsf/plains"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~2 slot.container 2 string 14
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~2 slot.container 5 leather 7
replaceitem block ~-5 ~1 ~2 slot.container 9 apple 8
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 13 torch 22
replaceitem block ~-5 ~1 ~2 slot.container 14 bread 8
loot insert ~-5 ~1 ~2 loot "rsf/plains"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
