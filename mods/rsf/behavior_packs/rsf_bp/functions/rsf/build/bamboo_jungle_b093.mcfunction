# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1117/4224 | 主题内编号: b093/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·U型庭院神道祈福祠 (bamboo_jungle_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 bamboo_mosaic []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 bamboo_planks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 bamboo_slab []
fill ~-5 ~6 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 bamboo_mosaic_slab []
setblock ~0 ~9 ~0 chiseled_stone_bricks []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 bamboo_mosaic []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 bamboo_block []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 bamboo_block []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 bamboo_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~1 ~-2 ~7 ~6 ~2 scaffolding []
fill ~6 ~6 ~-2 ~8 ~6 ~2 bamboo_mosaic_slab []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 12
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 scaffolding 20
replaceitem block ~5 ~1 ~3 slot.container 10 melon_slice 17
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_chicken 14
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 5
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 6
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 scaffolding 18
replaceitem block ~-5 ~1 ~4 slot.container 10 melon_slice 15
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_chicken 12
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 4
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
