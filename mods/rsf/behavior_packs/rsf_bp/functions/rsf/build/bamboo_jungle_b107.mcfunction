# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1131/4224 | 主题内编号: b107/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·观星高塔与秘术地宫 (bamboo_jungle_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 jungle_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 spider_eye 6
replaceitem block ~3 ~-3 ~0 slot.container 1 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 2 slime_ball 8
replaceitem block ~3 ~-3 ~0 slot.container 3 arrow 19
replaceitem block ~3 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 5 string 17
replaceitem block ~3 ~-3 ~0 slot.container 9 lantern 6
replaceitem block ~3 ~-3 ~0 slot.container 10 bamboo 35
replaceitem block ~3 ~-3 ~0 slot.container 11 scaffolding 20
replaceitem block ~3 ~-3 ~0 slot.container 12 melon_slice 17
replaceitem block ~3 ~-3 ~0 slot.container 13 cooked_chicken 14
replaceitem block ~3 ~-3 ~0 slot.container 14 iron_ingot 6
loot insert ~3 ~-3 ~0 loot "rsf/bamboo_jungle"
loot insert ~3 ~-3 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 bamboo_mosaic []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~8 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 stripped_bamboo_block []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 stripped_bamboo_block []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 stripped_bamboo_block []
fill ~6 ~0 ~2 ~6 ~7 ~2 stripped_bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~1 ~-2 ~6 ~5 ~2 scaffolding []
fill ~5 ~5 ~-2 ~7 ~5 ~2 bamboo_mosaic_slab []
setblock ~6 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 string 12
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_chicken 12
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 11 emerald 10
replaceitem block ~4 ~1 ~2 slot.container 12 gold_ingot 4
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 14 bow 1
loot insert ~4 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 string 15
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_chicken 10
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~-4 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 14 bow 1
loot insert ~-4 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~3 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
