# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1101/4224 | 主题内编号: b077/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子鸟居图腾神道 (bamboo_jungle_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 bamboo_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 bamboo_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 bamboo_mosaic []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 bamboo_planks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-5 ~7 ~6 ~5 bamboo_slab []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 mossy_stone_bricks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 bamboo_mosaic_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bamboo_mosaic []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~1 ~-2 ~7 ~5 ~2 scaffolding []
fill ~6 ~5 ~-2 ~8 ~5 ~2 bamboo_mosaic_slab []
setblock ~7 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 string 12
replaceitem block ~5 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~2 slot.container 5 bone 12
replaceitem block ~5 ~1 ~2 slot.container 9 cooked_chicken 10
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~2 slot.container 12 gold_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~2 slot.container 14 bow 1
loot insert ~5 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 string 15
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_chicken 8
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 14 bow 1
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~3 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
