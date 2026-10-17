# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0031/4224 | 主题内编号: b031/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·阶梯圣火烽火台 (plains_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 3 leather 9
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 10 shield 1
replaceitem block ~4 ~-2 ~3 slot.container 11 torch 17
replaceitem block ~4 ~-2 ~3 slot.container 12 bread 10
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_beef 9
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 9
loot insert ~4 ~-2 ~3 loot "rsf/plains"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 oak_planks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 cobblestone []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~9 ~-5 ~-6 ~11 ~-5 oak_log []
setblock ~-6 ~12 ~-5 torch []
fill ~-6 ~9 ~5 ~-6 ~11 ~5 oak_log []
setblock ~-6 ~12 ~5 torch []
fill ~6 ~9 ~-5 ~6 ~11 ~-5 oak_log []
setblock ~6 ~12 ~-5 torch []
fill ~6 ~9 ~5 ~6 ~11 ~5 oak_log []
setblock ~6 ~12 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 stone_bricks []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 stone_bricks []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 stone_bricks []
fill ~6 ~0 ~2 ~6 ~7 ~2 stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 oak_log []
fill ~8 ~6 ~-3 ~8 ~6 ~1 oak_fence []
fill ~8 ~4 ~-1 ~8 ~8 ~-1 oak_fence []
setblock ~8 ~8 ~-1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 9
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 coal 15
replaceitem block ~5 ~1 ~3 slot.container 10 oak_log 20
replaceitem block ~5 ~1 ~3 slot.container 11 apple 11
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 14 shield 1
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 5 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 10 oak_log 18
replaceitem block ~-5 ~1 ~4 slot.container 11 apple 9
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 14 shield 1
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
