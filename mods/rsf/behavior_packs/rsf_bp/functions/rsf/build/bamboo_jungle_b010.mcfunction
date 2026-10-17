# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1034/4224 | 主题内编号: b010/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·十字交叉深层地牢 (bamboo_jungle_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 4格 | 地下深度 6格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 torch []
setblock ~5 ~-7 ~0 torch []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 string 17
replaceitem block ~0 ~-5 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-5 ~4 slot.container 2 bone 17
replaceitem block ~0 ~-5 ~4 slot.container 3 spider_eye 6
replaceitem block ~0 ~-5 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-5 ~4 slot.container 5 slime_ball 8
replaceitem block ~0 ~-5 ~4 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-5 ~4 slot.container 10 emerald 9
replaceitem block ~0 ~-5 ~4 slot.container 11 gold_ingot 10
replaceitem block ~0 ~-5 ~4 slot.container 12 golden_apple 1
replaceitem block ~0 ~-5 ~4 slot.container 13 bow 1
replaceitem block ~0 ~-5 ~4 slot.container 14 lantern 6
loot insert ~0 ~-5 ~4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-5 ~4 loot "chests/jungle_temple"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 string 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 bone 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 spider_eye 12
replaceitem block ~0 ~-5 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-5 ~-4 slot.container 5 slime_ball 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-5 ~-4 slot.container 10 emerald 8
replaceitem block ~0 ~-5 ~-4 slot.container 11 gold_ingot 9
replaceitem block ~0 ~-5 ~-4 slot.container 12 golden_apple 7
replaceitem block ~0 ~-5 ~-4 slot.container 13 bow 1
replaceitem block ~0 ~-5 ~-4 slot.container 14 lantern 5
loot insert ~0 ~-5 ~-4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-5 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 mossy_stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~4 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~4 ~-6 ~7 ~4 ~6 bamboo_mosaic_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-7 ~3 ~-1 ~-7 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 jungle_log []
setblock ~-9 ~4 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 jungle_log []
setblock ~-9 ~4 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 jungle_log []
setblock ~9 ~4 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~3 ~8 jungle_log []
setblock ~9 ~4 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~1 ~-2 ~8 ~8 ~2 scaffolding []
fill ~7 ~8 ~-2 ~9 ~8 ~2 bamboo_mosaic_slab []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 scaffolding []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 22
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 melon_slice 17
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_chicken 14
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-6 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~-6 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~4 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-5 ~0
