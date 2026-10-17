# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1118/4224 | 主题内编号: b094/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·圆形圣泉祈祷亭 (bamboo_jungle_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bamboo_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 string 17
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~-3 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 5 slime_ball 8
replaceitem block ~-3 ~-3 ~2 slot.container 9 bamboo 38
replaceitem block ~-3 ~-3 ~2 slot.container 10 scaffolding 16
replaceitem block ~-3 ~-3 ~2 slot.container 11 melon_slice 13
replaceitem block ~-3 ~-3 ~2 slot.container 12 cooked_chicken 10
replaceitem block ~-3 ~-3 ~2 slot.container 13 iron_ingot 9
replaceitem block ~-3 ~-3 ~2 slot.container 14 emerald 8
loot insert ~-3 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~-3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 bamboo_planks []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 jungle_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 jungle_log []
fill ~-3 ~1 ~-4 ~-3 ~5 ~-4 jungle_log []
fill ~-3 ~1 ~4 ~-3 ~5 ~4 jungle_log []
fill ~-1 ~1 ~-4 ~-1 ~5 ~-4 jungle_log []
fill ~-1 ~1 ~4 ~-1 ~5 ~4 jungle_log []
fill ~1 ~1 ~-4 ~1 ~5 ~-4 jungle_log []
fill ~1 ~1 ~4 ~1 ~5 ~4 jungle_log []
fill ~3 ~1 ~-4 ~3 ~5 ~-4 jungle_log []
fill ~3 ~1 ~4 ~3 ~5 ~4 jungle_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 jungle_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 jungle_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 jungle_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 jungle_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 jungle_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 jungle_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 jungle_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 bamboo_planks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 jungle_log []
setblock ~0 ~4 ~-6 emerald_block []
setblock ~0 ~5 ~-6 torch []
fill ~0 ~0 ~6 ~0 ~3 ~6 jungle_log []
setblock ~0 ~4 ~6 emerald_block []
setblock ~0 ~5 ~6 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 jungle_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 jungle_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~1 ~-2 ~6 ~7 ~2 scaffolding []
fill ~5 ~7 ~-2 ~7 ~7 ~2 bamboo_mosaic_slab []
setblock ~6 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 scaffolding []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 string 12
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~2 slot.container 11 gold_ingot 4
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 13 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 7
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-3 ~0
