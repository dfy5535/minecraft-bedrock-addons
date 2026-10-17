# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0027/4224 | 主题内编号: b027/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子连廊警戒塔楼 (plains_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 oak_planks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 oak_planks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-3 ~6 ~9 ~3 cobblestone []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 oak_fence []
fill ~-5 ~10 ~-2 ~5 ~10 ~2 air []
setblock ~-6 ~10 ~-3 oak_log []
setblock ~-6 ~11 ~-3 torch []
setblock ~-6 ~10 ~3 oak_log []
setblock ~-6 ~11 ~3 torch []
setblock ~6 ~10 ~-3 oak_log []
setblock ~6 ~11 ~-3 torch []
setblock ~6 ~10 ~3 oak_log []
setblock ~6 ~11 ~3 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~8 ~0 ~1 ~8 ~8 ~1 oak_log []
fill ~8 ~7 ~-1 ~8 ~7 ~3 oak_fence []
fill ~8 ~5 ~1 ~8 ~9 ~1 oak_fence []
setblock ~8 ~9 ~1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 3 leather 12
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 9 cooked_beef 12
replaceitem block ~5 ~1 ~1 slot.container 10 iron_ingot 5
replaceitem block ~5 ~1 ~1 slot.container 11 coal 13
replaceitem block ~5 ~1 ~1 slot.container 12 oak_log 18
replaceitem block ~5 ~1 ~1 slot.container 13 apple 9
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~1 loot "rsf/plains"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~2 slot.container 1 leather 7
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_beef 10
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 11 coal 18
replaceitem block ~-5 ~1 ~2 slot.container 12 oak_log 16
replaceitem block ~-5 ~1 ~2 slot.container 13 apple 7
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~2 loot "rsf/plains"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
