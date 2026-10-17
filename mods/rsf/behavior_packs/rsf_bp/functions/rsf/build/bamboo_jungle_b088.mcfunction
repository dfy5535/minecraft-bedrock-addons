# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1112/4224 | 主题内编号: b088/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·矿车铁轨转运仓库 (bamboo_jungle_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 bamboo_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 bamboo_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 1 slime_ball 8
replaceitem block ~3 ~-3 ~4 slot.container 2 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 string 17
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-3 ~4 slot.container 9 bamboo 34
replaceitem block ~3 ~-3 ~4 slot.container 10 scaffolding 19
replaceitem block ~3 ~-3 ~4 slot.container 11 melon_slice 16
replaceitem block ~3 ~-3 ~4 slot.container 12 cooked_chicken 13
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 12
replaceitem block ~3 ~-3 ~4 slot.container 14 emerald 4
loot insert ~3 ~-3 ~4 loot "rsf/bamboo_jungle"
loot insert ~3 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 jungle_planks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 bamboo_block []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 bamboo_block []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 bamboo_block []
fill ~5 ~1 ~6 ~5 ~5 ~6 bamboo_block []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 bamboo_fence []
setblock ~5 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 jungle_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 jungle_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 jungle_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 jungle_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 bamboo_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 bamboo_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 bamboo_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~1 ~-2 ~6 ~6 ~2 scaffolding []
fill ~5 ~6 ~-2 ~7 ~6 ~2 bamboo_mosaic_slab []
setblock ~6 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 12
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-4 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 13 bamboo 35
replaceitem block ~-4 ~1 ~4 slot.container 14 scaffolding 20
loot insert ~-4 ~1 ~4 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-3 ~0
