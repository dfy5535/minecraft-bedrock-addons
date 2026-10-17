# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1056/4224 | 主题内编号: b032/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·断顶残垣古哨塔 (bamboo_jungle_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 jungle_planks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 jungle_planks [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 bamboo_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 bamboo_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 bamboo_planks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 3 slime_ball 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 19
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 8
replaceitem block ~0 ~-3 ~-2 slot.container 10 emerald 7
replaceitem block ~0 ~-3 ~-2 slot.container 11 gold_ingot 8
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 bow 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 lantern 4
loot insert ~0 ~-3 ~-2 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~-2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~8 ~4 jungle_planks []
fill ~-3 ~1 ~-3 ~3 ~7 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~8 ~-4 bamboo_block []
fill ~-4 ~1 ~4 ~-4 ~8 ~4 bamboo_block []
fill ~4 ~1 ~-4 ~4 ~8 ~-4 bamboo_block []
fill ~4 ~1 ~4 ~4 ~8 ~4 bamboo_block []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 bamboo_fence []
setblock ~4 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-4 ~4 ~8 ~4 bamboo_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 bamboo_block []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 bamboo_block []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 bamboo_block []
fill ~5 ~0 ~2 ~5 ~7 ~2 bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~5 ~1 ~-2 ~5 ~5 ~2 scaffolding []
fill ~4 ~5 ~-2 ~6 ~5 ~2 bamboo_mosaic_slab []
setblock ~5 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 12
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-3 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-3 ~1 ~2 slot.container 9 bow 1
replaceitem block ~-3 ~1 ~2 slot.container 10 lantern 4
replaceitem block ~-3 ~1 ~2 slot.container 11 bamboo 33
replaceitem block ~-3 ~1 ~2 slot.container 12 scaffolding 18
replaceitem block ~-3 ~1 ~2 slot.container 13 melon_slice 15
replaceitem block ~-3 ~1 ~2 slot.container 14 cooked_chicken 12
loot insert ~-3 ~1 ~2 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
