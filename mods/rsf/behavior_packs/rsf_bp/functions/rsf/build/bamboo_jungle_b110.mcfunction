# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1134/4224 | 主题内编号: b110/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子附魔与酿造实验楼 (bamboo_jungle_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 bamboo_mosaic []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 bone 17
replaceitem block ~5 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~5 ~-3 ~2 slot.container 3 slime_ball 8
replaceitem block ~5 ~-3 ~2 slot.container 4 arrow 19
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~2 slot.container 9 gold_ingot 7
replaceitem block ~5 ~-3 ~2 slot.container 10 golden_apple 5
replaceitem block ~5 ~-3 ~2 slot.container 11 bow 1
replaceitem block ~5 ~-3 ~2 slot.container 12 lantern 10
replaceitem block ~5 ~-3 ~2 slot.container 13 bamboo 32
replaceitem block ~5 ~-3 ~2 slot.container 14 scaffolding 17
loot insert ~5 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~5 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 mossy_stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 bamboo_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~6 ~-5 ~8 ~6 ~5 bamboo_mosaic_slab []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 bamboo_mosaic []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 bamboo_slab []
setblock ~0 ~10 ~0 scaffolding []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bamboo_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~1 ~-2 ~8 ~8 ~2 scaffolding []
fill ~7 ~8 ~-2 ~9 ~8 ~2 bamboo_mosaic_slab []
setblock ~8 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 scaffolding []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 22
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 string 12
replaceitem block ~-6 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 9 melon_slice 12
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_chicken 9
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 12 emerald 7
replaceitem block ~-6 ~1 ~2 slot.container 13 gold_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~-6 ~1 ~2 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
