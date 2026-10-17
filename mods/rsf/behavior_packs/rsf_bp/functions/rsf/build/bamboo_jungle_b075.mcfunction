# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1099/4224 | 主题内编号: b075/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·远古巨石环廊法阵 (bamboo_jungle_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 bamboo_mosaic [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 bamboo_mosaic [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 jungle_planks []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-2 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~-4 slot.container 3 string 17
replaceitem block ~0 ~-2 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-2 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-2 ~-4 slot.container 9 cooked_chicken 11
replaceitem block ~0 ~-2 ~-4 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-2 ~-4 slot.container 11 emerald 9
replaceitem block ~0 ~-2 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-2 ~-4 slot.container 13 golden_apple 1
replaceitem block ~0 ~-2 ~-4 slot.container 14 bow 1
loot insert ~0 ~-2 ~-4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-2 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 stripped_bamboo_block []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 stripped_bamboo_block []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 stripped_bamboo_block []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 stripped_bamboo_block []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 stripped_bamboo_block []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 stripped_bamboo_block []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 stripped_bamboo_block []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 stripped_bamboo_block []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 stripped_bamboo_block []
fill ~1 ~1 ~6 ~1 ~5 ~6 stripped_bamboo_block []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 stripped_bamboo_block []
fill ~3 ~1 ~6 ~3 ~5 ~6 stripped_bamboo_block []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 stripped_bamboo_block []
fill ~5 ~1 ~6 ~5 ~5 ~6 stripped_bamboo_block []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 stripped_bamboo_block []
fill ~7 ~1 ~6 ~7 ~5 ~6 stripped_bamboo_block []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 stripped_bamboo_block []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 stripped_bamboo_block []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 stripped_bamboo_block []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 stripped_bamboo_block []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 stripped_bamboo_block []
fill ~7 ~1 ~0 ~7 ~5 ~0 stripped_bamboo_block []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 stripped_bamboo_block []
fill ~7 ~1 ~2 ~7 ~5 ~2 stripped_bamboo_block []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 stripped_bamboo_block []
fill ~7 ~1 ~4 ~7 ~5 ~4 stripped_bamboo_block []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 stripped_bamboo_block []
setblock ~-7 ~9 ~-6 campfire []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 stripped_bamboo_block []
setblock ~-7 ~9 ~6 campfire []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 stripped_bamboo_block []
setblock ~7 ~9 ~-6 campfire []
fill ~7 ~6 ~6 ~7 ~8 ~6 stripped_bamboo_block []
setblock ~7 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_bamboo_block []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_bamboo_block []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stripped_bamboo_block []
setblock ~-9 ~4 ~0 gold_block []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 stripped_bamboo_block []
setblock ~9 ~4 ~0 gold_block []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~1 ~-2 ~8 ~8 ~2 scaffolding []
fill ~7 ~8 ~-2 ~9 ~8 ~2 bamboo_mosaic_slab []
setblock ~8 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 string 12
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 1
replaceitem block ~6 ~1 ~4 slot.container 10 bow 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 12 bamboo 35
replaceitem block ~6 ~1 ~4 slot.container 13 scaffolding 20
replaceitem block ~6 ~1 ~4 slot.container 14 melon_slice 17
loot insert ~6 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 17
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 string 15
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 10 bow 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 12 bamboo 33
replaceitem block ~-6 ~1 ~5 slot.container 13 scaffolding 18
replaceitem block ~-6 ~1 ~5 slot.container 14 melon_slice 15
loot insert ~-6 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~5 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
