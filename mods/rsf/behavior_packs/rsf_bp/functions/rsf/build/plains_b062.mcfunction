# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0062/4224 | 主题内编号: b062/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·下沉阶梯深渊藏骨堂 (plains_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 6格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-7 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-7 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-7 ~3 lantern []
setblock ~4 ~-7 ~-3 lantern []
setblock ~4 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-5 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-5 ~3 slot.container 1 bone 14
replaceitem block ~4 ~-5 ~3 slot.container 2 gunpowder 13
replaceitem block ~4 ~-5 ~3 slot.container 3 string 8
replaceitem block ~4 ~-5 ~3 slot.container 4 arrow 17
replaceitem block ~4 ~-5 ~3 slot.container 5 spider_eye 6
replaceitem block ~4 ~-5 ~3 slot.container 9 shield 1
replaceitem block ~4 ~-5 ~3 slot.container 10 torch 18
replaceitem block ~4 ~-5 ~3 slot.container 11 bread 11
replaceitem block ~4 ~-5 ~3 slot.container 12 cooked_beef 10
replaceitem block ~4 ~-5 ~3 slot.container 13 iron_ingot 10
replaceitem block ~4 ~-5 ~3 slot.container 14 coal 18
loot insert ~4 ~-5 ~3 loot "rsf/plains"
loot insert ~4 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 oak_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 stripped_oak_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 stripped_oak_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 stripped_oak_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 stripped_oak_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 stripped_oak_log []
fill ~8 ~7 ~-2 ~8 ~7 ~2 cobblestone_wall []
fill ~8 ~5 ~0 ~8 ~9 ~0 cobblestone_wall []
setblock ~8 ~9 ~0 lantern []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 12 torch 18
replaceitem block ~-5 ~1 ~3 slot.container 13 bread 11
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_beef 10
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-5 ~0
