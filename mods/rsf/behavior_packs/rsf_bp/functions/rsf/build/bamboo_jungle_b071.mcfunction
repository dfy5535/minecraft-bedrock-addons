# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1095/4224 | 主题内编号: b071/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·残破双子哨所遗迹 (bamboo_jungle_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 bamboo_planks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 bamboo_mosaic []
fill ~2 ~1 ~-4 ~6 ~7 ~4 bamboo_mosaic []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 bamboo_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~1 ~-2 ~7 ~4 ~2 scaffolding []
fill ~6 ~4 ~-2 ~8 ~4 ~2 bamboo_mosaic_slab []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 1 string 12
replaceitem block ~5 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~2 slot.container 3 bone 12
replaceitem block ~5 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~2 slot.container 10 gold_ingot 8
replaceitem block ~5 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~2 slot.container 12 bow 1
replaceitem block ~5 ~1 ~2 slot.container 13 lantern 4
replaceitem block ~5 ~1 ~2 slot.container 14 bamboo 33
loot insert ~5 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 5
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 12 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 14 bamboo 38
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~3 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
