# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0127/4224 | 主题内编号: b127/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·万神殿巨型穹顶与试炼宫 (plains_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 bookshelf []
setblock ~-5 ~-5 ~-4 torch []
setblock ~5 ~-5 ~4 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~4 slot.container 3 gunpowder 13
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~4 slot.container 9 coal 17
replaceitem block ~0 ~-3 ~4 slot.container 10 oak_log 22
replaceitem block ~0 ~-3 ~4 slot.container 11 apple 6
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 2
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-3 ~4 slot.container 14 shield 1
loot insert ~0 ~-3 ~4 loot "rsf/plains"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 oak_log []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 oak_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 oak_log []
fill ~7 ~1 ~6 ~7 ~7 ~6 oak_log []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 oak_log []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 oak_log []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 oak_log []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 oak_log []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 oak_log []
fill ~7 ~1 ~0 ~7 ~7 ~0 oak_log []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 oak_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 oak_log []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 oak_log []
fill ~7 ~1 ~4 ~7 ~7 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 glass []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~9 ~0 ~-3 ~9 ~8 ~-3 oak_log []
fill ~9 ~7 ~-5 ~9 ~7 ~-1 oak_fence []
fill ~9 ~5 ~-3 ~9 ~9 ~-3 oak_fence []
setblock ~9 ~9 ~-3 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 bookshelf []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 bone 9
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 8
replaceitem block ~6 ~1 ~4 slot.container 4 string 11
replaceitem block ~6 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_beef 7
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 11 coal 15
replaceitem block ~6 ~1 ~4 slot.container 12 oak_log 20
replaceitem block ~6 ~1 ~4 slot.container 13 apple 11
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-6 ~1 ~5 slot.container 2 string 14
replaceitem block ~-6 ~1 ~5 slot.container 3 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 5 leather 7
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_beef 12
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 5
replaceitem block ~-6 ~1 ~5 slot.container 11 coal 13
replaceitem block ~-6 ~1 ~5 slot.container 12 oak_log 18
replaceitem block ~-6 ~1 ~5 slot.container 13 apple 9
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
