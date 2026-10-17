# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0119/4224 | 主题内编号: b119/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·半地下恒温洞穴苗圃 (plains_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 oak_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 oak_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 oak_planks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 cobblestone []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 oak_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~0 ~2 ~7 ~5 ~2 oak_log []
fill ~7 ~4 ~0 ~7 ~4 ~4 oak_fence []
fill ~7 ~2 ~2 ~7 ~6 ~2 oak_fence []
setblock ~7 ~6 ~2 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 9
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 8
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 10 shield 1
replaceitem block ~4 ~1 ~3 slot.container 11 torch 18
replaceitem block ~4 ~1 ~3 slot.container 12 bread 11
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_beef 10
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~3 loot "rsf/plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 7
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 10 shield 1
replaceitem block ~-4 ~1 ~4 slot.container 11 torch 16
replaceitem block ~-4 ~1 ~4 slot.container 12 bread 9
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_beef 8
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~4 loot "rsf/plains"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
