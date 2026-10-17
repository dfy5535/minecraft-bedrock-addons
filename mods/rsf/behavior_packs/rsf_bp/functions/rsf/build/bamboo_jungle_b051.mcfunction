# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1075/4224 | 主题内编号: b051/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·带哨塔围栏探险营地 (bamboo_jungle_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bamboo_mosaic [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 bamboo_mosaic []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 stripped_bamboo_block []
setblock ~-6 ~8 ~-5 campfire []
setblock ~-6 ~7 ~5 stripped_bamboo_block []
setblock ~-6 ~8 ~5 campfire []
setblock ~6 ~7 ~-5 stripped_bamboo_block []
setblock ~6 ~8 ~-5 campfire []
setblock ~6 ~7 ~5 stripped_bamboo_block []
setblock ~6 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 jungle_planks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~1 ~-2 ~7 ~4 ~2 scaffolding []
fill ~6 ~4 ~-2 ~8 ~4 ~2 bamboo_mosaic_slab []
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 12
replaceitem block ~5 ~1 ~3 slot.container 9 emerald 8
replaceitem block ~5 ~1 ~3 slot.container 10 gold_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 12 bow 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 14 bamboo 34
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 12 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 14 bamboo 32
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
