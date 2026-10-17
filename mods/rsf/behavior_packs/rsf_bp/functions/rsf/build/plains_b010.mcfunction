# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0010/4224 | 主题内编号: b010/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·十字交叉深层地牢 (plains_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 6格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 1 bone 14
replaceitem block ~0 ~-5 ~4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-5 ~4 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-5 ~4 slot.container 10 coal 15
replaceitem block ~0 ~-5 ~4 slot.container 11 oak_log 20
replaceitem block ~0 ~-5 ~4 slot.container 12 apple 11
replaceitem block ~0 ~-5 ~4 slot.container 13 golden_apple 7
replaceitem block ~0 ~-5 ~4 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-5 ~4 loot "rsf/plains"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 bone 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 gunpowder 11
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 spider_eye 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 iron_ingot 6
replaceitem block ~0 ~-5 ~-4 slot.container 10 coal 14
replaceitem block ~0 ~-5 ~-4 slot.container 11 oak_log 19
replaceitem block ~0 ~-5 ~-4 slot.container 12 apple 10
replaceitem block ~0 ~-5 ~-4 slot.container 13 golden_apple 6
replaceitem block ~0 ~-5 ~-4 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-5 ~-4 loot "rsf/plains"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 oak_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-7 ~4 ~-1 ~-7 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~9 ~0 ~0 ~9 ~6 ~0 stripped_oak_log []
fill ~9 ~5 ~-2 ~9 ~5 ~2 cobblestone_wall []
fill ~9 ~3 ~0 ~9 ~7 ~0 cobblestone_wall []
setblock ~9 ~7 ~0 lantern []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 bread 11
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_beef 10
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 12 coal 18
replaceitem block ~-6 ~1 ~4 slot.container 13 oak_log 16
replaceitem block ~-6 ~1 ~4 slot.container 14 apple 7
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
