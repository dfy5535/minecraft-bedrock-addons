# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1138/4224 | 主题内编号: b114/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双联拱顶植物培育馆 (bamboo_jungle_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 mossy_stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 bamboo_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~5 ~-4 ~7 ~5 ~4 bamboo_planks []
fill ~-6 ~6 ~-3 ~6 ~7 ~3 glass []
fill ~-5 ~6 ~-2 ~5 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 bamboo_planks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~8 ~1 ~-2 ~8 ~7 ~2 scaffolding []
fill ~7 ~7 ~-2 ~9 ~7 ~2 bamboo_mosaic_slab []
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 4 arrow 22
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 10 emerald 9
replaceitem block ~-6 ~1 ~2 slot.container 11 gold_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_apple 1
replaceitem block ~-6 ~1 ~2 slot.container 13 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 6
loot insert ~-6 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
