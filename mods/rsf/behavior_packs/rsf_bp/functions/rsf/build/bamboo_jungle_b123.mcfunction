# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1147/4224 | 主题内编号: b123/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·四角塔楼领主城堡复合体 (bamboo_jungle_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bamboo_mosaic [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bamboo_mosaic [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_mosaic []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 campfire []
setblock ~5 ~-5 ~-4 campfire []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 slime_ball 8
replaceitem block ~5 ~-3 ~4 slot.container 1 arrow 19
replaceitem block ~5 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 3 string 17
replaceitem block ~5 ~-3 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~5 ~-3 ~4 slot.container 5 bone 17
replaceitem block ~5 ~-3 ~4 slot.container 9 cooked_chicken 9
replaceitem block ~5 ~-3 ~4 slot.container 10 iron_ingot 8
replaceitem block ~5 ~-3 ~4 slot.container 11 emerald 7
replaceitem block ~5 ~-3 ~4 slot.container 12 gold_ingot 8
replaceitem block ~5 ~-3 ~4 slot.container 13 golden_apple 6
replaceitem block ~5 ~-3 ~4 slot.container 14 bow 1
loot insert ~5 ~-3 ~4 loot "rsf/bamboo_jungle"
loot insert ~5 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 bamboo_mosaic []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 stone_bricks []
setblock ~-7 ~10 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 stone_bricks []
setblock ~-7 ~10 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 stone_bricks []
setblock ~6 ~10 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~9 ~6 stone_bricks []
setblock ~6 ~10 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 bamboo_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 stripped_bamboo_block []
setblock ~-7 ~9 ~-6 campfire []
setblock ~-7 ~8 ~6 stripped_bamboo_block []
setblock ~-7 ~9 ~6 campfire []
setblock ~7 ~8 ~-6 stripped_bamboo_block []
setblock ~7 ~9 ~-6 campfire []
setblock ~7 ~8 ~6 stripped_bamboo_block []
setblock ~7 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 bamboo_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~1 ~-2 ~8 ~6 ~2 scaffolding []
fill ~7 ~6 ~-2 ~9 ~6 ~2 bamboo_mosaic_slab []
setblock ~8 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 string 12
replaceitem block ~6 ~1 ~4 slot.container 9 scaffolding 22
replaceitem block ~6 ~1 ~4 slot.container 10 melon_slice 12
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_chicken 9
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 13 emerald 7
replaceitem block ~6 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~6 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 17
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 string 15
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 scaffolding 20
replaceitem block ~-6 ~1 ~5 slot.container 10 melon_slice 17
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_chicken 14
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 6
replaceitem block ~-6 ~1 ~5 slot.container 13 emerald 5
replaceitem block ~-6 ~1 ~5 slot.container 14 gold_ingot 6
loot insert ~-6 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~5 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
