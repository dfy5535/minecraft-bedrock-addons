# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1093/4224 | 主题内编号: b069/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·藤蔓侵蚀十字修道院 (bamboo_jungle_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 bamboo_mosaic []
setblock ~0 ~-5 ~0 scaffolding []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 string 17
replaceitem block ~0 ~-2 ~-3 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 spider_eye 6
replaceitem block ~0 ~-2 ~-3 slot.container 5 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 9 emerald 8
replaceitem block ~0 ~-2 ~-3 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 golden_apple 7
replaceitem block ~0 ~-2 ~-3 slot.container 12 bow 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 lantern 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 bamboo 34
loot insert ~0 ~-2 ~-3 loot "rsf/bamboo_jungle"
loot insert ~0 ~-2 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 bamboo_planks []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 bamboo_planks []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 bamboo_fence []
setblock ~6 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 bamboo_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 bamboo_mosaic []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 bamboo_block []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 bamboo_block []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 bamboo_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 12
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 10 bamboo 34
replaceitem block ~5 ~1 ~3 slot.container 11 scaffolding 19
replaceitem block ~5 ~1 ~3 slot.container 12 melon_slice 16
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_chicken 13
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 bamboo 32
replaceitem block ~-5 ~1 ~4 slot.container 11 scaffolding 17
replaceitem block ~-5 ~1 ~4 slot.container 12 melon_slice 14
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_chicken 11
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
