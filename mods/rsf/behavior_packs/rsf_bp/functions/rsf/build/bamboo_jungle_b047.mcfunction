# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1071/4224 | 主题内编号: b047/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·深渊跨桥决斗长台 (bamboo_jungle_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 bamboo_planks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~-3 ~2 slot.container 1 bone 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 spider_eye 6
replaceitem block ~-5 ~-3 ~2 slot.container 3 gunpowder 9
replaceitem block ~-5 ~-3 ~2 slot.container 4 slime_ball 8
replaceitem block ~-5 ~-3 ~2 slot.container 5 arrow 19
replaceitem block ~-5 ~-3 ~2 slot.container 9 lantern 5
replaceitem block ~-5 ~-3 ~2 slot.container 10 bamboo 34
replaceitem block ~-5 ~-3 ~2 slot.container 11 scaffolding 19
replaceitem block ~-5 ~-3 ~2 slot.container 12 melon_slice 16
replaceitem block ~-5 ~-3 ~2 slot.container 13 cooked_chicken 13
replaceitem block ~-5 ~-3 ~2 slot.container 14 iron_ingot 12
loot insert ~-5 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~-5 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~5 ~4 bamboo_mosaic []
fill ~-6 ~1 ~-3 ~6 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-4 ~-7 ~7 ~-4 stripped_bamboo_block []
setblock ~-7 ~8 ~-4 campfire []
fill ~-7 ~5 ~4 ~-7 ~7 ~4 stripped_bamboo_block []
setblock ~-7 ~8 ~4 campfire []
fill ~7 ~5 ~-4 ~7 ~7 ~-4 stripped_bamboo_block []
setblock ~7 ~8 ~-4 campfire []
fill ~7 ~5 ~4 ~7 ~7 ~4 stripped_bamboo_block []
setblock ~7 ~8 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~3 ~-6 stripped_bamboo_block []
setblock ~-9 ~4 ~-6 campfire []
fill ~-9 ~0 ~6 ~-9 ~3 ~6 stripped_bamboo_block []
setblock ~-9 ~4 ~6 campfire []
fill ~9 ~0 ~-6 ~9 ~3 ~-6 stripped_bamboo_block []
setblock ~9 ~4 ~-6 campfire []
fill ~9 ~0 ~6 ~9 ~3 ~6 stripped_bamboo_block []
setblock ~9 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~1 ~-2 ~8 ~5 ~2 scaffolding []
fill ~7 ~5 ~-2 ~9 ~5 ~2 bamboo_mosaic_slab []
setblock ~8 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 1 string 12
replaceitem block ~6 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~6 ~1 ~2 slot.container 3 bone 12
replaceitem block ~6 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~2 slot.container 9 cooked_chicken 8
replaceitem block ~6 ~1 ~2 slot.container 10 iron_ingot 7
replaceitem block ~6 ~1 ~2 slot.container 11 emerald 6
replaceitem block ~6 ~1 ~2 slot.container 12 gold_ingot 7
replaceitem block ~6 ~1 ~2 slot.container 13 golden_apple 5
replaceitem block ~6 ~1 ~2 slot.container 14 bow 1
loot insert ~6 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-6 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-6 ~1 ~3 slot.container 9 cooked_chicken 13
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 11 emerald 4
replaceitem block ~-6 ~1 ~3 slot.container 12 gold_ingot 5
replaceitem block ~-6 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 14 bow 1
loot insert ~-6 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~3 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
