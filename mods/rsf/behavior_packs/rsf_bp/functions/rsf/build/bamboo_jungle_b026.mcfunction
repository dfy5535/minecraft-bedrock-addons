# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1050/4224 | 主题内编号: b026/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·尖顶信标引航高塔 (bamboo_jungle_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_mosaic_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 bamboo_mosaic []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 arrow 19
replaceitem block ~2 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~1 slot.container 2 string 17
replaceitem block ~2 ~-3 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~2 ~-3 ~1 slot.container 4 bone 17
replaceitem block ~2 ~-3 ~1 slot.container 5 spider_eye 6
replaceitem block ~2 ~-3 ~1 slot.container 9 iron_ingot 9
replaceitem block ~2 ~-3 ~1 slot.container 10 emerald 8
replaceitem block ~2 ~-3 ~1 slot.container 11 gold_ingot 9
replaceitem block ~2 ~-3 ~1 slot.container 12 golden_apple 7
replaceitem block ~2 ~-3 ~1 slot.container 13 bow 1
replaceitem block ~2 ~-3 ~1 slot.container 14 lantern 5
loot insert ~2 ~-3 ~1 loot "rsf/bamboo_jungle"
loot insert ~2 ~-3 ~1 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 air []
fill ~4 ~1 ~3 ~4 ~11 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~10 ~-2 jungle_log []
fill ~3 ~1 ~-2 ~3 ~10 ~-2 jungle_log []
fill ~-3 ~1 ~2 ~-3 ~10 ~2 jungle_log []
fill ~3 ~1 ~2 ~3 ~10 ~2 jungle_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 bamboo_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 scaffolding []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 jungle_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 jungle_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 jungle_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~5 ~1 ~-2 ~5 ~4 ~2 scaffolding []
fill ~4 ~4 ~-2 ~6 ~4 ~2 bamboo_mosaic_slab []
setblock ~5 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~9 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 scaffolding []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~1 slot.container 1 spider_eye 9
replaceitem block ~-3 ~1 ~1 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~1 slot.container 3 slime_ball 11
replaceitem block ~-3 ~1 ~1 slot.container 4 arrow 22
replaceitem block ~-3 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~1 slot.container 9 bamboo 32
replaceitem block ~-3 ~1 ~1 slot.container 10 scaffolding 17
replaceitem block ~-3 ~1 ~1 slot.container 11 melon_slice 14
replaceitem block ~-3 ~1 ~1 slot.container 12 cooked_chicken 11
replaceitem block ~-3 ~1 ~1 slot.container 13 iron_ingot 10
replaceitem block ~-3 ~1 ~1 slot.container 14 emerald 9
loot insert ~-3 ~1 ~1 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
