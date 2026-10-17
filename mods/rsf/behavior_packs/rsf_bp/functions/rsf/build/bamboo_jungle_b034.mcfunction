# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1058/4224 | 主题内编号: b034/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子对称铭文方尖碑 (bamboo_jungle_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log2
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 bamboo_mosaic_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 bamboo_mosaic []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 arrow 19
replaceitem block ~4 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-3 ~1 slot.container 2 string 17
replaceitem block ~4 ~-3 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~-3 ~1 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~1 slot.container 5 spider_eye 6
replaceitem block ~4 ~-3 ~1 slot.container 9 bow 1
replaceitem block ~4 ~-3 ~1 slot.container 10 lantern 9
replaceitem block ~4 ~-3 ~1 slot.container 11 bamboo 38
replaceitem block ~4 ~-3 ~1 slot.container 12 scaffolding 16
replaceitem block ~4 ~-3 ~1 slot.container 13 melon_slice 13
replaceitem block ~4 ~-3 ~1 slot.container 14 cooked_chicken 10
loot insert ~4 ~-3 ~1 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~1 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 mossy_stone_bricks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 bamboo_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 bamboo_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 scaffolding []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 bamboo_planks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 torch []
setblock ~2 ~4 ~-6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~1 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~1 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~1 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~1 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~1 slot.container 9 iron_ingot 7
replaceitem block ~-5 ~1 ~1 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~1 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~1 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~1 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~1 slot.container 14 lantern 10
loot insert ~-5 ~1 ~1 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-3 ~0
