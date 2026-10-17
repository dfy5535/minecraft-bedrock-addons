# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0098/4224 | 主题内编号: b098/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·四角炮楼重装要塞 (plains_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 lantern []
setblock ~5 ~-6 ~-4 lantern []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~-4 ~4 slot.container 1 spider_eye 6
replaceitem block ~5 ~-4 ~4 slot.container 2 leather 9
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 14
replaceitem block ~5 ~-4 ~4 slot.container 9 golden_apple 3
replaceitem block ~5 ~-4 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~-4 ~4 slot.container 11 shield 1
replaceitem block ~5 ~-4 ~4 slot.container 12 torch 21
replaceitem block ~5 ~-4 ~4 slot.container 13 bread 14
replaceitem block ~5 ~-4 ~4 slot.container 14 cooked_beef 6
loot insert ~5 ~-4 ~4 loot "rsf/plains"
loot insert ~5 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 mossy_stone_bricks []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 mossy_stone_bricks []
setblock ~-7 ~10 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 mossy_stone_bricks []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 mossy_stone_bricks []
setblock ~6 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 cracked_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~-2 ~9 ~9 ~-2 stripped_oak_log []
fill ~9 ~8 ~-4 ~9 ~8 ~0 cobblestone_wall []
fill ~9 ~6 ~-2 ~9 ~10 ~-2 cobblestone_wall []
setblock ~9 ~10 ~-2 lantern []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 oak_log 16
replaceitem block ~-6 ~1 ~4 slot.container 10 apple 7
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 14 torch 21
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-4 ~0
