# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0001/4224 | 主题内编号: b001/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·三层阶梯圣火祭坛 (plains_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~2 slot.container 1 leather 9
replaceitem block ~3 ~-2 ~2 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~2 slot.container 5 gunpowder 13
replaceitem block ~3 ~-2 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-2 ~2 slot.container 10 shield 1
replaceitem block ~3 ~-2 ~2 slot.container 11 torch 22
replaceitem block ~3 ~-2 ~2 slot.container 12 bread 8
replaceitem block ~3 ~-2 ~2 slot.container 13 cooked_beef 7
replaceitem block ~3 ~-2 ~2 slot.container 14 iron_ingot 7
loot insert ~3 ~-2 ~2 loot "rsf/plains"
loot insert ~3 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cobblestone []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 oak_log []
setblock ~-5 ~9 ~-4 torch []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 oak_log []
setblock ~-5 ~9 ~4 torch []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 oak_log []
setblock ~5 ~9 ~-4 torch []
fill ~5 ~6 ~4 ~5 ~8 ~4 oak_log []
setblock ~5 ~9 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 stone_bricks []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 stone_bricks []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 stone_bricks []
fill ~6 ~0 ~2 ~6 ~7 ~2 stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~0 ~7 ~7 ~0 oak_log []
fill ~7 ~6 ~-2 ~7 ~6 ~2 oak_fence []
fill ~7 ~4 ~0 ~7 ~8 ~0 oak_fence []
setblock ~7 ~8 ~0 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 9
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 8
replaceitem block ~4 ~1 ~2 slot.container 2 string 11
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 leather 12
replaceitem block ~4 ~1 ~2 slot.container 9 coal 13
replaceitem block ~4 ~1 ~2 slot.container 10 oak_log 18
replaceitem block ~4 ~1 ~2 slot.container 11 apple 9
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~2 slot.container 14 shield 1
loot insert ~4 ~1 ~2 loot "rsf/plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 3 leather 7
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 9 coal 18
replaceitem block ~-4 ~1 ~3 slot.container 10 oak_log 16
replaceitem block ~-4 ~1 ~3 slot.container 11 apple 7
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 14 shield 1
loot insert ~-4 ~1 ~3 loot "rsf/plains"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
