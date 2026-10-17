# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0005/4224 | 主题内编号: b005/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·下沉圣泉秘宝祭坛 (plains_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 cooked_beef 12
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_ingot 5
replaceitem block ~-3 ~-3 ~2 slot.container 11 coal 13
replaceitem block ~-3 ~-3 ~2 slot.container 12 oak_log 18
replaceitem block ~-3 ~-3 ~2 slot.container 13 apple 9
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_apple 5
loot insert ~-3 ~-3 ~2 loot "rsf/plains"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cracked_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 oak_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~7 ~0 ~0 ~7 ~6 ~0 oak_log []
fill ~7 ~5 ~-2 ~7 ~5 ~2 oak_fence []
fill ~7 ~3 ~0 ~7 ~7 ~0 oak_fence []
setblock ~7 ~7 ~0 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 leather 12
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 bone 9
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 8
replaceitem block ~4 ~1 ~2 slot.container 9 apple 11
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~2 slot.container 12 shield 1
replaceitem block ~4 ~1 ~2 slot.container 13 torch 18
replaceitem block ~4 ~1 ~2 slot.container 14 bread 11
loot insert ~4 ~1 ~2 loot "rsf/plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 apple 9
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 13 torch 16
replaceitem block ~-4 ~1 ~3 slot.container 14 bread 9
loot insert ~-4 ~1 ~3 loot "rsf/plains"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
