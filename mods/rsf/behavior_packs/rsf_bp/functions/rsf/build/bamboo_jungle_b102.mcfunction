# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1126/4224 | 主题内编号: b102/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子箭塔联防碉楼 (bamboo_jungle_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mossy_stone_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 torch []
setblock ~5 ~-5 ~-2 torch []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 string 17
replaceitem block ~5 ~-3 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~-3 ~2 slot.container 2 bone 17
replaceitem block ~5 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~-3 ~2 slot.container 5 slime_ball 8
replaceitem block ~5 ~-3 ~2 slot.container 9 bamboo 33
replaceitem block ~5 ~-3 ~2 slot.container 10 scaffolding 18
replaceitem block ~5 ~-3 ~2 slot.container 11 melon_slice 15
replaceitem block ~5 ~-3 ~2 slot.container 12 cooked_chicken 12
replaceitem block ~5 ~-3 ~2 slot.container 13 iron_ingot 11
replaceitem block ~5 ~-3 ~2 slot.container 14 emerald 10
loot insert ~5 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~5 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 mossy_stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 bamboo_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 bamboo_planks []
fill ~-7 ~8 ~-4 ~7 ~8 ~4 cobblestone_wall []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 air []
setblock ~-7 ~8 ~-4 jungle_log []
setblock ~-7 ~9 ~-4 torch []
setblock ~-7 ~8 ~4 jungle_log []
setblock ~-7 ~9 ~4 torch []
setblock ~7 ~8 ~-4 jungle_log []
setblock ~7 ~9 ~-4 torch []
setblock ~7 ~8 ~4 jungle_log []
setblock ~7 ~9 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 jungle_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 jungle_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 jungle_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~8 ~1 ~-2 ~8 ~5 ~2 scaffolding []
fill ~7 ~5 ~-2 ~9 ~5 ~2 bamboo_mosaic_slab []
setblock ~8 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 22
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 string 12
replaceitem block ~-6 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 9 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 4
replaceitem block ~-6 ~1 ~2 slot.container 11 bamboo 33
replaceitem block ~-6 ~1 ~2 slot.container 12 scaffolding 18
replaceitem block ~-6 ~1 ~2 slot.container 13 melon_slice 15
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_chicken 12
loot insert ~-6 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
