# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1143/4224 | 主题内编号: b119/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·半地下恒温洞穴苗圃 (bamboo_jungle_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 bamboo_mosaic [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 bamboo_mosaic [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 bamboo_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 bamboo_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-3 ~-3 ~3 slot.container 1 bone 17
replaceitem block ~-3 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~-3 ~-3 ~3 slot.container 3 gunpowder 9
replaceitem block ~-3 ~-3 ~3 slot.container 4 slime_ball 8
replaceitem block ~-3 ~-3 ~3 slot.container 5 arrow 19
replaceitem block ~-3 ~-3 ~3 slot.container 9 emerald 7
replaceitem block ~-3 ~-3 ~3 slot.container 10 gold_ingot 8
replaceitem block ~-3 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~-3 ~-3 ~3 slot.container 12 bow 1
replaceitem block ~-3 ~-3 ~3 slot.container 13 lantern 4
replaceitem block ~-3 ~-3 ~3 slot.container 14 bamboo 33
loot insert ~-3 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~-3 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 bamboo_mosaic []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~4 ~-5 ~5 ~4 ~5 stone_bricks []
fill ~-4 ~5 ~-4 ~4 ~6 ~4 glass []
fill ~-3 ~5 ~-3 ~3 ~5 ~3 air []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 bamboo_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~6 ~1 ~-2 ~6 ~7 ~2 scaffolding []
fill ~5 ~7 ~-2 ~7 ~7 ~2 bamboo_mosaic_slab []
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 12
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 3 bone 12
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~3 slot.container 10 bamboo 35
replaceitem block ~4 ~1 ~3 slot.container 11 scaffolding 20
replaceitem block ~4 ~1 ~3 slot.container 12 melon_slice 17
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_chicken 14
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 6
loot insert ~4 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 4
replaceitem block ~-4 ~1 ~4 slot.container 10 bamboo 33
replaceitem block ~-4 ~1 ~4 slot.container 11 scaffolding 18
replaceitem block ~-4 ~1 ~4 slot.container 12 melon_slice 15
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_chicken 12
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-4 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~4 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
