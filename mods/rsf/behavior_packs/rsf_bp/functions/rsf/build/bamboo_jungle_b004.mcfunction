# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1028/4224 | 主题内编号: b004/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子火盆高台神坛 (bamboo_jungle_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 jungle_planks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 jungle_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 jungle_planks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 jungle_planks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 bamboo_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 bamboo_block []
setblock ~-7 ~9 ~-4 lantern []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 bamboo_block []
setblock ~-7 ~9 ~4 lantern []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 bamboo_block []
setblock ~7 ~9 ~-4 lantern []
fill ~7 ~6 ~4 ~7 ~8 ~4 bamboo_block []
setblock ~7 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 bamboo_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 bamboo_block []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 bamboo_block []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 bamboo_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~1 ~-2 ~8 ~7 ~2 scaffolding []
fill ~7 ~7 ~-2 ~9 ~7 ~2 bamboo_mosaic_slab []
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 2 arrow 22
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 12
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 10 emerald 4
replaceitem block ~-6 ~1 ~2 slot.container 11 gold_ingot 5
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~-6 ~1 ~2 slot.container 13 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 8
loot insert ~-6 ~1 ~2 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~2 ~0
