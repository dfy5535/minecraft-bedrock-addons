# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0088/4224 | 主题内编号: b088/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·矿车铁轨转运仓库 (plains_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~0 slot.container 2 bone 14
replaceitem block ~4 ~-2 ~0 slot.container 3 gunpowder 13
replaceitem block ~4 ~-2 ~0 slot.container 4 string 8
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~0 slot.container 10 shield 1
replaceitem block ~4 ~-2 ~0 slot.container 11 torch 16
replaceitem block ~4 ~-2 ~0 slot.container 12 bread 9
replaceitem block ~4 ~-2 ~0 slot.container 13 cooked_beef 8
replaceitem block ~4 ~-2 ~0 slot.container 14 iron_ingot 8
loot insert ~4 ~-2 ~0 loot "rsf/plains"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stone_bricks []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stone_bricks []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stone_bricks []
fill ~5 ~1 ~6 ~5 ~6 ~6 stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 cracked_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cracked_stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~7 ~0 ~0 ~7 ~9 ~0 stone_bricks []
fill ~7 ~8 ~-2 ~7 ~8 ~2 cobblestone_wall []
fill ~7 ~6 ~0 ~7 ~10 ~0 cobblestone_wall []
setblock ~7 ~10 ~0 campfire []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 9 oak_log 20
replaceitem block ~-4 ~1 ~4 slot.container 10 apple 11
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~4 slot.container 14 torch 18
loot insert ~-4 ~1 ~4 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
