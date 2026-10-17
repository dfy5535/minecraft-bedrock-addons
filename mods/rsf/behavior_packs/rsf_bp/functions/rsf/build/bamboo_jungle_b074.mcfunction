# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1098/4224 | 主题内编号: b074/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·十字四象图腾柱阵 (bamboo_jungle_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_mosaic_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_mosaic []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 scaffolding []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 bone 17
replaceitem block ~4 ~-3 ~0 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~0 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~0 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~0 slot.container 4 arrow 19
replaceitem block ~4 ~-3 ~0 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~0 slot.container 9 bamboo 36
replaceitem block ~4 ~-3 ~0 slot.container 10 scaffolding 21
replaceitem block ~4 ~-3 ~0 slot.container 11 melon_slice 18
replaceitem block ~4 ~-3 ~0 slot.container 12 cooked_chicken 8
replaceitem block ~4 ~-3 ~0 slot.container 13 iron_ingot 7
replaceitem block ~4 ~-3 ~0 slot.container 14 emerald 6
loot insert ~4 ~-3 ~0 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 jungle_log []
setblock ~-6 ~9 ~-5 torch []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 jungle_log []
setblock ~-6 ~9 ~5 torch []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 jungle_log []
setblock ~6 ~9 ~-5 torch []
fill ~6 ~6 ~5 ~6 ~8 ~5 jungle_log []
setblock ~6 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 jungle_log []
setblock ~-8 ~4 ~-7 torch []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 jungle_log []
setblock ~-8 ~4 ~7 torch []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 jungle_log []
setblock ~8 ~4 ~-7 torch []
fill ~8 ~0 ~7 ~8 ~3 ~7 jungle_log []
setblock ~8 ~4 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 4
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 5
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 8
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
