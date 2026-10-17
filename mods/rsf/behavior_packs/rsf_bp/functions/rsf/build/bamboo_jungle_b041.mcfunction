# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1065/4224 | 主题内编号: b041/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·八角看台古罗马斗技场 (bamboo_jungle_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 bamboo_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 bamboo_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bamboo_planks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~0 ~-2 ~4 slot.container 1 bone 17
replaceitem block ~0 ~-2 ~4 slot.container 2 spider_eye 6
replaceitem block ~0 ~-2 ~4 slot.container 3 gunpowder 9
replaceitem block ~0 ~-2 ~4 slot.container 4 slime_ball 8
replaceitem block ~0 ~-2 ~4 slot.container 5 arrow 19
replaceitem block ~0 ~-2 ~4 slot.container 9 golden_apple 6
replaceitem block ~0 ~-2 ~4 slot.container 10 bow 1
replaceitem block ~0 ~-2 ~4 slot.container 11 lantern 4
replaceitem block ~0 ~-2 ~4 slot.container 12 bamboo 33
replaceitem block ~0 ~-2 ~4 slot.container 13 scaffolding 18
replaceitem block ~0 ~-2 ~4 slot.container 14 melon_slice 15
loot insert ~0 ~-2 ~4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-2 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 bamboo_planks []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 air []
fill ~7 ~1 ~6 ~7 ~6 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 bamboo_block []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 bamboo_block []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 bamboo_block []
fill ~6 ~1 ~5 ~6 ~5 ~5 bamboo_block []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-6 ~-7 ~7 ~-6 bamboo_block []
setblock ~-7 ~8 ~-6 lantern []
fill ~-7 ~5 ~6 ~-7 ~7 ~6 bamboo_block []
setblock ~-7 ~8 ~6 lantern []
fill ~7 ~5 ~-6 ~7 ~7 ~-6 bamboo_block []
setblock ~7 ~8 ~-6 lantern []
fill ~7 ~5 ~6 ~7 ~7 ~6 bamboo_block []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 bamboo_block []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 bamboo_block []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 bamboo_block []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 bamboo_block []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~1 ~-2 ~8 ~4 ~2 scaffolding []
fill ~7 ~4 ~-2 ~9 ~4 ~2 bamboo_mosaic_slab []
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~6 ~1 ~4 slot.container 1 bone 12
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 5
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 6
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~6 ~1 ~4 slot.container 12 bow 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~6 ~1 ~4 slot.container 14 bamboo 38
loot insert ~6 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 2 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 3 arrow 17
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 string 15
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 10
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 4
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~-6 ~1 ~5 slot.container 12 bow 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~-6 ~1 ~5 slot.container 14 bamboo 36
loot insert ~-6 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~5 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
